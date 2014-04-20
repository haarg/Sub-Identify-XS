#!perl

use Test::More tests => 4;
use Sub::Identify::XS ':all';

ok( !defined get_code_info( undef ) );
ok( !defined get_code_info( "scalar" ) );
ok( !defined get_code_info( \"scalar ref" ) );
ok( !defined get_code_info( \@INC ) );
