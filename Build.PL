use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(

    module_name         => 'Pod::PseudoPod::XHTML',

    add_to_cleanup      => [ 'Pod-PseudoPod-XHTML-*', '_build', 'Build', 'MYMETA.yml' ],

    create_makefile_pl  => 'traditional',

    build_requires      => { 'Test::More' => 0, 'Test::NoWarnings' => 0 },
    requires            => { 'Pod::PseudoPod::HTML' => 0 },

    dist_author         => q{Alan Young <alansyoungiii@gmail.com>},
    dist_version_from   => 'lib/Pod/PseudoPod/XHTML.pm',
    dist_abstract       => 'Generate valid XHTML from pseudopod',
    license             => 'perl',

);

$builder->create_build_script();
