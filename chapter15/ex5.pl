#!/usr/bin/env perl
use 5.014;
use warnings;
no warnings 'experimental::smartmatch';

my $number = shift @ARGV;
my $favorite = 7;
given ($number) {
    when (! /\A\d+\Z/) {
        say "$_ is not a number!";
    }
    my @divs = &divisors($number);
    my @empty = ();
    my $is_odd = $number % 2;
    when (! (@divs ~~ @empty)) {
        say "@divs"; continue
    } when (2 ~~ @divs) {
        say "$_ is even"; continue
    } when (! (2 ~~ @divs)) {
        say "$_ is odd"; continue
    } when ($favorite ~~ @divs) {
        say "$_ is divisible by my favorite number"; continue
    } when (@divs ~~ @empty) {
        say "$_ is prime";
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
