# Vendored nghttp3 source

This distribution contains the source needed to build libnghttp3 1.18.0.

The nghttp3 files are copied byte-for-byte from upstream tag:

    v1.18.0

Upstream repository:

    https://github.com/ngtcp2/nghttp3

nghttp3 uses sfparse as a submodule. The files under lib/sfparse are copied
byte-for-byte from the revision pinned by nghttp3 v1.18.0:

    4b313cfd2e1b389ae632b36dcd50402307289af2

Upstream repository:

    https://github.com/ngtcp2/sfparse

Only files needed by the library-only CMake build are vendored. Examples,
tests, fuzzing data, and development-only files are intentionally omitted.

The upstream nghttp3 and sfparse license files are retained in the vendored
tree.
