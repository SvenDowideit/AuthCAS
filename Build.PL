use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'CAS',
    license             => 'perl',
    dist_author         => 'Olivier Salaun <os AT cru.fr>',
    dist_version_from   => 'lib/CAS.pm',
    requires => {
        'Test::More' => 0,
    },
    add_to_cleanup      => [ 'CAS-*' ],
);

$builder->create_build_script();
