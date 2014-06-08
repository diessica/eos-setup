#!/bin/bash

bold=$(tput bold; tput smul)
normal=$(tput sgr0)
width=$(tput cols)

## Log ##
# Greeting message
printf "%*s" "$width" |tr " " "-"
echo -e "You choose which packages to install. When it happens,  ${bold}answer with the number${normal}."
printf "%*s" "$width" |tr " " "-"

# Prompts the user for the package manager
read -p "Which package manager do you use? (E.g. ${bold}apt-get${normal}, ${bold}aptitude${normal}) | " packageInstaller
printf "%*s" "$width" |tr " " "-"

## Install packages and their dependencies or not ##
installApp() {
  echo "Do you want to install ${bold}$1${normal}?"
  select yn in "Yes" "No"; do  
  case $yn in
    # If want to
    "Yes" ) 
      echo "Installing ${bold}$1${normal}..."
      # Checks if the package has dependencies
      if [ -z "$2" ]
      # No dependencies
      then
        # Install the package
        sudo "$packageInstaller" install "$1"
        break

      # Has dependencies
      else
        echo -e "This package has dependencies. \nInstalling dependencies...\n"
        # Install dependencies
        "$2"
        # Update repositories
        sudo "$packageInstaller" update
        # Install package
        sudo "$packageInstaller" install "$1"
        break
      fi
      echo "✔ ${bold}$1${normal}";;
    # If do not install...
    "No" )
      echo "✗ ${bold}$1${normal} won't be installed."
      break;;
  esac
  done
  # That's all!
  printf "%*s" "$width" |tr " " "-"
}

# Packages to be installed. Order: package|dependencies (if any)
IFS="|"
for x in "vim" "chromium-browser|sudo add-apt-repository ppa:saiarcot895/chromium-beta" "google-chrome-stable" "elementary-tweaks" "terminator" "vlc" "nautilus-dropbox|sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E && sudo add-apt-repository 'deb http://linux.dropbox.com/ubuntu $(lsb_release -sc) main'" "rhythmbox" "sublime-text-installer|sudo add-apt-repository ppa:webupd8team/sublime-text-3" "atom|sudo add-apt-repository ppa:webupd8team/atom" "skype|sudo add-apt-repository 'deb http://archive.canonical.com/ $(lsb_release -sc) partner'" "firefox|sudo add-apt-repository ppa:ubuntu-mozilla-daily/firefox-aurora" "opera|sudo add-apt-repository 'deb http://deb.opera.com/opera-beta/ stable non-free' && 
wget -O - http://deb.opera.com/archive.key && sudo apt-key add -"
do 
  set -- "$x"
  installApp $@
done

## Final message ##
echo "${bold}Completed${normal} ✔"

exit 0
