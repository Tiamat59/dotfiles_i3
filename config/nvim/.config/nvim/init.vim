
:set number
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')
" test
" Declare the list of plugins.
"Plug 'tpope/vim-sensible'
"Plug 'junegunn/seoul256.vim'
Plug 'itchyny/lightline.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

colorscheme nord
map <C-o> :NERDTreeToggle<CR>
