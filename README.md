# Alien::WASI::libc [![Build Status](https://secure.travis-ci.org/perlwasm/Alien-WASI-libc.png)](http://travis-ci.org/perlwasm/Alien-WASI-libc)

Alien to find or get libc for WASI 

# SYNOPSIS

```perl
use Alien::WASI::libc;
my $sysroot = Alien::WASI::libc->sysroot;
```

# DESCRIPTION

This [Alien](https://metacpan.org/pod/Alien) provides libc for WebAssembly System Interface (WASI), which is
among the requirements for building C programs for WebAssembly.  It is NOT
required for RUNNING C programs once they are built.

# METHODS

## sysroot

```perl
my $sysroot = Alien::WASI::libc->sysroot;
```

Returns the PATH to the sysroot for WASI libc.  You can pass this to something
like `clang` to build C programs for WebAssembly.

# SEE ALSO

- [Wasm](https://metacpan.org/pod/Wasm)
- [Wasm::Wasmtime](https://metacpan.org/pod/Wasm::Wasmtime)
- [Wasm::Hook](https://metacpan.org/pod/Wasm::Hook)

# AUTHOR

Graham Ollis <plicease@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2020 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
