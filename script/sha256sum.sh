#!/usr/bin/env bash

releasePath=release
shasum=rimerc.sha256.txt

pushd ${releasePath}

# generate shasum
sha256sum *.zip > ${shasum}

# check shasum
sha256sum -c ${shasum}

popd
