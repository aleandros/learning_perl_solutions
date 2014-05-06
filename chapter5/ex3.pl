#!/usr/bin/env perl
use 5.014;
use warnings;

chomp(my @input = <STDIN>);
my $width = shift @input;
printf "%${width}s\n", '0123456789' x ($width / 10);
foreach (@input) {
    printf "%${width}s\n", $_;
}
