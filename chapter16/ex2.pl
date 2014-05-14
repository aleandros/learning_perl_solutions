#!/usr/bin/env perl
use 5.014;
use warnings;


# Mode 1
# But!! it uses the changed directory instead of the current directory
# chdir '/home/edgar' or die 'Can not change to /home/edgar';
# exec 'ls -l 1>ls.out 2>ls.err' or die 'Can not execute ls -l';

# Mode 2
open STDOUT, '>', 'ls.out';
open STDERR, '>', 'ls.err';
chdir '/home/edgar' or die 'Can not change to /home/edgar';
exec 'ls', '-l' or die 'Can not exec ls -l';
