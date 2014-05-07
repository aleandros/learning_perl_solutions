#!/usr/bin/env perl

while(<>) {
    chomp;
    if (/(?<word>\b.\w*a\b)(?<after>.{0,5})/) {
        print "\$word contains: $+{word}\n";
        print "\$after contains: $+{after}\n";
    } else {
        print "No match: |$_|\n";
    }
}
