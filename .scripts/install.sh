cd $HOME

# Create some new directories
mkdir -p .installs
mkdir -p .fonts

# Get some nerd nerd font
wget -P .fonts https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/SourceCodePro/Regular/complete/Sauce%20Code%20Pro%20Nerd%20Font%20Complete.ttf
fc-cache -fv

# Install oh-my-fish
curl -L https://get.oh-my.fish | fish

# Install bobthefish theme
fish --command 'omf install bobthefish'

# Install bass for sourcing bash environments
fish --command 'omf install bass'

# Download the gnome-terminal nord theme
cd .installs
git clone https://github.com/arcticicestudio/nord-gnome-terminal.git
cd nord-gnome-terminal/src
./nord.sh
cd $HOME

# Set up vundle for vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Setup dotfiles as a git repo that tracks $HOME
# This might cause problems and will therefor run last
git clone --bare https://github.com/nilsbore/dotfiles.git $HOME/.dotfiles
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME config --local status.showUntrackedFiles no
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout master
