package Pod::PseudoPod::XHTML;

use warnings;
use strict;

use base qw( Pod::PseudoPod::HTML );

=head1 NAME

Pod::PseudoPod::XHTML -- format PseudoPod as valid XHTML

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

  use Pod::PseudoPod::XHTML;

  my $parser = Pod::PseudoPod::XHTML->new();

  ...

  $parser->parse_file('path/to/file.pod');

=head1 DESCRIPTION

This class is a formatter that takes PseudoPod and renders it as
valid XHTML.

This is a subclass of L<Pod::PseudoPod::HTML>, and from there
L<Pod::PseudoPod>, and inherits all their methods.

This code has been shamelessly ripped off from L<Pod::PseudoPod::HTML> and
jmcnamara's work on the Modern Perl epub book generator and massaged to work.

=head1 EXPORT

Nothing is exported.

=head1 METHODS

=cut

sub new {

  my $self = shift;
  my $new  = $self->SUPER::new( @_ );

  $new->accept_targets( 'xhtml', 'XHTML' );

  return $new;

}

=head1 AUTHOR

Alan Young, C<< <alansyoungiii at gmail.com> >>

=head1 BUGS

This project is hosted on github
(L<http://github.com/harleypig/Pod-PseudoPod-XHTML>).  I'll see any issues
submitted there much faster than anywhere else.

You may also report any bugs or feature requests to C<bug-pod-pseudopod-xhtml at
rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Pod-PseudoPod-XHTML>.  I will
be notified, and then you'll automatically be notified of progress on your bug
as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Pod::PseudoPod::XHTML

You can also look for information at:

=over 4

=item * github

L<http://github.com/harleypig/Pod-PseudoPod-XHTML>

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Pod-PseudoPod-XHTML>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Pod-PseudoPod-XHTML>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Pod-PseudoPod-XHTML>

=item * Search CPAN

L<http://search.cpan.org/dist/Pod-PseudoPod-XHTML/>

=back

=head1 ACKNOWLEDGEMENTS

jmcnamara, Allison Randall, Larry Wall, the whole perl community

=head1 LICENSE AND COPYRIGHT

Copyright 2010 Alan Young.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.

=cut

1; # End of Pod::PseudoPod::XHTML
