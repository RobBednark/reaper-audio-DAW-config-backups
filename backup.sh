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
cp -pr DIR_LIB_FROM/* ./
cd ..

if [ -f $FILE_ZIP ]; then
    cd $DIR_ZIP_TO
    unzip -v ../$FILE_ZIP
fi

echo 'Note that "cp -pr" copies symlinks as files/dirs, NOT as symlinks, so it is safe to "rm" here.'
rm -fr ColorThemes
rm -fr Data
git status
