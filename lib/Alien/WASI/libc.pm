package Alien::WASI::libc;

use strict;
use warnings;
use 5.008001;
use base qw( Alien::Base );
use Path::Tiny ();

# ABSTRACT: Alien to find or get libc for WASI 
# VERSION

=head1 SYNOPSIS

 use Alien::WASI::libc;
 my $sysroot = Alien::WASI::libc->sysroot;

=head1 DESCRIPTION

This L<Alien> provides libc for WebAssembly System Interface (WASI), which is
among the requirements for building C programs for WebAssembly.  It is NOT
required for RUNNING C programs once they are built.

=head1 METHODS

=head2 sysroot

 my $sysroot = Alien::WASI::libc->sysroot;

Returns the PATH to the sysroot for WASI libc.  You can pass this to something
like C<clang> to build C programs for WebAssembly.

=cut

sub sysroot
{
  my($class) = @_;
  Path::Tiny->new($class->dist_dir)->child('wasi-sysroot')->stringify;
}

sub _builtins
{
  my($class) = @_;
  Path::Tiny->new($class->dist_dir)->child('lib/wasi/libclang_rt.builtins-wasm32.a')->stringify;
}

1;

=head1 SEE ALSO

=over 4

=item L<Wasm>

=item L<Wasm::Wasmtime>

=item L<Wasm::Hook>

=back

=cut

