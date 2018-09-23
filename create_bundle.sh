#!/bin/bash

BUNDLE_FOLDER=s2n_bundle
LOCAL_BUILD=local_build
S2N_BUILD=s2n

mkdir -p $BUNDLE_FOLDER/include
mkdir -p $BUNDLE_FOLDER/lib
cp $S2N_BUILD/build/lib/libs2n.a $BUNDLE_FOLDER/lib
cp $S2N_BUILD/api/s2n.h $BUNDLE_FOLDER/include
cp $LOCAL_BUILD/lib/*.a $BUNDLE_FOLDER/lib
cp -r $LOCAL_BUILD/include/openssl $BUNDLE_FOLDER/include
tar -czvf s2n_bundle.tar.gz $BUNDLE_FOLDER/
echo Removing temp folder $BUNDLE_FOLDER
rm -rf $BUNDLE_FOLDER
