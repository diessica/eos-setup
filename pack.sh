#!/bin/bash

# Main pack.sh
# Part of Diéssica's setup, maintened by Diéssica Gurskas
# On GitHub: https://github.com/diessica/setup

#-----------------------------------------------------
# UTILITIES                                          |
#-----------------------------------------------------
bold=$(tput bold; tput smul)
normal=$(tput sgr0)
width=$(tput cols)

#-----------------------------------------------------
# LOG MESSAGES                                       |
#-----------------------------------------------------

# Greeting message
printf "%*s" "$width" |tr " " "-"
echo -e "You choose which packages to install. When it happens,  ${bold}answer with the number${normal}."
printf "%*s" "$width" |tr " " "-"

# Prompts the user for the package manager
read -p "Which package manager do you use? (E.g. ${bold}apt-get${normal}, ${bold}aptitude${normal}) | " packageInstaller
printf "%*s" "$width" |tr " " "-"

#-----------------------------------------------------
# GERAL INSTALLATION                                 |
# Packages without specific PPAs or dependencies     |
#-----------------------------------------------------

# Function for installing apps with no dependencies or specific PPAs
installApp() {
  echo "Install ${bold}$1${normal}?"
  select yn in "✔ Yes" "✗ No"; do  
  case $yn in
    "✔ Yes" ) 
      sudo $packageManager install $1
      echo "✔ ${bold}$1${normal}";;
    
    "✗ No" )
      echo "✗ ${bold}$1${normal} won't be installed."
      break;;
  esac
  done
  printf "%*s" "$width" |tr " " "-"
}

$packages = "vim" "google-chrome-stable" "elementary-tweaks" "terminator" "vlc" "rhythmbox"
for x in $packages
do 
  set -- "$x"
  installApp $@
done

#-----------------------------------------------------
# INDIVIDUAL INSTALLATION                            |
# Packages with specific PPAs or dependencies        |
#-----------------------------------------------------

echo "Install ${bold}Chromium Beta{normal}?"
select yn in "✔ Yes" "✗ No"; do  
case $yn in
  "✔ Yes" ) 
    sudo add-apt-repository ppa:saiarcot895/chromium-beta
    sudo $packageManager update
    sudo $packageManager install chromium-browser
    echo "✔ ${bold}chromium-browser${normal}";;
  
  "✗ No" )
    echo "✗ ${bold}chromium-browser${normal} won't be installed."
    break;;
esac
done

echo "Install ${bold}Dropbox{normal}?"
select yn in "✔ Yes" "✗ No"; do  
case $yn in
  "✔ Yes" ) 
    sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E && sudo add-apt-repository 'deb http://linux.dropbox.com/ubuntu $(lsb_release -sc) main'
    sudo $packageManager update
    sudo $packageManager install nautilus-dropbox
    echo "✔ ${bold}nautilus-dropbox${normal}";;
  
  "✗ No" )
    echo "✗ ${bold}nautilus-dropbox${normal} won't be installed."
    break;;
esac
done

echo "Install ${bold}Sublime Text 3{normal}?"
select yn in "✔ Yes" "✗ No"; do  
case $yn in
  "✔ Yes" ) 
    sudo add-apt-repository ppa:webupd8team/sublime-text-3
    sudo $packageManager update
    sudo $packageManager install sublime-text-installer
    echo "✔ ${bold}sublime-text-installer${normal}";;
  
  "✗ No" )
    echo "✗ ${bold}sublime-text-installer{normal} won't be installed."
    break;;
esac
done

echo "Install ${bold}Atom{normal}?"
select yn in "✔ Yes" "✗ No"; do  
case $yn in
  "✔ Yes" ) 
    sudo add-apt-repository ppa:webupd8team/atom
    sudo $packageManager update
    sudo $packageManager install atom
    echo "✔ ${bold}atom${normal}";;
  
  "✗ No" )
    echo "✗ ${bold}atom{normal} won't be installed."
    break;;
esac
done

echo "Install ${bold}Skype{normal}?"
select yn in "✔ Yes" "✗ No"; do  
case $yn in
  "✔ Yes" ) 
    sudo add-apt-repository 'deb http://archive.canonical.com/ $(lsb_release -sc) partner'
    sudo $packageManager update
    sudo $packageManager install skype
    echo "✔ ${bold}skype${normal}";;
  
  "✗ No" )
    echo "✗ ${bold}skype${normal} won't be installed."
    break;;
esac
done

echo "Install ${bold}Firefox Aurora{normal}?"
select yn in "✔ Yes" "✗ No"; do  
case $yn in
  "✔ Yes" ) 
    sudo add-apt-repository ppa:ubuntu-mozilla-daily/firefox-aurora
    sudo $packageManager update
    sudo $packageManager install firefox
    echo "✔ ${bold}firefox${normal}";;
  
  "✗ No" )
    echo "✗ ${bold}firefox${normal} won't be installed."
    break;;
esac
done

echo "Install ${bold}Opera{normal}?"
select yn in "✔ Yes" "✗ No"; do  
case $yn in
  "✔ Yes" ) 
    sudo add-apt-repository 'deb http://deb.opera.com/opera-beta/ stable non-free' && wget -O - http://deb.opera.com/archive.key | sudo apt-key add -
    sudo $packageManager update
    sudo $packageManager install opera
    echo "✔ ${bold}opera{normal}";;
  
  "✗ No" )
    echo "✗ ${bold}opera${normal} won't be installed."
    break;;
esac
done

## Final message
echo "${bold}Completed${normal} ✔"

exit 0
