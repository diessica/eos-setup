#!/bin/bash

run_npm() {
  if type_exists "npm"; then
    e_header "Installing NPM packages..."
    
    # list of npm packages
    local packages="grunt-cli gulp bower csslint csscomb stylus imageoptim-cli gh jade hexo jasmine-node yslow shelljs uglify-js jshint browser-sync markdown"
    
    # if doesn't exist yet, then install
    npm install $packages -g
    if which ${packages[@]} &> /dev/null; then
    	msg_ok "${packages[@]}"
    else
    	msg_run "${packages[@]}" "sudo npm install -g ${packages[@]}"
    	sudo npm install -g ${packages[@]}
    fi

    [[ $? ]] && e_success "Done"
    
  else
      printf "\n"
      e_error "Error: npm not found."
      printf "Aborting...\n"
      exit
  fi
}
