#!/bin/sh

#  build.sh
#  SNES2C64
#
#  Created by Dieter Baron on 05.04.23.
#

SRCROOT="$1"
BUILDDIR="$2"
OUTPUTDIR="$3"

PATH=$PATH:/usr/local/bin:/opt/homebrew/bin

set -e

for arch in arm64 amd64
do
    (cd "$SRCROOT"/gui && CGO_ENABLED=1 GOOS=darwin GOARCH=$arch go build -o "$BUILDDIR"/SNES2C64-$arch ./cmd/gui)
done

lipo -create -output "$OUTPUTDIR"/SNES2C64 "$BUILDDIR"/SNES2C64-amd64 "$BUILDDIR"/SNES2C64-arm64
