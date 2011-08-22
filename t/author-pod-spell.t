#!perl

BEGIN {
  unless ($ENV{AUTHOR_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for testing by the author');
  }
}

# This test is generated by Dist::Zilla::Plugin::Test::PodSpelling

use Test::More;

eval "use Pod::Wordlist";
plan skip_all => "Pod::Wordlist required for testing POD spelling"
  if $@;

eval "use Test::Spelling 0.12";
plan skip_all => "Test::Spelling 0.12 required for testing POD spelling"
  if $@;

set_spell_cmd( 'aspell list' );
add_stopwords( <DATA> );
all_pod_files_spelling_ok( 'lib' );
__DATA__
ACKNOWLEDGEMENTS
AnnoCPAN
CPAN
DTD
epub
formatter
github
jmcnamara
jmcnamara's
PseudoPod
XHTML
Alan
Young
Alan
Young
