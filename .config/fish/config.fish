set -g theme_nerd_fonts yes
set -g theme_color_scheme terminal-dark
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

set --export PATH $HOME/.local/bin $HOME/.cargo/bin $PATH
set --export COLORTERM truecolor

# if ros support is desired
# bass source /opt/ros/melodic/setup.bash
# source /opt/ros/melodic/share/rosbash/rosfish
