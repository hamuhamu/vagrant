sudo yum -y install httpd
sudo yum -y install php
sudo yum -y install mysql
sudo yum -y install mysql-server
sudo yum -y install vim
sudo yum -y install crontabs
git clone https://github.com/hamuhamu/dotfiles.git ~/
sudo yum -y install zsh
chsh /bin/zsh
sudo yum install -y ncurses ncurses-devel
mkdir -p ~/bin
sudo yum install -y wget
wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2
mv ~/vim-7.4.tar.bz2 ~/bin/vim-7.4.tar.bz2
cd ~/bin
tar jxvf vim-7.4.tar.bz2
cd vim74
./configure --enable-multibyte --with-features=big --prefix=$HOME/local
make
make install
ln -sf ${HOME}/bin/vim74/src/vim ~/bin/vim
sudo yum remove -y vim
