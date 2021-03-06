use strict;
use warnings;
use WWW::CPANTS::Test;
use WWW::CPANTS::Analyze;

my @tests = (
  ['L/LA/LAWSONK/Gtk2-Ex-MPlayerEmbed-0.03.tar.gz', 0], # 465
  ['H/HE/HEDWIG/Template-Plugin-Duration-0.01.tar.gz', 0], # 474
  ['W/WE/WEBY/Mojolicious-Plugin-Mobi-0.02.tar.gz', 0], # 474
  ['T/TI/TIMA/Amazon-Bezos-0.001.tar.gz', 0], # 510
  ['L/LE/LEOCHARRE/LEOCHARRE-X11-WMCtrl-0.01.tar.gz', 0], # 514
  ['W/WO/WOLDRICH/Bundle-Woldrich-Term-0.02.tar.gz', 0], # 530
  ['W/WO/WOLDRICH/App-epic-0.014.tar.gz', 0], # 812
  ['T/TA/TAG/AnyEvent-Peer39-0.32.tar.gz', 0], # 824
  ['A/AB/ABCABC/CFTP_01.tar.gz', 0], # 897
  ['D/DA/DAMBAR/Catalyst-Plugin-Imager-0.01.tar.gz', 0], # 1026
);

my $mirror = setup_mirror(map {$_->[0]} @tests);

for my $test (@tests) {
  my $tarball = $mirror->file($test->[0]);
  my $analyzer = WWW::CPANTS::Analyze->new;
  my $context = $analyzer->analyze(dist => $tarball);

  my $metric = $analyzer->metric('has_buildtool');
  my $result = $metric->{code}->($context->stash);
  is $result => $test->[1], $tarball->basename . " has_buildtool: $result";

  if (!$result) {
    my $details = $metric->{details}->($context->stash) || '';
    ok $details, $details;
  }
}

done_testing;
