#!/bin/bash
set -e
mkdir -p local_build
DST=`pwd`/local_build

pushd openssl
git checkout OpenSSL_1_1_1-stable
#make distclean
./config no-threads no-shared no-ssl2 no-ssl3 enable-ec_nistp_64_gcc_128 no-engine no-dso --prefix=$DST --openssldir=$DST
make -j8 depend
make -j8
make install
popd
