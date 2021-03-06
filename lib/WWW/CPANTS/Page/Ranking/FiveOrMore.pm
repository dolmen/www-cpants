package WWW::CPANTS::Page::Ranking::FiveOrMore;

use strict;
use warnings;
use WWW::CPANTS::DB;
use WWW::CPANTS::JSON;

sub title { 'For Authors with 5 or more dists' }

sub load_data {
  my ($class, $page) = @_;
  if (($page || 1) == 1) {
    slurp_json('page/ranking_five_or_more');
  }
  else {
    db('Authors')->fetch_five_or_more_dists_ranking($page);
  }
}

sub create_data {
  my $class = shift;

  my $authors = db('Authors')->fetch_five_or_more_dists_ranking(1);
  save_json('page/ranking_five_or_more', $authors);
}

1;

__END__

=head1 NAME

WWW::CPANTS::Page::Ranking::FiveOrMore

=head1 SYNOPSIS

=head1 DESCRIPTION

=head1 METHODS

=head2 title

=head2 load_data

=head2 create_data

=head1 AUTHOR

Kenichi Ishigaki, E<lt>ishigaki@cpan.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2012 by Kenichi Ishigaki.

This program is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.

=cut
