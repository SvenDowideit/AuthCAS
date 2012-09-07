
use Test::More tests => 1;

use AuthCAS;

my $cas = new AuthCAS(
    casUrl => 'https://not_there/',
    CAFile => '/usr/local/apache/conf/ssl.crt/ca-bundle.crt',
);

my $return_url = 'http://myapp/something';

my $login_url = $cas->getServerLoginURL($return_url);
ok(
    !defined(
        $cas->validateST( $return_url, 'ST-42-SLwl77Lv5xx6QK2dmlze-cas' )
    ),
    'non-existant, bu reasonable format ticket, to a non-existant server'
);
