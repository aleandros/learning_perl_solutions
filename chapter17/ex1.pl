#!/usr/bin/env perl
use 5.014;
use warnings;

open MYFILE, '<', shift @ARGV;
chomp (my @lines = <MYFILE>);

my $pattern;
while (1) {
    print "Enter a pattern: \n> ";
    chomp ($pattern = <STDIN>);
    exit if $pattern =~ /\A\s*\Z/;
    my @results = eval { grep /$pattern/, @lines };
    if ($@) {
        print "Invalid pattern: $@\n";
        next;
    }
    print "=" x 10 . "\n";
    print "Matched lines:\n\n";
    say foreach @results;
    print "=" x 10 . "\n";
}
