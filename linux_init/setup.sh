#!/bin/sh
# 初始化开发环境脚本
# setup vi
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# setup .oh_my_zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "exec zsh" >> ~/.bash_profile

# setup pyenv
PYENV_HOME="${HOME}/.pyenv"
git clone https://github.com/yyuu/pyenv.git ${PYENV_HOME}
echo "export PYENV_HOME=\"${PYENV_HOME}\"" >> ~/.zshrc
echo 'export PATH="$PYENV_HOME/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
exec $SHELL

# setup python env
<<<<<<< HEAD:init_dev/setup.sh
py2='2.7.10' 
pyenv install $py2
pyenv global $py2
=======
#py2='2.7.10'
py='3.9.0'
pyenv install $py
pyenv global $py
>>>>>>> 5591935... 更新一些环境初始选择的版本号, 整理目录:linux_init/setup.sh
## you need to rehash 
pyenv rehash
sudo easy_install pip
pip install -U pip


