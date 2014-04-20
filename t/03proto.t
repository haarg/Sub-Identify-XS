#!perl

use strict;
use Test::More tests => 1;
use Sub::Identify::XS ':all';
for my $f (qw(get_code_info)) {
    is(prototype($f), '$', "Prototype of $f is \$")
}
