#!/usr/bin/env perl

while (<>) {
    chomp;
    if(/\s\Z/) {
        print "Match: |$& *|\n";
    } else {
        print "No match\n";
    }
}
