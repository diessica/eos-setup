#!/bin/bash

run_gem() {
  if type_exists "gem"; then
    e_header "Installing gems..."
    
    # list of gems
    local packages="sass compass haml"
    
    # if doesn't exist yet, then install
    if which ${packages[@]} &> /dev/null; then
    	msg_ok "${packages[@]}"
    else
    	msg_run "${packages[@]}" "sudo gem install ${packages[@]}"
    	sudo gem install -g ${packages[@]}
    fi

    [[ $? ]] && e_success "Done"
    
  else
      printf "\n"
      e_error "Error: gem not found."
      printf "Aborting...\n"
      exit
  fi
}
