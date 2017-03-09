#!/bin/bash
# 
# this script will install ZSH and GIT-CORE with apt-get
# and run the install script of oh-my-zsh 
# and finally change the default shell to ZSH 
#
# it has to reboot in order to apply it all

echo "this will install ZSH and change the default shell to ZSH";

echo "continue? sudo-me you will";

read -r -s;

sudo -v
echo "[OK] sudo-me";

apt-get install zsh
echo "[OK] apt-get install zsh";

apt-get install git-core
echo "[OK] apt-get install git-core";

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
echo "[OK] oh-my-zsh wget";
echo "[OK] oh-my-zsh installed";

chsh -s `which zsh`
echo "[OK] shell changed";


echo "reboot is needed to apply all changes ";
echo "abort this to prevent the reboot";

read -r -s;

echo "reboot on going";
sudo shutdown -r 0


#EOF
