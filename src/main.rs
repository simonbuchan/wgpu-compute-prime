use std::mem;
use wgpu::*;

fn main() {
    let instance = Instance::new(Backends::PRIMARY);
    let adapter = pollster::block_on(
        instance.request_adapter(&RequestAdapterOptionsBase::default())
    ).expect("could not find adapter");
    let (device, queue) = pollster::block_on(
        adapter.request_device(&DeviceDescriptor::default(), None)
    ).expect("could not create device");

    let module = device.create_shader_module(include_wgsl!("shader.wgsl"));

    type BufferData = [u32; 1024];
    let buffer_size = mem::size_of::<BufferData>() as BufferAddress;
    let buffer = device.create_buffer(&BufferDescriptor {
        label: None,
        usage: BufferUsages::STORAGE | BufferUsages::COPY_SRC,
        size: buffer_size,
        mapped_at_creation: false,
    });
    let buffer_mapped = device.create_buffer(&BufferDescriptor {
        label: None,
        usage: BufferUsages::COPY_DST | BufferUsages::MAP_READ,
        size: buffer_size,
        mapped_at_creation: false,
    });

    let bind_group_layout = device.create_bind_group_layout(&BindGroupLayoutDescriptor {
        label: None,
        entries: &[
            BindGroupLayoutEntry {
                binding: 0,
                visibility: ShaderStages::COMPUTE,
                ty: BindingType::Buffer {
                    ty: BufferBindingType::Storage {
                        read_only: false,
                    },
                    has_dynamic_offset: false,
                    min_binding_size: Some(BufferSize::new(buffer_size).expect("can't map empty buffer")),
                },
                count: None,
            },
        ],
    });

    let pipeline_layout = device.create_pipeline_layout(&PipelineLayoutDescriptor {
        bind_group_layouts: &[&bind_group_layout],
        .. Default::default()
    });

    let pipeline = device.create_compute_pipeline(&ComputePipelineDescriptor {
        label: None,
        layout: Some(&pipeline_layout),
        module: &module,
        entry_point: "main",
    });

    let bind_group = device.create_bind_group(&BindGroupDescriptor {
        label: None,
        layout: &bind_group_layout,
        entries: &[
            BindGroupEntry {
                binding: 0,
                resource: buffer.as_entire_binding(),
            },
        ],
    });

    let mut cmd = device.create_command_encoder(&CommandEncoderDescriptor::default());
    let mut pass = cmd.begin_compute_pass(&ComputePassDescriptor::default());
    pass.set_pipeline(&pipeline);
    pass.set_bind_group(0, &bind_group, &[]);
    pass.dispatch_workgroups(1, 1, 1);
    drop(pass);
    cmd.copy_buffer_to_buffer(&buffer, 0, &buffer_mapped, 0, buffer_size);
    queue.submit([cmd.finish()]);

    let (tx, rx) = std::sync::mpsc::channel();
    let slice = buffer_mapped.slice(..);
    slice.map_async(MapMode::Read, move |result| {
        tx.send(result).expect("couldn't send map result");
    });

    instance.poll_all(true);

    rx.try_recv().expect("map should have completed").expect("couldn't map buffer");

    let view = slice.get_mapped_range();
    let data = bytemuck::from_bytes::<BufferData>(&view);
    for chunk in data.chunks(32) {
        println!("{chunk:?}");
    }
}
