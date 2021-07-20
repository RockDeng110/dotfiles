# dotfiles
my vim configurations


### reference materials
#### 1. one of best tutorials: https://thoughtbot.com/upcase/videos/onramp-to-vim-surviving-your-first-week

#### 2. reload .vimrc file
        :so %
        :so $MYVIMRC
            :so is short for :source

#### 3. add plugins
          Because ~/.vim is one of the default runtimepath of vim, we can just put plugins/scripts under ~/.vim/plugin


### How to implement this rope

#### 1. git clone this repo in your local machine

#### 2. sudo apt install ctags cscope

#### 3. make symbol link to .vim and .vimrc

```sh
cd
ln -s dotfiles/vimrc .vimrc
ls -s dotfiles/vim .vim
```
