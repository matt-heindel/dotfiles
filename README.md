# Dotfiles

## Why Track Dotfiles?

Dotfiles (like ~/.vimrc, ~/.bashrc, etc. in your home directory) manage the configurations, themes, and settings that you customize within your command line environment. Storing them in a GitHub repository ensures all your favorite configurations are safe and sound in a central place. If you ever want to revert back to a previous configuration, your hard drive gets damaged, or you want to replicate and sync your environment on another machine, you can do so with just a few simple steps.

## Dotfiles Tracked in this Repo

- bash_aliases
- bash_profile
- bashrc
- vimrc
- gitconfig

## My Favorite Configurations

- Spell check in vim (no more commit message typos!)
- Minimal bash prompt
- Function `killport` for managing port processes. See my [blog post](https://dev.to/mattheindel/fixing-nodemon-error-listen-eaddrinuse-address-in-use-3ic2) for more details on this.
- Alias `gml` prints a pretty one-line format of `git log` filtered to only my commits

```bash
$ gml
* f074c20 2021-07-07 | Update `README` image links (HEAD -> main, origin/main) [Matt Heindel]
* 2d32e40 2021-07-05 | Add alias functions for managing server ports [Matt Heindel]
* ac0df26 2021-07-04 | Add welcome message that displays suggested files on opening bash [Matt Heindel]
* f728b13 2021-07-04 | New alias `cl` combines `cd` and `ls` commands [Matt Heindel]
```

## Complete Guide

If you'd like to track your dotfiles, check out [this helpful blog post](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/) for a full guide.

## Syncing from this Repository

When adding the configuration files here to a new machine, enter the following commands into bash.

```bash
cd ~
git clone https://github.com/matt-heindel/dotfiles.git
cd ~/dotfiles
chmod +x makesymlinks.sh
./makesymlinks.sh
```

## Updating Tracked Dotfiles

Any time you change a tracked dotfile, make sure to:

1. `git push` from the machine with updates
2. `git pull` to any other machines you work on

## Adding / Removing a Tracked Dotfile

When tracking a new file or removing a file from tracking, a few extra step are required.

1. Open the `makesymlinks.sh` file in vim

    ```bash
    vim ~/dotfiles/makesymlinks.sh  
    ```

1. Scroll to the *Variables* section and update the line `files="..."` to be a space separated list of all dotfiles in the specified directory  

  ```bash
########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
# update files to match dir
files="bashrc vimrc bash_profile bash_aliases gitconfig"    # list of files/folders to symlink in homedir

##########
  ```

  Remember in vim pressing `i` enters insert mode
1. Close and save with `Esc` then `:wq`
1. `git commit` with a descriptive message of changes
1. `git push`

## References

- The Smalley Creative Blog  
[Using Git and Github to Manage Your Dotfiles](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/)
