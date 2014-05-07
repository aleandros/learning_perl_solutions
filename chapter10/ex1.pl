#!/usr/bin/env perl
use strict;
use warnings;

my $number = int(1 + rand 100);
print "Guess the number:\n> ";
while (1) {
    chomp (my $try = <STDIN>);
    if ($try eq 'quit' or $try eq 'exit' or $try eq '') {
        last;
    } elsif ($try > $number) {
        print "Too high\n> ";
        redo;
    } elsif ( $try < $number) {
        print "Too low\n> ";
        redo;
    } elsif ($try == $number) {
        print "Correct!\n";
        last;
    }
}

