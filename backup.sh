#!/usr/bin/env bash

set -euvx
date

DIR_FROM="symlink-Library-Application_Support-REAPER"
DIR_TO=./backup_copied_from_home_Library

git status
mkdir -p $DIR_TO
ls -l $DIR_FROM
cd $DIR_TO
cp -pr DIR_FROM/* ./

echo 'Note that "cp -pr" copies symlinks as files/dirs, NOT as symlinks, so it is safe to "rm" here.'
rm -fr ColorThemes
rm -fr Data
git status
