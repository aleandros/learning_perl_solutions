#!/usr/bin/env perl
use 5.014;
use warnings;

my %file_ages;
$file_ages{$_} = (stat $_)[10] foreach @ARGV;
my %reversed = reverse %file_ages;
my @ages = sort values %file_ages;
my $oldest = $ages[0];
my $days = int(((time) -  $oldest)/(60*60*24));
say "Oldest file: $reversed{$oldest}, created $days day(s) ago";
