#Auto Configuration of Developing Environment
echo "[I] Preprocessing Installation Begines."
echo "[I] Installing Homebrew."
xcode-select —-install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"code-select —-install
echo "[I] Installing glances"
brew install glances
echo "[I] Installing iTerm2"
brew cask install iterm2

####################Hyper Config Begin Here######################
echo "[I] Hyper Config Begin!"

################ZSH####################
echo "[I] Zshell+Oh-My-Zsh Configuration Started."
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "[I] zsh installed:"
zsh --version
echo "[I] Migrating .zshrc"
cp ./zsh/.zshrc $HOME/.zshrc
source $HOME/.zshrc
echo "[I] Zsh Configuration Finished."
##############TMUX#####################
echo "[I] Tmux Config Started."
brew install tmux
git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack
echo '[I] Tmux Config Finished.'
##############ANACONDA#################
echo "[I] Downloading Anaconda Installer Script."
wget https://repo.anaconda.com/archive/Anaconda3-2019.03-MacOSX-x86_64.sh >> conda_install.sh
echo "[I] Installing Anaconda"
sh conda_install.sh
echo "[I] Anaconda Installation Finished."
##############SPACEMACS################
echo "[I] Spacemacs Configuration Started."
echo "[I] Installing emacs-plus."
brew tap d12frosted/emacs-plus
brew install emacs-plus
brew linkapps emacs-plus
echo "[I] Cloning spacemacs repo from Github."
git clone https://github.com/syl20bnr/spacemacs $HOME/.emacs.d
echo "[I] Migrating configure file for Spacemacs."
cp ./spacemacs/.spacemacs $HOME/.spacemacs
echo "[I] Spacemacs Configuration Finished."


echo "[I] Hyper Config Finished.\n [I] Enjoy!"
