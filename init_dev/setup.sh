#!/bin/sh

# setup vi
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# setup .oh_my_zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "exec zsh" >> ~/.bash_profile

# setup pyenv
PYENV_HOME="${HOME}/.pyenv"
git clone https://github.com/yyuu/pyenv.git ${PYENV_HOME}
echo "export PYENV_HOME=\"${PYENV_HOME}\"" | sudo tee -a /etc/profile
echo 'export PATH="$PYENV_HOME/bin:$PATH"' | sudo tee -a /etc/profile
echo 'eval "$(pyenv init -)"' | sudo tee -a /etc/profile
exec $SHELL

# setup python env
py2='2.7.10'
pyenv install $py2
pyenv global $py2
## you need to rehash 
pyenv rehash
sudo easy_install pip
pip install -U pip


