use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Pod::PseudoPod::XHTML',
    license             => 'perl',
    dist_author         => q{Alan Young <alansyoungiii@gmail.com>},
    dist_version_from   => 'lib/Pod/PseudoPod/XHTML.pm',
    build_requires => {
        'Test::More' => 0,
    },
    add_to_cleanup      => [ 'Pod-PseudoPod-XHTML-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
