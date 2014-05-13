#!/usr/bin/env perl
use strict;
use warnings;

my @numbers;
push @numbers, split while <>;
printf ("%10.1f\n", $_) foreach (sort { $a <=> $b } @numbers);
