#!/usr/bin/env perl
use 5.014;
use warnings;

my ($orig, $dest) = @ARGV;
$dest .= "/$orig" if -d $dest;

rename $orig => $dest;
