#!/usr/bin/env perl
use 5.014;
use warnings;
use local::lib;
use DateTime;

my $current = DateTime->from_epoch( epoch => time);
my $entered_date = DateTime->new(
    year => $ARGV[0],
    month => $ARGV[1],
    day => $ARGV[2]
);
my @units = ($current - $entered_date)->in_units( qw(years months days) );
printf "%d years, %d months and %d days\n", @units;
