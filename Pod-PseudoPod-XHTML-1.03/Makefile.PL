
use strict;
use warnings;

use 5.006;

use ExtUtils::MakeMaker 6.30;

my %WriteMakefileArgs = ( "ABSTRACT" => "format PseudoPod as valid XHTML", "AUTHOR" => "Alan Young <alansyoungiii\@gmail.com>", "BUILD_REQUIRES" => { "English" => 0, "File::Find" => 0, "File::Temp" => 0, "Module::Build" => "0.3601", "Path::Class" => 0, "Scalar::Util" => 0, "Test::More" => "0.94", "Test::NoWarnings" => 0, "Test::Perl::Critic::Progressive" => 0, "Try::Tiny" => 0, "perl" => "5.004" }, "CONFIGURE_REQUIRES" => { "ExtUtils::MakeMaker" => "6.30", "Module::Build" => "0.3601" }, "DISTNAME" => "Pod-PseudoPod-XHTML", "EXE_FILES" => [], "LICENSE" => "perl", "NAME" => "Pod::PseudoPod::XHTML", "PREREQ_PM" => { "Carp" => 0, "Pod::PseudoPod::HTML" => 0, "base" => 0, "strict" => 0, "warnings" => 0 }, "VERSION" => "1.03", "test" => { "TESTS" => "t/*.t" } );

unless ( eval { ExtUtils::MakeMaker->VERSION( 6.56 ) } ) {
  my $br = delete $WriteMakefileArgs{ BUILD_REQUIRES };
  my $pp = $WriteMakefileArgs{ PREREQ_PM };
  for my $mod ( keys %$br ) {
    if ( exists $pp->{ $mod } ) {
      $pp->{ $mod } = $br->{ $mod } if $br->{ $mod } > $pp->{ $mod };
    } else {
      $pp->{ $mod } = $br->{ $mod };
    }
  }
}

delete $WriteMakefileArgs{ CONFIGURE_REQUIRES }
  unless eval { ExtUtils::MakeMaker->VERSION( 6.52 ) };

WriteMakefile( %WriteMakefileArgs );
