#!/usr/bin/env perl
use 5.014;
use warnings;

my ($orig, $dest) = @ARGV;

link $orig => $dest;
