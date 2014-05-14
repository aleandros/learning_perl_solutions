#!/usr/bin/env perl
use 5.014;
use warnings;

my @week_days = qw( Mon Tue Wed Thu Fri );
my @date = split ' ',  `./my_date`;
if ($date[0] ~~ @week_days) {
    say 'Get to work!';
} else {
    say 'Go play!';
}
