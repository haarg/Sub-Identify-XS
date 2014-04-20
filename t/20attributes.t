#!perl

use Test::More tests => 3;
use strict;
use warnings;
use Sub::Identify::XS ':all';

sub MODIFY_CODE_ATTRIBUTES {
    my ($class, $subref, @attributed) = @_;
    is(join('::', get_code_info($subref)), 'main::foo', 'half compiled');
    return ();
}

sub foo : MyAttribute {}

BEGIN {
    is(join('::', get_code_info(\&foo)), 'main::foo', 'full compiled');
}

is(join('::', get_code_info(\&foo)), 'main::foo', 'runtime');
