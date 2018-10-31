#!/bin/bash
set -e
mkdir -p build_s2n
pushd build_s2n
cmake ../s2n
make -j24
popd
echo "*** s2n has been built"
