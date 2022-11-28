@group(0) @binding(0)
var<storage, read_write> numbers: array<f32, 32>;

@compute @workgroup_size(1)
fn main() {
  for (var i = 0u; i < 32u; i++) {
    numbers[i] = f32(i) * 3.6;
  }
}
