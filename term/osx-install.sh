# Install git to get this up and running

# Install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install workspace
mkdir -p ~/Workspace/github.com/eastwood
mkdir -p ~/Workspace/nib.com.au/cryan

# Brew install
brew install tmux
brew install python3
brew install ruby
brew install reattach-to-user-namespace
brew install tmuxinator

# Install config
cd ~/Workspace/github.com/eastwood/
git clone https://github.com/eastwood/config
cd config
git submodule update --init
git submodule sync
cd ~

# Install tmux
ln -s ~/Workspace/github.com/eastwood/config/term/tmuxinator ~/.tmuxinator
ln -s ~/Workspace/github.com/eastwood/config/term/tmux.conf ~/.tmux.conf
ln -s ~/Workspace/github.com/eastwood/config/term ~/.config/term/

# Install nvim
mkdir -p ~/.config/nvim
brew install neovim/neovim/neovim
pip3 install --index-url=http://pypi.python.org/simple/ --trusted-host pypi.python.org neovim
ln -s ~/Workspace/github.com/eastwood/config/vimfiles/init.vim ~/.config/nvim/init.vim
ln -s ~/Workspace/github.com/eastwood/config/vimfiles/autoload ~/.config/nvim/autoload

# Install node.js
brew install node
npm config set strict-ssl false

# Install git bash
ln -s ~/Workspace/github.com/eastwood/config/term/profile ~/.bash_profile

# Install vagrant
brew cask install virtualbox
brew cask install vagrant
brew cask install vagrant-manager

# Install dropbox
# Install slack
# Install visual studio code
