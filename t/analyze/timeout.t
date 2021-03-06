use strict;
use warnings;
use Test::More;

plan skip_all => 'todo';

my @timed_out = qw(
  A/AR/AREIBENS/PDF-API2-0.40.100.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40.101.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40.86.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40.87.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40.88.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40.89.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40.90.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40.91.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40.92.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40.93.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40.94.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40.95.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40.96.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40.97.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40.98.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40.99.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40_18.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40_18b.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40_20.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40_21.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40_22.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40_52.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40_54.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40_55.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40_58.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40_59.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40_60.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40_61.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40_62.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40_63.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40_67.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40_70.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40_72.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40_74.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40_75.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40_76.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40_77.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40_80.tar.gz
  A/AR/AREIBENS/PDF-API2-0.40_83.tar.gz
  A/AR/AREIBENS/PDF-API2-0.41.00.tar.gz
  A/AR/AREIBENS/PDF-API2-0.41.tar.gz
  A/AR/AREIBENS/PDF-API2-0.42.tar.gz
  A/AR/AREIBENS/PDF-API2-0.43.01.tar.gz
  A/AR/AREIBENS/PDF-API2-0.43.tar.gz
  A/AR/AREIBENS/PDF-API2-0.44.tar.gz
  A/AR/AREIBENS/PDF-API2-0.45.tar.gz
  A/AR/AREIBENS/PDF-API2-0.46.001.tar.gz
  A/AR/AREIBENS/PDF-API2-0.46.002.tar.gz
  A/AR/AREIBENS/PDF-API2-0.46.003.tar.gz
  A/AR/AREIBENS/PDF-API2-0.46.tar.gz
  A/AR/AREIBENS/PDF-API2-0.47.tar.gz
  A/AR/AREIBENS/PDF-API2-0.48.tar.gz
  A/AR/AREIBENS/PDF-API2-0.49.tar.gz
  A/AR/AREIBENS/PDF-API2-0.50.tar.gz
  A/AR/AREIBENS/PDF-API2-0.51.tar.gz
  A/AR/AREIBENS/PDF-API2-0.52.tar.gz
  A/AR/AREIBENS/PDF-API2-0.53.tar.gz
  A/AR/AREIBENS/PDF-API2-0.55.tar.gz
  A/AR/AREIBENS/PDF-API2-0.56.tar.gz
  A/AR/AREIBENS/PDF-API2-0.57.tar.gz
  A/AR/AREIBENS/PDF-API2-0.58.tar.gz
  A/AR/AREIBENS/PDF-API2-0.59.001.tar.gz
  A/AR/AREIBENS/PDF-API2-0.59.002.tar.gz
  A/AR/AREIBENS/PDF-API2-0.59.tar.gz
  A/AR/AREIBENS/PDF-API2-0.60.tar.gz
  A/AR/AREIBENS/PDF-API2-0.61.tar.gz
  A/AR/AREIBENS/PDF-API2-0.62.tar.gz
  A/AR/AREIBENS/PDF-API2-0.63.tar.gz
  A/AR/AREIBENS/PDF-API2-0.64.tar.gz
  A/AR/AREIBENS/PDF-API2-0.65.tar.gz
  A/AR/AREIBENS/PDF-API2-0.66.tar.gz
  A/AR/AREIBENS/PDF-API2-0.68.tar.gz
  A/AR/AREIBENS/PDF-API2-0.69.tar.gz
  A/AR/AREIBENS/PDF-API2-0.71.001.tar.gz
  A/AR/AREIBENS/PDF-API2-0.71.tar.gz
  A/AR/AREIBENS/PDF-API2-0.72.001.tar.gz
  A/AR/AREIBENS/PDF-API2-0.72.002.tar.gz
  A/AR/AREIBENS/PDF-API2-0.72.003.tar.gz
  A/AR/AREIBENS/PDF-API2-0.72.tar.gz
  A/AR/AREIBENS/PDF-API2-0.73.tar.gz
  C/CB/CBERRY/VMS-Device-0_10.zip
  C/CF/CFRANKS/HTML-Dojo-0.0403.0.tar.gz
  D/DC/DCANTRELL/Number-Phone-UK-DetailedLocations-1.0.tar.gz
  D/DC/DCANTRELL/Number-Phone-UK-DetailedLocations-1.1.tar.gz
  D/DC/DCANTRELL/Number-Phone-UK-DetailedLocations-1.2.tar.gz
  D/DC/DCANTRELL/Number-Phone-UK-DetailedLocations-1.3.tar.gz
  D/DM/DMAKI/Crypt-DH-GMP-0.00005.tar.gz
  D/DO/DOMM/Module-CPANTS-asHash-0.20031208.tar.gz
  D/DO/DOMM/Module-CPANTS-asHash-0.20040210.tar.gz
  D/DT/DTORRES/GOOGLE-ADWORDS-PERL-CLIENT-2.7.3.tar.gz
  D/DT/DTORRES/GOOGLE-ADWORDS-PERL-CLIENT-272/GOOGLE-ADWORDS-PERL-CLIENT-2.7.2.tar.gz
  G/GS/GSHANK/Form-Processor-Model-DBIC-0.01.tar.gz
  G/GS/GSLONDON/Hardware-Verilog-Parser-0.10.tar.gz
  H/HD/HDP/IO-Handle-Rewind-0.01.tar.gz
  J/JC/JCAMACHO/Catalyst-Controller-FormBuilder-0.01_01.tar.gz
  J/JC/JCOHEN/Genezzo-0.38.tar.gz
  J/JC/JCOHEN/Genezzo-0.41.tar.gz
  J/JC/JCOHEN/Genezzo-0.42.tar.gz
  J/JC/JCOHEN/Genezzo-0.43.tar.gz
  J/JC/JCOHEN/Genezzo-0.45.tar.gz
  J/JC/JCOHEN/Genezzo-0.46.tar.gz
  J/JC/JCOHEN/Genezzo-0.47.tar.gz
  J/JC/JCOHEN/Genezzo-0.48.tar.gz
  J/JC/JCOHEN/Genezzo-0.49.tar.gz
  J/JC/JCOHEN/Genezzo-0.50.tar.gz
  J/JC/JCOHEN/Genezzo-0.51.tar.gz
  J/JC/JCOHEN/Genezzo-0.53.tar.gz
  J/JC/JCOHEN/Genezzo-0.54.tar.gz
  J/JC/JCOHEN/Genezzo-0.55.tar.gz
  J/JC/JCOHEN/Genezzo-0.56.tar.gz
  J/JC/JCOHEN/Genezzo-0.59.tar.gz
  J/JC/JCOHEN/Genezzo-0.60.tar.gz
  J/JC/JCOHEN/Genezzo-0.61.tar.gz
  J/JC/JCOHEN/Genezzo-0.62.tar.gz
  J/JC/JCOHEN/Genezzo-0.64.tar.gz
  J/JC/JCOHEN/Genezzo-0.67.tar.gz
  J/JC/JCOHEN/Genezzo-0.69.tar.gz
  J/JC/JCOHEN/Genezzo-0.70.tar.gz
  J/JC/JCOHEN/Genezzo-0.71.tar.gz
  J/JC/JCOHEN/Genezzo-0.72.tar.gz
  J/JE/JETTERO/Term-GentooFunctions-1.002000.tar.gz
  J/JO/JOSEPHW/XML-Writer-0.500.tar.gz
  J/JO/JOSEPHW/XML-Writer-0.510.tar.gz
  J/JO/JOSEPHW/XML-Writer-0.520.tar.gz
  J/JO/JOSEPHW/XML-Writer-0.530.tar.gz
  J/JO/JOSEPHW/XML-Writer-0.531.tar.gz
  J/JO/JOSEPHW/XML-Writer-0.540.tar.gz
  J/JO/JOSEPHW/XML-Writer-0.545.tar.gz
  J/JO/JOSEPHW/XML-Writer-0.600.tar.gz
  J/JO/JOSEPHW/XML-Writer-0.601.tar.gz
  O/OT/OTTO/PDF-API3-3.001.tar.gz
  P/PH/PHILIPS/DBIx-MyParsePP-0.10.tar.gz
  P/PH/PHILIPS/DBIx-MyParsePP-0.20.tar.gz
  P/PH/PHILIPS/DBIx-MyParsePP-0.25.tar.gz
  P/PH/PHILIPS/DBIx-MyParsePP-0.50.tar.gz
  P/PV/PVHP/dclpod-html-0_001.tgz
  R/RO/ROKR/Dist-Zilla-PluginBundle-ROKR-0.0018.tar.gz
  S/SA/SAMV/Dowse-BadSSH-0.02.tar.gz
  S/SA/SAMV/Dowse-BadSSH-0.03.tar.gz
  S/SA/SAMV/Dowse-BadSSH-0.04.tar.gz
  S/SA/SAMV/Dowse-BadSSH-0.05.tar.gz
  S/SA/SAMV/Dowse-BadSSH-0.06.tar.gz
  S/SA/SAMV/Dowse-BadSSH-0.07.tar.gz
  S/SA/SAMV/Dowse-BadSSH-0.08.tar.gz
  S/SA/SAMV/Dowse-BadSSH-0.09.tar.gz
  S/SL/SLENK/MCPrimers/Bio-MCPrimers-1.02.tar.gz
  T/TO/TOBY/Geo-Coordinates-OSGB-2.00.tar.gz
);

done_testing;
