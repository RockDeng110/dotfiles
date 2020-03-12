





" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible
" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
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
" turn line numbers on
set number
" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */



" enable Omni completion
filetype plugin on
set omnifunc=syntaxcomplete#Complete







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



