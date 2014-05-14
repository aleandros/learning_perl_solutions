#!/usr/bin/env perl
use 5.014;
use warnings;

my $number = shift @ARGV;
given ($number) {
    when (! /\A\d+\Z/) {
        say "$_ is not a number!";
    }
    my @divs = &divisors($number);
    my @empty = ();
    when (@divs ~~ @empty) {
        say "$_ is prime";
    } default {
        say "@divs";
    }
}

sub divisors {
    my $number =shift;
    my @divisors = ();
    foreach my $divisor (2 .. ($number / 2)) {
        push @divisors, $divisor unless $number % $divisor;
    }
    return @divisors;
}
