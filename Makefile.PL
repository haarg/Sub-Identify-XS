use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => 'Sub::Identify::XS',
    ABSTRACT      => 'Faster implementation of the Sub::Identify API',
    VERSION_FROM  => 'lib/Sub/Identify/XS.pm',
    LICENSE       => 'perl',
    PREREQ_PM     => {
        'Test::More'  => 0,
    },
);
