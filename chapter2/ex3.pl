#!/usr/bin/env perl
use warnings;

print "Please enter a radius:\n> ";
chomp($r = <STDIN>);
if ($r <= 0) {
    print 0 . "\n";
} else {
    print $r * 2 * 3.141592654 . "\n";
}
