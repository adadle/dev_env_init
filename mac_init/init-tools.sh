#!/bin/bash

#
#该脚本用来初始化Mac安装后用于OS X系统的一些命令，如wget、tree、pstree等
#

svr_home='/apps/svr'
brew_home=${svr_home}/homebrew
mkdir -p ${svr_home}

curl -LsSf http://github.com/mxcl/homebrew/tarball/master | sudo tar xvz -C$svr_home} --strip 1

mv Homebrew-homebrew-900cfbd/ homebrew

cd ${brew_home}

./brew install wget
./brew install tree
./brew install pstree
./brew install unrar

