#!/bin/bash

uscan --force-download

TEMPDIR=`mktemp -d`
mkdir $TEMPDIR/dumbster/
unzip -q -d $TEMPDIR/dumbster/ ../dumbster1.6-all.zip
GZIP=-9 tar -C $TEMPDIR --exclude="dumbster/lib*" --exclude="dumbster/dumbster*.jar" -czf ../dumbster_1.6+debian.orig.tar.gz dumbster

rm -rf $TEMPDIR
