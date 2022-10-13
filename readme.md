<h1 align="center"><code>~/.dotfiles</code></h1>
<p align="center"><i>My dotfiles for configuring ZSH and XDG-base-dir</i></p>

# What are `.dotfiles`
One of the key draws of Linux, other than getting away from proprietary software, is its customizability of it. Most of the time you do this inside a hidden file, and within Linux, these files start with a `.`. Typically these files are stored in `~/`, but thanks to the XDG initiative they have slowly begun to migrate into the `.config/`. This repo doesn't cover my entire system, only the ones which I would want to easily be able to install on a new system.

# How to install
Thanks to [dot bot](https://github.com/anishathalye/dotbot/tree/4ec846cdad4c5f6996523e7015f0b36a6b40e9f6) installing these is stupidly easy. You do it in three lines

```sh
git clone git@github.com:eddiebquinn/dotfiles.git --recurse-submodules
cd dotfiles
./install
```