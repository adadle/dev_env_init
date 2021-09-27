#!/bin/sh
# 初始化开发环境脚本
# setup vi
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# setup .oh_my_zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "exec zsh" >> ~/.bash_profile

# 详细参考:
# https://zhuanlan.zhihu.com/p/31194682
# setup pyenv
PYENV_HOME="${HOME}/.pyenv"
git clone https://github.com/yyuu/pyenv.git ${PYENV_HOME}
echo "export PYENV_HOME=\"${PYENV_HOME}\"" >> ~/.zshrc
echo 'export PATH="$PYENV_HOME/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
exec $SHELL

# setup python env
#py2='2.7.10'
py='3.9.0'
pyenv install $py
pyenv global $py
## you need to rehash 
pyenv rehash
sudo easy_install pip
pip install -U pip


