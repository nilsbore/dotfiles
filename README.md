# dotfiles
Configs for vim, tmux, fish and gnome-terminal.

## 1. Install the necessary packages

The below command uses apt for everything. If you would
like to install newer versions for some of the packages,
install them separately and omit then from the command.
```
sudo apt install vim fish tmux dconf-tools dconf-gsettings-backend dconf-cli dconf-service uuid-runtime
```

## 2. Install configuration

The below file gets and sets up the dotfiles directory
in `$HOME/.dotfiles` and puts `$HOME` under version control.
Use the alias `dotfiles` as you would otherwise use `git` afterwards.
Intalls configurations for `vim`, `tmux`, `fish` and `gnome-terminal`.
```
curl https://raw.githubusercontent.com/nilsbore/dotfiles/master/.scripts/install.sh | bash
```

## 3. Update gnome-terminal theme

Go to gnome terminal settings and switch to the "Nord" profile
as the default. In the Nord profile's configuration, switch
to the `SauceCodePro Nerd Font Regular 12` font. If you would
like to use another font, you need to use a nerd-patched font,
e.g. from [the nerd fonts repo](https://github.com/ryanoasis/nerd-fonts).

## 4. Switch to fish shell

Use the below command to switch from e.g. `bash` to `fish`.
Log out and in again for the change to take effect.
```
chsh -s /usr/bin/fish
```

## 5. Activate vim plugins

Open `vim`, type `:PluginInstall` and press `Enter`.
This will install all `Vundle` plugins.
If you would like `YouCompleteMe` type completion,
execute the `.scripts/install_ycm.sh` script,
and restart `vim`.

## 6. Activate tmux plugins

Open `tmux` and press `ctrl+B` and then `I`.
This will install plugins using `tpm`.
