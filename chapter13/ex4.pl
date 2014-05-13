#!/usr/bin/env perl
use 5.014;
use warnings;

my $deleted = unlink @ARGV;
say "Removed $deleted files";
