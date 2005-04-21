use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'CAS',
    AUTHOR              => 'Olivier Salaun <os AT cru.fr>',
    VERSION_FROM        => 'lib/CAS.pm',
    ABSTRACT_FROM       => 'lib/CAS.pm',
    PL_FILES            => {'sampleCasClient.pl'},
    PREREQ_PM => {
        'IO::Socket::SSL' => 0,
	'LWP::UserAgent' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'CAS-*' },
);
