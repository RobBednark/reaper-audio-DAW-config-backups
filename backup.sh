#!/usr/bin/env bash

set -euvx
date

DIR_LIB_FROM="symlink-Library-Application_Support-REAPER"
DIR_LIB_TO=./backup_copied_from_home_Library

FILE_ZIP="./*Zip"
DIR_ZIP_TO=./backup_from_REAPER_preferences_export_config/


git status
mkdir -p $DIR_LIB_TO
ls -l $DIR_LIB_FROM
cd $DIR_LIB_TO
pwd
cp -pr ../$DIR_LIB_FROM/* ./
rm -fr ColorThemes
rm -fr Data
rm -fr MetadataCaches
cd ..
pwd

if [ -f $FILE_ZIP ]; then
    mkdir -p $DIR_ZIP_TO
    cd $DIR_ZIP_TO
    pwd
    # -o ==> force overwrite without prompting (like -f (force) in other utilities)
    unzip -o ../$FILE_ZIP
    rm -fr ColorThemes
    rm -fr Data
    rm -fr MetadataCaches
    cd ..
fi

echo 'Note that "cp -pr" copies symlinks as files/dirs, NOT as symlinks, so it is safe to "rm" here.'
git status
