" Use the space key as our leader. Put this near the top of your vimrc
let mapleader = "\<Space>"
" Split edit your vimrc. Type space, v, r in sequence to trigger
nmap <leader>vr :sp $MYVIMRC<cr>
" Source (reload) your vimrc. Type space, s, o in sequence to trigger
nmap <leader>so :source $MYVIMRC<cr>


imap jk <esc>
imap kj <esc>
" imap <C-s> <esc>:w<cr>


" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gb18030
set autoindent  " use indentation of previous line
set smartindent  " use intelligent indentation for C
set scrolloff=10  " keep at least 4 lines below cursor
set comments=sl:/*,mb:\ *,elx:\ */  " intelligent comments
set number  " turn line numbers on
set showmatch  " highlight matching braces
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120
" turn syntax highlighting on
set t_Co=256
syntax on
" colorscheme wombat256
" enable Omni completion
" set omnifunc=syntaxcomplete#Complete

" two lines below is for enable smartcase
set ignorecase
set smartcase


" 80 characters line, as kernel coding requires that you should keep your lines length at 80 characters max
" set colorcolumn=81
"execute "set colorcolumn=" . join(range(81,335), ',')
" highlight ColorColumn ctermbg=Black ctermfg=DarkRed

" Highlight trailing spaces
" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
" highlight ExtraWhitespace ctermbg=red guibg=red
" match ExtraWhitespace /\s\+$/
" autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
" autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
" autocmd InsertLeave * match ExtraWhitespace /\s\+$/
" autocmd BufWinLeave * call clearmatches()



" Minamal configuration for vim8
set nocompatible  " Don't maintain compatibility with vi
filetype plugin  indent on




"keep cursor in the middle all the time :)
" nnoremap k kzz
" nnoremap j jzz
" nnoremap p pzz
" nnoremap P Pzz
" nnoremap G Gzz
" nnoremap x xzz
" inoremap <ESC> <ESC>zz
" nnoremap <ENTER> <ENTER>zz
" inoremap <ENTER> <ENTER><ESC>zzi
" nnoremap o o<ESC>zza
" nnoremap O O<ESC>zza
" nnoremap a a<ESC>zza
nmap <leader>h <C-w>h
nmap <leader>j <C-w>j
nmap <leader>k <C-w>k
nmap <leader>l <C-w>l



" copy from and paste to the system clipboard
" Refer to https://superuser.com/questions/1559544/how-to-copy-from-vim-to-clipboard-on-ubuntu-20-04
" If the clipboard is not active in vim, install vim-gtk3 or gvim.
noremap <leader>y "+y
noremap <leader>p "+p





" Doxygen configurations
let g:DoxygenToolkit_briefTag_pre="@Breif "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns"
" let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
" let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="Rock Deng"
let g:DoxygenToolkit_licenseTag="My own license"

map <F6> :Dox<CR>




" map <F2> <ESC>:w<CR>i

" switch between header/source with F4
" map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>





" Open and close all the three plugins on the same time
" nmap <F8> :TrinityToggleAll<CR>
" Open and close the Source Explorer separately
" nmap <F9>  :TrinityToggleSourceExplorer<CR>
" Open and close the Taglist separately
" nmap <F10> :TrinityToggleTagList<CR>
" Open and close the NERD Tree separately
" nmap <F11> :TrinityToggleNERDTree<CR>




" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
" Declare the list of plugins.
Plug 'dr-kino/cscope-maps'                   " for cscope 
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'                 " seoul256.vim is a low-contrast Vim color scheme based on Seoul Colors.
Plug 'vim-scripts/ctags.vim'                 " for ctags
Plug 'majutsushi/tagbar'                     " The tagbar which shows all the tags in your current file 
Plug 'vim-airline/vim-airline'               " There will be a nice statusline at the bottom of each vim window.
Plug 'vim-airline/vim-airline-themes'        " For set up airline themes
Plug 'preservim/nerdtree'                    " Directory tree
Plug 'ctrlpvim/ctrlp.vim'                        " don't remember it
Plug 'vim-scripts/DoxygenToolkit.vim'        " For doxygen style comment
" plug 'vim-syntastic/syntastic'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()


" airline
let g:airline#extensions#tagbar#flags = 'f'  " show full tag hierarchy
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline#extensions#tabline#fnamemod = ':t' " Show just the filename
let g:airline#extensions#tabline#buffer_idx_mode = 1

let g:airline#extensions#tabline#formatter = 'default'  " f/p/file-name.js
" let g:airline#extensions#tabline#formatter = 'jsformatter' " path-to/f
" let g:airline#extensions#tabline#formatter = 'unique_tail' " file-name.js
" let g:airline#extensions#tabline#formatter = 'unique_tail_improved' " f/p/file-name.js

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

" the separator used on the left side
" let g:airline_left_sep=''
" the separator used on the right side
" let g:airline_right_sep=''

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>0 <Plug>AirlineSelectTab0
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

" NerdTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" tagbar
nmap <F8> :TagbarToggle<CR>
nmap <leader>tg :TagbarToggle<CR>

set nocscopeverbose
let g:airline_theme='simple'

" ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

