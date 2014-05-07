#!/usr/bin/env perl

while(<>) {
    chomp;
    if (/(?<word>\b.\w*a\b)/) {
        print "\$1 contains: $+{word}\n";
    } else {
        print "No match: |$_|\n";
    }
}
