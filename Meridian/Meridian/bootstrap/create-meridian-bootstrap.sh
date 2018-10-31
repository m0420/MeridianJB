#!/bin/bash

currDir=$(dirname $0)
spongebobDir=$currDir/../..
baseDir=$currDir/spongebob-bootstrap

# amfid_payload.dylib 
cp $spongebobDir/amfid/bin/* $baseDir/spongebob/

# pspawn_hook.dylib
cp $spongebobDir/pspawn_hook/bin/* $baseDir/usr/lib/

# jailbreakd
cp $spongebobDir/jailbreakd/bin/* $baseDir/spongebob/jailbreakd/

# remove all .DS_Store files
find $baseDir -name '.DS_Store' -delete

# create tar archive
cd $baseDir
COPYFILE_DISABLE=1 tar -cf spongebob-bootstrap.tar ./*
mv spongebob-bootstrap.tar $currDir
