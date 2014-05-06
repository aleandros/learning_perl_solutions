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

print &total(1..1000) . "\n";
