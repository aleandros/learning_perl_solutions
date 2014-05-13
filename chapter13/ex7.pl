#!/usr/bin/env perl
use 5.014;
use warnings;

my $soft_opt = shift @ARGV if $ARGV[0] eq '-s';
my ($orig, $dest) = @ARGV;

if ($soft_opt) {
    symlink $orig => $dest;
} else {
    link $orig => $dest;
}
