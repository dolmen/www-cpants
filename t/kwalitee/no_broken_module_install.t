use strict;
use warnings;
use WWW::CPANTS::Test;
use WWW::CPANTS::Analyze;

my @tests = (
  ['G/GU/GUGOD/Kwiki-Session-0.01.tar.gz', 0], # 7880
  ['G/GU/GUGOD/Kwiki-Widgets-Links-0.01.tar.gz', 0], # 8214
  ['C/CL/CLSUNG/Lingua-ZH-Segment-0.02.tar.gz', 0], # 8236
  ['R/RH/RHUNDT/Catalyst-Model-Oryx-0.01.tar.gz', 0], # 8255
  ['X/XE/XERN/Template-Plugin-IO-All-0.01.tar.gz', 0], # 8462
  ['I/IJ/IJLIAO/WWW-Scraper-ISBN-TWSrbook_Driver-0.01.tar.gz', 0], # 9139
  ['I/IJ/IJLIAO/WWW-Scraper-ISBN-TWYlib_Driver-0.01.tar.gz', 0], # 9199
  ['I/IJ/IJLIAO/WWW-Scraper-ISBN-TWTenlong_Driver-0.01.tar.gz', 0], # 9210
  ['I/IJ/IJLIAO/WWW-Scraper-ISBN-TWPchome_Driver-0.01.tar.gz', 0], # 9308
  ['I/IJ/IJLIAO/WWW-Scraper-ISBN-TWSoidea_Driver-0.01.tar.gz', 0], # 9348
);

my $mirror = setup_mirror(map {$_->[0]} @tests);

for my $test (@tests) {
  my $tarball = $mirror->file($test->[0]);
  my $analyzer = WWW::CPANTS::Analyze->new;
  my $context = $analyzer->analyze(dist => $tarball);

  my $metric = $analyzer->metric('no_broken_module_install');
  my $result = $metric->{code}->($context->stash);
  is $result => $test->[1], $tarball->basename . " has_working_buildtool: $result";

  if (!$result) {
    my $details = $metric->{details}->($context->stash) || '';
    ok $details, $details;
  }
}

done_testing;
