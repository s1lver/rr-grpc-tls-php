#!/bin/sh
set -eu

composer install --no-interaction
./vendor/bin/rr get-binary
chmod +x ./rr
./rr serve

set -x
exec "$@"
