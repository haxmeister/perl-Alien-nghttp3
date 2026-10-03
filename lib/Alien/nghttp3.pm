package Alien::nghttp3;

use strict;
use warnings;
use parent 'Alien::Base';

our $VERSION = '0.01';

1;

__END__

=head1 NAME

Alien::nghttp3 - Find or build the nghttp3 HTTP/3 library

=head1 SYNOPSIS

    use Alien::nghttp3;

    my $cflags  = Alien::nghttp3->cflags;
    my $libs    = Alien::nghttp3->libs;
    my $version = Alien::nghttp3->version;

=head1 DESCRIPTION

Alien::nghttp3 makes the native nghttp3 library available to Perl
distributions.

nghttp3 implements HTTP/3 and QPACK in C. It does not provide QUIC transport
and it does not depend on a particular QUIC implementation.

Alien::nghttp3 is intentionally framework neutral. It does not depend on an
event loop, Net::QUIC, Linux::Event, ngtcp2, or a Perl HTTP framework.

A Perl distribution can use this module anywhere it needs to compile or link
against libnghttp3.

=head1 HOW INSTALLATION WORKS

Alien::nghttp3 first looks for a suitable system libnghttp3 using pkg-config.

If libnghttp3 1.18.0 or newer is available, that installation is used.

Otherwise Alien::nghttp3 builds a private library-only copy from the nghttp3
1.18.0 source vendored in this distribution. No network access is required for
the fallback build.

The private fallback build contains libnghttp3 only. It does not build QUIC,
TLS, command-line programs, examples, or an HTTP framework.

=head1 METHODS

Alien::nghttp3 inherits the normal methods from L<Alien::Base>.

=head2 cflags

Returns compiler flags for libnghttp3.

=head2 libs

Returns linker flags for libnghttp3.

=head2 version

Returns the detected or bundled libnghttp3 version.

=head1 WHAT THIS MODULE DOES NOT PROVIDE

Alien::nghttp3 is a native library provider. It does not provide:

=over 4

=item * a Perl HTTP/3 connection API

=item * QUIC transport

=item * TLS

=item * UDP socket handling

=item * an event loop

=item * a web framework

=back

Those responsibilities belong to downstream distributions.

=head1 VERSIONS

Alien::nghttp3 requires Perl 5.20 or newer and Alien::Build 2.84 or newer.

The vendored fallback source is nghttp3 1.18.0.

=head1 SEE ALSO

L<Alien::Base>

L<https://github.com/ngtcp2/nghttp3>

=head1 AUTHOR

Joshua S. Day

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2026 by Joshua S. Day.

This is free software, licensed under:

    The MIT (X11) License

=cut
