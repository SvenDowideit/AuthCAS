use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'AuthCAS',
    license             => 'perl',
    dist_author         => 'Olivier Salaun <os AT cru.fr>',
    dist_version_from   => 'lib/AuthCAS.pm',
    requires => {
        'IO::Socket::SSL' => 0,
    	'LWP::UserAgent' => 0,
    },
    add_to_cleanup      => [ 'AuthCAS-*' ],
);

$builder->create_build_script();
