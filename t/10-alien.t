use strict;
use warnings;

use Test2::V0;
use Test::Alien;
use Alien::nghttp3;

alien_ok 'Alien::nghttp3';

like(
    Alien::nghttp3->version,
    qr/^\d+\.\d+(?:\.\d+)?/,
    'nghttp3 version is available',
);

ok(
    length(Alien::nghttp3->libs),
    'linker flags are available',
);

done_testing;
