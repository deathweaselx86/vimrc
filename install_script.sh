#!/bin/bash
# OS X only for now - last tested with macOS Big Sur
set -eux pipefail

VIM_GIT_CLONE_DIR=`pwd`/.vim/pack/plugins/start

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# install rust
curl https://sh.rustup.rs -sSf | sh


# install some shit that's nice
brew install wget curl vim exercism ag bash bash-completion git gnu-sed gnu-tar gnu-which gnu-indent jq lastpass-cli readline docker zsh-completions fzf pyenv || true

# make sure that brew vim is linked properly
brew link vim

# install oh-my-zsh
# feels bad man to directly curl this
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install vim stuff
# vim 8 only :sparkles:

mkdir -p $VIM_GIT_CLONE_DIR
git clone https://github.com/fatih/vim-go.git $VIM_GIT_CLONE_DIR/vim-go


git clone https://github.com/junegunn/fzf.git $VIM_GIT_CLONE_DIR/fzf
git clone https://github.com/scrooloose/nerdtree.git $VIM_GIT_CLONE_DIR/nerdtree
git clone https://github.com/vim-ruby/vim-ruby $VIM_GIT_CLONE_DIR/vim-ruby
git clone https://github.com/plasticboy/vim-markdown $VIM_GIT_CLONE_DIR/vim-markdown
git clone --recursive https://github.com/davidhalter/jedi-vim.git $VIM_GIT_CLONE_DIR/jedi-vim
git clone --depth 1 https://github.com/sheerun/vim-polyglot $VIM_GIT_CLONE_DIR/vim-polyglot
git clone https://github.com/vim-scripts/c.vim $VIM_GIT_CLONE_DIR/c.vim
