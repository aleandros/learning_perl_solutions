#!/usr/bin/env perl

while(<>) {
    chomp;
    if (/PATTERN/) {
        print "Matched: |$`<$&>$'|\n";
    } else {
        print "No match: |$_|\n";
    }
}
