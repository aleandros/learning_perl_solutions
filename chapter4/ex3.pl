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

sub average {
    &total(@_)/@_;
}

sub above_average {
    my $avg = &average(@_);
    my @result;
    foreach (@_) {
        if ($_ > $avg) {
            push @result, $_;
        }
    }
    @result;
}

# test
my @aa = &above_average(1..10);
foreach (@aa) {
    print $_ . "\n";
}
