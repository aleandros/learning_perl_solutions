#!/usr/bin/env perl
use strict;
use warnings;

sub total {
    my $sum;
    foreach (@_) {
        $sum += $_;
    }
    $sum;
}

# Test
my @fred = qw(1 3 5 7 9);
my $total = &total(@fred);
print $total . "\n";
