cd $HOME

mkdir -p .installs
mkdir -p .fonts

# Get some nerd font, e.g.
# https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/UbuntuMono/Regular/complete/Ubuntu%20Mono%20Nerd%20Font%20Complete.ttf
# https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/SourceCodePro/Regular/complete/Sauce%20Code%20Pro%20Nerd%20Font%20Complete.t
# Copy to ~/.fonts
wget -P .fonts https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/SourceCodePro/Regular/complete/Sauce%20Code%20Pro%20Nerd%20Font%20Complete.t
fc-cache -fv

# Install fish shell, preferrably using apt
# sudo dpkg -i fish*.deb
sudo apt install fish

# Install oh-my-fish
curl -L https://get.oh-my.fish | fish

# Install bobthefish theme
omf install bobthefish

# Install bass for sourcing bash environments
omf install bass

# Install the nord Gnome terminal theme
sudo apt install dconf-tools dconf-gsettings-backend dconf-cli dconf-service uuid-runtime

cd .installs
git clone https://github.com/arcticicestudio/nord-gnome-terminal.git
cd nord-gnome-terminal/src
./nord.sh
cd $HOME

# TODO: now you need to go the the settings and set the Nord profile as the default

# Set fish as the default shell
chsh -s /usr/bin/fish

# This might cause problems and will therefor run last
git clone --bare https://github.com/nilsbore/dotfiles.git $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
dotfiles checkout master

