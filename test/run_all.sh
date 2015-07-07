#/bin/sh

_DIR=$(dirname $BASH_SOURCE)
echo pushd ${_DIR}/..
pushd ${_DIR}/..

pub run test:test -p vm -p dartium -r expanded