# vimrc something I like

## setup
### 
```sh
# Ubuntu 22.04.2
apt-get install exuberant-ctags

git clone https://github.com/binzhikuwen/vimrc.git
cd vimrc
git submodule update --init --remote .vim/bundle/Vundle.vim

cp .vimrc ~/.vimrc
mkdir -p ~/.vim/bundle && cp -r .vim/bundle/Vundle.vim/  ~/.vim/bundle

# enter vim
vim
    :BundleInstall
    :q
```