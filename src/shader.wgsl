// seems module-scope 'const' isn't supported by Naga yet,
// and 'let' results in "The expression [p3] may only be indexed by a constant"
var<private> p3: array<u32, 3> = array<u32, 3>(0x92492492u, 0x24924924u, 0x49249249u);
var<private> p5: array<u32, 5> = array<u32, 5>(0x08421084u, 0x42108421u, 0x10842108u, 0x84210842u,
                                               0x21084210u);
var<private> p7: array<u32, 7> = array<u32, 7>(0x81020408u, 0x08102040u, 0x40810204u, 0x04081020u,
                                               0x20408102u, 0x02040810u, 0x10204081u);
var<private> p11: array<u32, 11> = array<u32, 11>(0x08010020u, 0x10020040u, 0x20040080u, 0x40080100u,
                                                  0x80100200u, 0x00200400u, 0x00400801u, 0x00801002u,
                                                  0x01002004u, 0x02004008u, 0x04008010u);
var<private> p13: array<u32, 13> = array<u32, 13>(0x00080040u, 0x04002001u, 0x00100080u, 0x08004002u,
                                                  0x00200100u, 0x10008004u, 0x00400200u, 0x20010008u,
                                                  0x00800400u, 0x40020010u, 0x01000800u, 0x80040020u,
                                                  0x02001000u);
var<private> p17: array<u32, 17> = array<u32, 17>(0x02000100u, 0x08000400u, 0x20001000u, 0x80004000u,
                                                  0x00010000u, 0x00040002u, 0x00100008u, 0x00400020u,
                                                  0x01000080u, 0x04000200u, 0x10000800u, 0x40002000u,
                                                  0x00008000u, 0x00020001u, 0x00080004u, 0x00200010u,
                                                  0x00800040u);
var<private> p19: array<u32, 19> = array<u32, 19>(0x10000200u, 0x00008000u, 0x00200004u, 0x08000100u,
                                                  0x00004000u, 0x00100002u, 0x04000080u, 0x00002000u,
                                                  0x00080001u, 0x02000040u, 0x80001000u, 0x00040000u,
                                                  0x01000020u, 0x40000800u, 0x00020000u, 0x00800010u,
                                                  0x20000400u, 0x00010000u, 0x00400008u);
var<private> p23: array<u32, 23> = array<u32, 23>(0x00000800u, 0x02000004u, 0x00010000u, 0x40000080u,
                                                  0x00200000u, 0x00001000u, 0x04000008u, 0x00020000u,
                                                  0x80000100u, 0x00400000u, 0x00002000u, 0x08000010u,
                                                  0x00040000u, 0x00000200u, 0x00800001u, 0x00004000u,
                                                  0x10000020u, 0x00080000u, 0x00000400u, 0x01000002u,
                                                  0x00008000u, 0x20000040u, 0x00100000u);
var<private> p29: array<u32, 29> = array<u32, 29>(0x00004000u, 0x00000800u, 0x00000100u, 0x00000020u,
                                                  0x80000004u, 0x10000000u, 0x02000000u, 0x00400000u,
                                                  0x00080000u, 0x00010000u, 0x00002000u, 0x00000400u,
                                                  0x00000080u, 0x00000010u, 0x40000002u, 0x08000000u,
                                                  0x01000000u, 0x00200000u, 0x00040000u, 0x00008000u,
                                                  0x00001000u, 0x00000200u, 0x00000040u, 0x00000008u,
                                                  0x20000001u, 0x04000000u, 0x00800000u, 0x00100000u,
                                                  0x00020000u);
var<private> p31: array<u32, 31> = array<u32, 31>(0x00008000u, 0x00004000u, 0x00002000u, 0x00001000u,
                                                  0x00000800u, 0x00000400u, 0x00000200u, 0x00000100u,
                                                  0x00000080u, 0x00000040u, 0x00000020u, 0x00000010u,
                                                  0x00000008u, 0x00000004u, 0x00000002u, 0x80000001u,
                                                  0x40000000u, 0x20000000u, 0x10000000u, 0x08000000u,
                                                  0x04000000u, 0x02000000u, 0x01000000u, 0x00800000u,
                                                  0x00400000u, 0x00200000u, 0x00100000u, 0x00080000u,
                                                  0x00040000u, 0x00020000u, 0x00010000u);
var<private> p37: array<u32, 37> = array<u32, 37>(0x00040000u, 0x00800000u, 0x10000000u, 0x00000000u,
                                                  0x00000002u, 0x00000040u, 0x00000800u, 0x00010000u,
                                                  0x00200000u, 0x04000000u, 0x80000000u, 0x00000000u,
                                                  0x00000010u, 0x00000200u, 0x00004000u, 0x00080000u,
                                                  0x01000000u, 0x20000000u, 0x00000000u, 0x00000004u,
                                                  0x00000080u, 0x00001000u, 0x00020000u, 0x00400000u,
                                                  0x08000000u, 0x00000000u, 0x00000001u, 0x00000020u,
                                                  0x00000400u, 0x00008000u, 0x00100000u, 0x02000000u,
                                                  0x40000000u, 0x00000000u, 0x00000008u, 0x00000100u,
                                                  0x00002000u);

let wheel30 = array<u32, 8>(1u,7u,11u,13u,17u,19u,23u,29u);
let wheel30Inc = array<u32, 8>(6u,4u,2u,4u,2u,4u,6u,2u);
let lookup30 = array<u32, 30>(0u,0u,0u,0u,0u,0u,0u,1u,0u,0u,0u,2u,0u,3u,0u,0u,0u,4u,0u,5u,0u,0u,
                              0u,6u,0u,0u,0u,0u,0u,7u);

