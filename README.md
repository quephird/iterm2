### Purpose

This is just a simple repository with all of the artifacts that I need to set up a bunch of REPLs using iTerm 2

* A template to generate a preferences file
* A directory of images to be used as backgrounds for each REPL
* A directory applets made with Applescript to launch a REPL

I wound up putting a little more effort into this than I had anticipated because:

* iTerm2 preference settings use absolute paths instead of relative ones. That means it's not always possible to move preferences across machines because your account name on one may be different from yours on another. Thus, I couldn't simply commit one file and instead had to use a template and dynamically generate the preferences file on the target machine.

* I also couldn't put the scripts into a `.iterm2` directory because Spotlight ignores dotfiles (and there is no apparent way to override that), which means that they are not visible to Alfred.

### Usage

Make sure that iTerm2 is already shut down otherwise the preference file may be overwritten if you quit after running the script below. Use Terminal.app and clone this project. Move into that directory and then run `install.sh`. Now when you run iTerm you should see all of your glorious profiles. You should also be able to use Alfred or Spotlight to directly launch a REPL using one of those profiles.

### Caveats

This does not install any of the compilers/REPLs themselves, just the iTerm profiles and the Applescript applets.

### License

Copyright (C) 2016, ⅅ₳ℕⅈⅇℒℒⅇ Ҝⅇℱℱoℜⅆ.

Distributed under the Eclipse Public License either version 1.0 or (at your option) any later version.