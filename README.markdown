Nathan's dotfiles repository                                                                                                                                                                  
============================

This is how Nathan replicates his environment to all the machines he works on.  Feel free to steal anything useful.

The idea is to put everything valuable in `~/dotfiles`, but symlink stuff wherever it would normally be.  A helper script sets up the links.

## Quick Install

    git clone git://github.com/nathanic/dotfiles.git
    cd dotfiles
    ./setup_links


## Subdirectory Organization

- bin: useful homemade helper scripts/programs
- config: top level dotfiles linked into `~/`
- perhost: files that are meant to be sourced on a per-host basis, named like `${HOSTNAME}.bashrc`


## Setup Script
The script `setup_links` is meant to be run from within the root of the dotfiles repo.
Right now it links everything in `config/` to `~/`, and links everything in `bin/` into `~/bin/`.
It's designed not to screw with anything that already exists.
You can run it to fixup links after doing a pull, if something has changed.

I am considering not linking the bin/ files and just adding dotfiles/bin/ into my `$PATH`.

