set shell=/bin/sh
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
  Plugin 'gmarik/Vundle.vim'
  Plugin 'scrooloose/nerdtree.git'
  Plugin 'kien/ctrlp.vim'
  Plugin 'easymotion/vim-easymotion'
  Plugin 'tpope/vim-rails'
  Plugin 'scrooloose/syntastic'
  Plugin 'kchmck/vim-coffee-script'
  Plugin 'airblade/vim-gitgutter'
  Plugin 'skalnik/vim-vroom'
  Plugin 'dag/vim-fish'
  Plugin 'ntpeters/vim-better-whitespace'
call vundle#end()

filetype plugin indent on

syntax enable
set tabstop=2
set shiftwidth=2
set smartindent
set expandtab
set cindent
set nu
ino jj <esc>
cno jj <c-c>
vno v <esc>
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
map <F7> :tabp<CR>
map <F8> :tabn<CR>
set ic
let g:ctrlp_map = '<c-p>'

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

map <C-n> :NERDTreeToggle<CR>

" CTRL-P settings

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_working_path_mode = 'ra'

let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

" F5 to open syntax error drawer, F6 to close
map <F5> :lopen<CR>
map <F6> :lclose<CR>

" Highlight all occurences of a word
set hlsearch 
" Space to remove highlights
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" vim-vroom settings
nnoremap <leader>t :call vroom#RunTestFile()<CR>
nnoremap <leader>T :call vroom#RunNearestTest()<CR>

