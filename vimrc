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





" Doxygen configurations
let g:DoxygenToolkit_briefTag_pre="@Breif "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
" let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
" let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="Rock Deng"
let g:DoxygenToolkit_licenseTag="My own license"
 
map <F6> :Dox<CR>
 



" map <F2> <ESC>:w<CR>i

" switch between header/source with F4
" map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>





" Open and close all the three plugins on the same time
nmap <F8> :TrinityToggleAll<CR>
" Open and close the Source Explorer separately
nmap <F9>  :TrinityToggleSourceExplorer<CR>
" Open and close the Taglist separately
nmap <F10> :TrinityToggleTagList<CR>
" Open and close the NERD Tree separately
nmap <F11> :TrinityToggleNERDTree<CR>



