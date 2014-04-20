#!perl

use Test::More tests => 7;

use Sub::Identify::XS ':all';

sub buffy { }
sub vamp::spike { }
*slayer = *buffy;
*human::william = \&vamp::spike;

is( join('*', get_code_info( \&get_code_info )), 'Sub::Identify::XS*get_code_info' );
is( join('*', get_code_info( \&buffy )), 'main*buffy' );
is( join('*', get_code_info( \&vamp::spike )), 'vamp*spike' );
is( join('*', get_code_info( \&slayer )), 'main*buffy' );
is( join('*', get_code_info( \&human::william )), 'vamp*spike' );

sub xander;
sub vamp::drusilla;
is( join('*', get_code_info( \&xander )), 'main*xander', 'undefined subroutine' );

is( join('*', get_code_info( sub { 'ah non' } )), 'main*__ANON__' );
