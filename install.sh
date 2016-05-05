echo Creating preferences file for current user...
sed -e "s|{HOME_DIRECTORY}|$HOME|g" iterm_profile_template.xml > com.googlecode.iterm2.plist

echo Copying scripts and images directories to $HOME/iterm2...
mkdir -p ~/iterm2
mkdir -p ~/iterm2/scripts
mkdir -p ~/iterm2/images
cp -r scripts ~/iterm2/
cp -r images ~/iterm2/

echo Moving preferences file to ~/Library/Preferences/...
mv com.googlecode.iterm2.plist ~/Library/Preferences/
