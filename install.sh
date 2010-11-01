#!/bin/sh

dir=/usr/share/themes/Ambiance
backup=$dir-backup

if [ x"`which git`" = x ]; then
  sleep 1
  echo "Please install the git package and try again:"
  echo
  echo "sudo apt-get install git"
  exit
fi

if [ -d $backup ]; then
  sudo rm -r $backup || exit
fi
sudo cp -var $dir $backup || exit
cd $dir || exit

sudo chgrp -R `id -gn` . || exit
sudo chmod -R g+w . || exit

git clone git://github.com/nylen/Ambiance-theme-mod.git || exit
mv Ambiance-theme-mod/.git/ .
rm -r Ambiance-theme-mod/
git reset --hard

echo
echo "Modified Ambiance theme set up in $dir"
