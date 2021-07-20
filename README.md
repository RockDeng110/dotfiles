# dotfiles
my vim configurations

### How to implement this rope

#### 1. git clone this repo in your local machine
```sh
cd
git clone https://github.com/RockDeng110/dotfiles.git
```

#### 2. make symbol link to .vim and .vimrc
```sh
cd
ln -s dotfiles/vimrc .vimrc
ln -s dotfiles/vim .vim
```

#### 3. Install plugins
> ##### 3.1 run vim
> ##### 3.2 press : in vim and then input commands below
>> :PlugInstall


### reference materials
#### 1. one of best tutorials: https://thoughtbot.com/upcase/videos/onramp-to-vim-surviving-your-first-week

#### 2. reload .vimrc file
        :so %
        :so $MYVIMRC
            :so is short for :source


