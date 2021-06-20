# dotfiles

## Why Track My Dotfiles?

Dotfiles (like ~/.vimrc, ~/.bashrc, etc. in your home directory) manage the configurations, themes, and settings you customize within your command line environment. Storing them in a GitHub repository ensures all your favorite configurations are safe and sound in a central place. If you ever accidently change a config you shouldn't have, your hard drive gets damaged, or you want to replicate your environment on another machine, you can with just a few simple steps.

## Dotfiles Tracked Here
- bash_aliases
- bash_profile
- bashrc
- vimrc
- gitconfig

## My Favorite Configurations
 - Spell check in vim
 - Automatic line wrapping in vim
 - Single character prompt `$ `
 - `gmh` alias set to a pretty one-line format of `git log` and filtered by my name

## Complete Guide

Check out [this helpful blog post](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/) for a full guide on how to track your own dotfiles.

## Setting Up

When adding the configuration files here to a new machine, enter the following commands into bash.

```bash
cd ~
git clone https://github.com/matt-heindel/dotfiles.git
cd ~/dotfiles
chmod +x makesymlinks.sh
./makesymlinks.sh
```

## Updating Tracked Dotfiles

Any time you change a tracked dotfile, make sure to `git push` from the machine with updates and `git pull` to any other machines you work on.

## Adding / Removing a Tracked Dotfile

When tracking a new file or removing a file from tracking, a few extra step are required.
1. Open the `makesymlinks.sh` file in vim  
    ```bash
    vim ~/dotfiles/makesymlinks.sh  
    ```
1. Scroll to the `Variables` section and update the line `files="..."` to be a space seperated list of all dotfiles in the dotfiles directory  
  ![image of updating makesymlinks.sh files variable](https://github.com/matt-heindel/dotfiles/blob/main/images/updatesymlinks.png)  
  Remember in vim pressing `i` enters insert mode
1. Close and save with `Esc` then `:wq`
1. `git push`

## References
- The Smalley Creative Blog  
[Using Git and Github to Manage Your Dotfiles](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/)