let workgroup_size = 256u;

@group(0) @binding(0)
var<storage, read_write> result: array<u32>;

var<workgroup> s_sieve: array<atomic<u32>, 1024>;
var<workgroup> s_counts: array<u32, 1024>;

// pretty sure this is a no-op: wgpu guarantees vars are initialized, but, whatever.
fn sieve_init(
    invocation_index: u32,
    sieve_words: u32,
) {
    for (var i = invocation_index; i < sieve_words; i += workgroup_size) {
        s_sieve[i] ^= s_sieve[i];
    }
}

fn sieve_small_primes(
    invocation_index: u32,
    sieve_words: u32,
    bstart: u32,
) {
    for (var i = invocation_index; i < sieve_words; i += workgroup_size) {
       let j: u32 = i + bstart / 64u; // 64 is 32 bits per uint32_t*2(for only odds)
       s_sieve[i] |= p3[j%3u];
       s_sieve[i] |= p5[j%5u];
       s_sieve[i] |= p7[j%7u];  // sieving with 37 in this way provides a consistent
       s_sieve[i] |= p11[j%11u]; //  1-2% speedup over going up to only 31. Going
       s_sieve[i] |= p13[j%13u]; // higher than 37 slows things down.  Using a premade
       s_sieve[i] |= p17[j%17u]; //  wheel-type bitmask here is considerably slower
       s_sieve[i] |= p19[j%19u]; // than sieving with each small prime individually.
       s_sieve[i] |= p23[j%23u];
       s_sieve[i] |= p29[j%29u];
       s_sieve[i] |= p31[j%31u];
       s_sieve[i] |= p37[j%37u];
    }
}

fn sieve_first_bottom(
    workgroup_index: u32,
    invocation_index: u32,
    sieve_bits: u32
) {
    if (workgroup_index == 0u && invocation_index == 0u) {
        atomicOr(&s_sieve[0u], 1u);
    }
    let p = 41u + 2u * invocation_index;
    var off = p * p / 2u;
    for (; off < sieve_bits; off += p) {
        atomicOr(&s_sieve[off >> 5u], (1u << (off & 31u)));
    }
}

fn count_primes_hist(
    invocation_index: u32,
    sieve_words: u32
) {
    for (var i = invocation_index; i < sieve_words; i += workgroup_size) {
        s_counts[i] = countOneBits(s_sieve[i]);
    }
    workgroupBarrier();
}

fn exclusive_scan_big(
    invocation_index: u32,
    s_array: ptr<workgroup, array<u32, 1024>>,
    size: u32,
) {
    var sum: u32;
    for (var offset = 1u; offset <= size / 2u; offset *= 2u) {
        for (var i = i32(size) - 1 - i32(invocation_index); i >= 0; i -= i32(workgroup_size)) {
            if (u32(i) >= offset) {
                sum = (*s_array)[i] + (*s_array)[u32(i) - offset];
            } else {
                sum = (*s_array)[i];
            }
            workgroupBarrier();
            (*s_array)[i] = sum;
            workgroupBarrier();
        }
    }
    for (var i = i32(size) - 1 - i32(invocation_index); i >= 0; i -= i32(workgroup_size)) {
        if (i > 0) {
            sum = (*s_array)[i - 1];
        } else {
            sum = 0u;
        }
        workgroupBarrier();
        (*s_array)[i] = sum;
        workgroupBarrier();
    }
}

fn move_primes_first(
    invocation_index: u32,
    sieve_words: u32,
    bstart: u32,
    max_prime: u32,
) {
    var c: u32;
    for (var i = invocation_index; i < sieve_words; i += workgroup_size) {
        c = s_counts[i];
        let s = ~s_sieve[i];
        workgroupBarrier();
        if (i == 0u) {
            s_sieve[0] |= ~s_sieve[0];
        }
        for (var j = 0u; j < 32u; j++) {
            if ((1u & (s >> j)) != 0u) {
                let p = bstart + 64u * i + 2u * j + 1u;
                if (p > max_prime) {
                    atomicMin(&s_sieve[0], c);
                } else {
                    result[c] = p;
                }
                c++;
            }
        }
    }
    workgroupBarrier();
    // if (workgroup_index == 0u && ~s_sieve[0] != 0u) {
    //     dcount
    // }
}

fn first_prime_list(
    workgroup_index: u32,
    invocation_index: u32,
    sieve_bits: u32,
) {
    let bidx = workgroup_index;
    let sieve_words = sieve_bits / 32u;
    let bstart = bidx * sieve_bits * 2u;
    let max_prime = u32(sqrt(f32(1u << 30u)));

    sieve_init(invocation_index, sieve_words);
    sieve_small_primes(invocation_index, sieve_words, bstart);
    workgroupBarrier();
    sieve_first_bottom(workgroup_index, invocation_index, sieve_bits);
    workgroupBarrier();
    count_primes_hist(invocation_index, sieve_words);
    workgroupBarrier();
    exclusive_scan_big(invocation_index, &s_counts, sieve_words);
    move_primes_first(
        invocation_index,
        sieve_words,
        bstart,
        max_prime,
    );
}

@compute @workgroup_size(256)
fn main(
    @builtin(workgroup_id) workgroup_id: vec3<u32>,
    @builtin(local_invocation_index) invocation_index: u32,
) {
    let sieve_bits = 32768u;

    first_prime_list(workgroup_id.x, invocation_index, sieve_bits);
}
