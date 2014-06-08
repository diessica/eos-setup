# diéssica's setup :penguin:
This repository keeps my essential setup on **[Elementary OS](http://elementaryos.org/) Luna (64-bit)**, including *dotfiles*. So far, it also keeps my life :P

## how to
After installing Elementary OS...

#### 1. Check for upgrades and updates
  ```sh
  sudo aptitude distr-upgrade; sudo aptitude upgrade; sudo aptitude update
  ```

#### 2. Install dot(files)
> Stuff like ZSH shell and its plugins, my Vim settings and essential NPM packages. See [dot](https://github.com/diessica/setup/blob/master/README.md#).
> TODO

#### 3. Install some essential softwares using [Elementary OS essentials](https://github.com/diessica/elementaryos-essentials) kit
  > See [pack](https://github.com/diessica/setup/blob/master/README.md#).
  
  ```sh
  curl -O https://raw.github.com/diessica/elementaryos-essentials/master/kit.sh
  chmod +x kit.sh
  sudo ./kit.sh
  ```

#### 4. Run [pack.sh](https://github.com/diessica/setup/blob/master/pack.sh) to install additional softwares
  > See [pack](https://github.com/diessica/setup/blob/master/README.md#).

  ```sh
  curl -O https://github.com/diessica/setup/blob/master/pack.sh
  chmod +x pack.sh
  sudo ./pack.sh
  ```

#### 5. Generate SSH keys
  ```sh
  ssh-keygen -t rsa -C "example@email.com"
  ssh-add ~/.ssh/id_rsa
  ```
  That done, add SSH key to both [GitHub](https://help.github.com/articles/generating-ssh-keys#step-3-add-your-ssh-key-to-github) and [BitBucket](https://confluence.atlassian.com/display/BITBUCKET/Set+up+SSH+for+Git).
  
#### 6. Set default softwares and preferences
  > See [notes](https://github.com/diessica/setup/blob/master/README.md#notes).
  
#### 7. Configure Sublime Text
  > See my [Sublime Text's repo](https://github.com/diessica/setup/tree/master/sublimetext).

--

### pack

###### Development
* [Atom](https://atom.io) for editing code
* [Sublime Text](http://sublimetext.com) for editing code
 * [Preferences.sublime-settings](https://github.com/diessica/setup/blob/master/sublimetext/Preferences.sublime-settings)
* [Vim](http://vim.org) for (hard) editing code
 * [.vimrc](https://github.com/diessica/setup/blob/master/dot/.vimrc)
* [FileZilla](https://filezilla-project.org) for file transfer
* [VirtualBox](https://virtualbox.org/) for virtual machines
 * [IE test VMs](http://modern.ie/pt-br/virtualization-tools)

###### Browser
* [Firefox](http://mozilla.org/firefox) (default)
 * [Extensions]()
 * [Bookmarks]()
* [Firefox Aurora](http://mozilla.org/en-US/firefox/aurora/)
* [Chromium](http://chromium.org/)
* [Opera Next](http://opera.com/computer/next)

###### Media
* [Rhythmbox](https://projects.gnome.org/rhythmbox/) (music player)
* [VLC](http://videolan.org/vlc) (video player)
* [Skype](http://skype.com) (IM)

###### Tools
* [Elementary Tweaks](https://code.launchpad.net/~versable/elementary-community/elementary-tweaks) for OS tweaking
 * [Harvey theme](https://code.launchpad.net/~versable/elementary-community/elementary-harvey-theme)
* [Terminator](https://launchpad.net/terminator) for terminal emulation
* [System Monitor](https://launchpad.net/gnome-system-monitor) for tasks management
* [LibreOffice](http://libreoffice.org) for office suite
* [Deja-Dup](https://launchpad.net/deja-dup) for backup
* [GIMP](http://gimp.org/) for editing and manipulating images
* [RecordMyDesktop](http://recordmydesktop.sourceforge.net) for screencasts
* [ScreenCloud](http://screencloud.net/) for easy screenshots
* [Deluge](http://deluge-torrent.org/) (BitTorrent client)
* [Dropbox](https://dropbox.com/) for file syncing 
* [Brasero](https://projects.gnome.org/brasero) for burning CD/DVD
* [Disks](https://launchpad.net/gnome-disk-utility) for managing disks
* [Super Wingpanel](https://launchpad.net/~heathbar/+archive/super-wingpanel) for a better Wingpanel

> Most "non-dev" softwares above are part of the [Elementary OS essentials kit](https://github.com/diessicode/elementaryos-essentials).

### dot

###### Shell
* [ZSH](http://zsh.sourceforge.net) for shell
* [Oh my ZSH](https://github.com/robbyrussell/oh-my-zsh) for ZSH tweaking

###### Tools
* [Git](http://git-scm.com/) for code versioning
* [Wget](http://gnu.org/software/wget/) for retrieving files using HTTP, HTTPS and FTP
* [npm](https://npmjs.org/) for Node.js package management
* [RubyGems](http://rubygems.org/) for Ruby package management
* [Drush](http://drush.ws/) for Drupal command line shell and scripting interface

###### Node.js
* [DocPad](http:/docpad.org) for static-generated website development
* [Hexo](http://hexo.io) for static-generated website development
* [Grunt](http://gruntjs.com/) for task automation
* [Gulp](http://gulpjs.com/) for task automation
* [Bower](https://github.com/bower/bower) for front-end package management
* [JSHint](http://jshint.com) for JavaScript code quality
* [Stylus](http://learnboost.github.io/stylus) for CSS preprocessing
* [Jade](http://jade-lang.com) for HTML templating engine
* [Jasmine](http://jasmine.github.io/) for testing JavaScript code
* [NodeGH](http://www.nodegh.io/) for GitHub command line tools
* [NodeGH Jira](https://github.com/node-gh/gh-jira) NodeGH plugin for integrating Jira

###### Ruby
* [Sass](http://sass-lang.com) for CSS preprocessing
* [Compass](http://compass-style.org/) for Sass programming
* [Haml](http://haml.info) for HTML templating engine

## notes
###### Dock
* **Icon size** → Medium
* **Hide mode** → Intelligent hide
* **Theme** → Transparent

###### Hot corners
* **Top**
 * Right
   * Execute custom command
 * Left
   * Execute custom command
* **Bottom**
 * Right
   * Window overview
 * Left
   * Minimize current window

## thanks to
* [Zeno Rocha](https://github.com/zenorocha), which has settings similar to mine, as you can see in his [dotfiles](https://github.com/zenorocha).
* [Deny Dias' dotfiles](https://github.com/denydias/dotfiles) and his awesome article "[Ordem nos dotfiles](http://mexapi.macpress.com.br/2013/10/ordem-nos-dotfiles.html#.UoaawUPpYsk)".
* [Thoughtbot dotfiles](https://github.com/thoughtbot/dotfiles).
