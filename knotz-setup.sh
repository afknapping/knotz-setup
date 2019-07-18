#!/bin/bash

# git clone https://github.com/afknapping/knotz-setup.git
# knotz-setup/knotz-setup.sh

# link bashprofile
cd ~
ln -s knotz-setup/.bash_profile ./.bash_profile
source .bash_profile

### REMOVE

# rm .bash_profile
# rm -rf knotz-setup/

### ROMS

# git daemon --verbose --export-all --base-path=.git --reuseaddr --strict-paths .git/
# git clone git://172.20.10.2/ roms_best_of
