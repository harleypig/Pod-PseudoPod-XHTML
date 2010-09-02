#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'Pod::PseudoPod::XHTML' ) || print "Bail out!
";
}

diag( "Testing Pod::PseudoPod::XHTML $Pod::PseudoPod::XHTML::VERSION, Perl $], $^X" );
