#!/usr/bin/env bash

set -euvx
date
cp -pr symlink-Library-Application_Support-REAPER/* .

echo 'Note that "cp -pr" copies symlinks as files/dirs, NOT as symlinks, so it's safe to "rm" here.'
rm -fr ColorThemes
rm -fr Data
