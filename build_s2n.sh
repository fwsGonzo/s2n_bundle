#!/bin/bash
set -e
pushd s2n
mkdir -p build
pushd build
cmake ..
make -j24
popd
popd
echo "*** s2n has been built"
