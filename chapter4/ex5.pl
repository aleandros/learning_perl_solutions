#!/usr/bin/env perl
use 5.014;
use warnings;

sub greet {
    state @previous;
    my $current = shift @_;
    if (@previous) {
        print "Hi $current! I've seen: @previous\n";
    } else {
        print "Hi $current! You are the first one here\n";
    }
    push @previous, $current;
}

# Test
greet("Fred");
greet("Barney");
greet("Wilma");
greet("Betty");
