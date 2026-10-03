# Alien::nghttp3

[![CI](https://github.com/haxmeister/perl-Alien-nghttp3/actions/workflows/test.yml/badge.svg?branch=main)](https://github.com/haxmeister/perl-Alien-nghttp3/actions/workflows/test.yml)
[![Perl](https://img.shields.io/badge/perl-5.20%2B-blue.svg)](https://www.perl.org/)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)
[![nghttp3](https://img.shields.io/badge/nghttp3-1.18.0-blue.svg)](https://github.com/ngtcp2/nghttp3)

Alien::nghttp3 makes the native nghttp3 HTTP/3 library available to Perl
distributions.

## Scope

This distribution is intentionally framework neutral.

It provides libnghttp3. It does not provide:

- a Perl HTTP/3 API
- QUIC transport
- TLS
- an event loop
- UDP socket handling
- a web framework

nghttp3 itself implements HTTP/3 and QPACK and is independent of any
particular QUIC transport implementation.

This means Alien::nghttp3 can be used by any Perl distribution that needs
libnghttp3. It is not tied to Net::QUIC, Linux::Event, ngtcp2, or any other
framework.

## Installation behavior

Alien::nghttp3 first looks for a system installation of libnghttp3 1.18.0 or
newer through pkg-config.

If a suitable copy is found, it is used.

Otherwise Alien::nghttp3 downloads the official nghttp3 1.18.0 release and
builds a private library-only copy.

The fallback build uses the official CMake build, builds only the static
libnghttp3 library, and disables tests and examples.

## Using it from another Perl distribution

The normal Alien interface is all that downstream code needs:

    use Alien::nghttp3;

    my $cflags  = Alien::nghttp3->cflags;
    my $libs    = Alien::nghttp3->libs;
    my $version = Alien::nghttp3->version;

XS distributions can use these values to compile and link directly against
libnghttp3.

## Relationship to QUIC

HTTP/3 runs over QUIC, but libnghttp3 does not implement the QUIC transport.

A downstream HTTP/3 implementation is expected to combine libnghttp3 with the
QUIC implementation of its choice.

Alien::nghttp3 deliberately does not choose one.

## Compatibility

Alien::nghttp3 requires:

- Perl 5.20 or newer
- Alien::Build 2.84 or newer
- a C11-capable C compiler when the fallback library must be built

The bundled fallback source is nghttp3 1.18.0.

## Development

    perl Makefile.PL
    make
    make test

See CONTRIBUTING.md for more development information.

## License

Alien::nghttp3 is MIT licensed.

nghttp3 is also MIT licensed.
