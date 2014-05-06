#!/usr/bin/env perl
use 5.014;
use warnings;

chomp(my @input = <STDIN>);
say '0123456789' x 2;
foreach (@input) {
    printf "%20s\n", $_;
}
