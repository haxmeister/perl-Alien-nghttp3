# Contributing to Alien::nghttp3

Contributions are welcome through the GitHub repository:

https://github.com/haxmeister/perl-Alien-nghttp3

## Reporting bugs

Please open an issue and include enough information to reproduce the problem.

Useful details are:

- operating system
- Perl version
- Alien::Build version
- compiler version when relevant
- the output from `perl Makefile.PL`
- the output from `make` or `make test`
- the output from `pkgconf --modversion libnghttp3` when pkgconf is available

For security issues, follow SECURITY.md instead of opening a public issue.

## Development

Alien::nghttp3 requires Perl 5.20 or newer and Alien::Build 2.84 or newer.

A normal development build is:

    perl Makefile.PL
    make
    make test

When a suitable system libnghttp3 1.18.0 or newer is available, it may be
used.

Otherwise the distribution builds the pinned nghttp3 1.18.0 fallback using
CMake.

Before submitting a pull request, make sure the test suite passes.

Changes to the native build path should keep working on supported Linux,
macOS, and Windows configurations.

## Scope

Alien::nghttp3 supplies libnghttp3 to downstream Perl distributions.

It must remain independent of:

- Net::QUIC
- Linux::Event
- ngtcp2
- TLS implementations
- event loops
- Perl HTTP frameworks

Integration between libnghttp3 and a QUIC or HTTP stack belongs in a
higher-level distribution.
