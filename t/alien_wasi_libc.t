use Test2::V0 -no_srand => 1;
use Alien::WASI::libc;
use Test::Alien;
use Path::Tiny qw( path );

alien_ok 'Alien::WASI::libc';

my $sysroot = path(Alien::WASI::libc->sysroot);
note "sysroot = $sysroot";
ok -d $sysroot;
ok -d "$sysroot/include";
ok -d "$sysroot/lib";

done_testing;
