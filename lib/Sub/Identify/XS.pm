package Sub::Identify::XS;

use strict;
use Exporter;
use XSLoader;

our $VERSION = '0.04';
our @ISA = ('Exporter');
our %EXPORT_TAGS = (
    all => [
        our @EXPORT_OK = qw(get_code_info),
    ]
);

XSLoader::load(__PACKAGE__, $VERSION);

1;

__END__

=head1 NAME

Sub::Identify::XS - Faster implementation of the Sub::Identify API

=head1 SYNOPSIS

    use Sub::Identify;

=head1 DESCRIPTION

This is an XS backend for L<Sub::Identify> and should be used through that
module.

=head1 SOURCE

A git repository for the sources is at
L<https://github.com/rgs/Sub-Identify-XS>.

=head1 LICENSE

(c) Rafael Garcia-Suarez (rgs at consttype dot org) 2005, 2008, 2012

This program is free software; you may redistribute it and/or modify it under
the same terms as Perl itself.

=cut
