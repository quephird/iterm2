#! /bin/sh

echo Creating new preferences file for current user...
sed -e "s|{HOME_DIRECTORY}|$HOME|g" iterm_profile_template.xml > com.googlecode.iterm2.plist

echo Copying images directory to $HOME/.iterm2...
mkdir -p ~/.iterm2
mkdir -p ~/.iterm2/images
cp -r images ~/.iterm2/

echo Copying AppleScripts to $HOME/Library/Scripts...
if [ ! -d "~/Library/Scripts" ]; then
  mkdir -p ~/Library/Scripts
fi
cp -r scripts/* ~/Library/Scripts

echo Deleting cached preferences...
defaults delete com.googlecode.iterm2

echo Moving preferences file to ~/Library/Preferences/...
mv com.googlecode.iterm2.plist ~/Library/Preferences/

echo Reading in new preferences...
defaults read com.googlecode.iterm2 > /dev/null

echo Done!!!
