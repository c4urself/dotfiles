## Dotfiles

Got around to updating my dotfiles. Mostly lets me keep my VIM addons up to date and adds some pretty
fun stuff including [git completion](https://blogs.oracle.com/linuxnstuff/entry/recommended_git-completionbash) and [z](https://github.com/rupa/z/).

### Todos

* Have to figure out submodules and vundle
* Want to add gitflow stuff

## Installation

    $ git clone git://github.com/c4urself/dotfiles.git
    $ cd dotfiles
    $ git submodule init
    $ git submodule update
    $ ./golive.sh

## Vundle

Adding bundles so that it stays in the dotfiles and a simple clone and golive is the
only thing necessary to get up and running on a new machine:

Run `:BundleInstall` to checkout bundles into `.vim/bundle/` when first adding them
Run `git submodule add <bundle_git_remote> .vim/bundle/<bundle_name>` to add them to the repo permanently

## Notes

* The `golive.sh` script essentially just uses `rsync` to update changes to your home directory.
* Changing things should be done in the repo, pushed, then updated to actual use via `golive.sh`
* The .osx script is a one-time run type of thing and included just for fun it is not sourced.

---

Thanks to [Madhusudhan Srinivasa](https://github.com/madhums/dotfiles) and [Mathias Bynens](https://github.com/mathiasbynens/dotfiles)
