# Uroboros
### Infrastructure for Reassembleable Disassembling and Transformation

### Fork motivation

This fork is made with the idea of extending this technique to ARM executables. In such process, the OCaml core has been rewritten in Python.

## Installation

Uroboros uses the following utilities:
(Version numbers indicate the versions that we use in our development.)

| Tool        | Version |
|-------------|--------:|
| objdump     | ≥2.22   |
| readelf     | ≥2.22   |
| awk         | ≥3.18   |
| libcapstone | 3.0.4   |

## Build

Uroboros is now completely written in Python on the `allpy` branch. You don't need to build anything.

## Usage: Disassembling

Uroboros supports 64-bit and 32-bit ELF x86 executables and, experimentally, also Thumb2 ARM binaries.
To use Uroboros for disassembling:

```bash
 $> python uroboros.py path_to_bin
```

The disassembled output can be found in the `workdir` directory, named `final.s`. Uroboros will also assemble it back into an executable, `a.out`.

The Python script uroboros.py provides the following options:

1. `-o (output)`

    This option allows to specify an output path for the reassembled binary.

2. `-a (assumption)`

    This option configures the three symbolization assumptions proposed in
    the original Uroboros paper [1]. Note that in the current version, the
    first assumption (**n-byte alignment**) are set by default. The other
    two assumptions can be set by users.

    Assumption two reqires to put data sections (.data, .rodata and .bss)
    to its original starting addresses. Linker scripts can be used during
    reassembling (`gcc -T ld_script.sty final.s`). Users may write their
    own linker script, some examples are given at `ld_script` folder.

    Assumption three requires to know the function starting addresses. To
    obtain this information, Uroboros can take unstripped binaries
    as input. The function starting address information is obtained from
    the input, which is then stripped before disassembling.

    These assumptions can also be used at the same time (`python uroboros.py path_to_bin -a 3 -a 2`)


[1] Reassembleable Disassembling, by Shuai Wang, Pei Wang, and Dinghao Wu. In
Proceedings of the 24th USENIX Security Symposium, Washington, D.C., August 12-14, 2015.
