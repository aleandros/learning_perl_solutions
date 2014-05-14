#!/usr/bin/env perl
use 5.014;
use warnings;

my %SIG_COUNT;

sub hup_handler { state $n; say 'Caught HUP: ', ++$n }
sub usr1_handler { state $n; say 'Caught USR1: ', ++$n }
sub usr2_handler { state $n; say 'Caught USR2: ', ++$n }
sub int_handler { say 'Caught INT. Exiting... '; exit }

foreach (qw(int hup usr1 usr2)) {
    $SIG{uc $_ } = "${_}_handler";
}

say "I am $$";

sleep 1 while 1;
