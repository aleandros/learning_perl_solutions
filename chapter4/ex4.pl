#!/usr/bin/env perl
use 5.014;
use warnings;

sub greet {
    state $previous = '';
    my $current = shift @_;
    if ($previous) {
        print "Hi $current! $previous is also here!\n";
    } else {
        print "Hi $current! You are the first one here\n";
    }
    $previous = $current;
}

# Test
greet("Fred");
greet("Barney");
