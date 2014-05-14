#!/usr/bin/env perl
use 5.014;
use warnings;

my $number = int(1 + rand 100);
print "Guess the number:\n> ";
while (1) {
    chomp (my $try = <STDIN>);
    given ($try) {
        when($_ eq 'quit' or $_ eq 'exit' or $_ eq '') {
            last;
        } when ($_ > $number) {
            print "Too high\n> ";
            redo;
        } when ( $_ < $number) {
            print "Too low\n> ";
            redo;
        } when ($_ == $number) {
            print "Correct!\n";
            last;
        }
    }
}

