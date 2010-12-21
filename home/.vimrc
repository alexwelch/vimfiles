
" Disable vi compatibility
set nocompatible

" Use Pathogen to load bundles
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype on
filetype plugin indent on


" Preferences
" -----------------------------------------------------------------------------
set modelines=0
set encoding=utf-8
set scrolloff=3
set sidescrolloff=3
set autoindent
set smartindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set noerrorbells
set novisualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set number
set title
set laststatus=2
set splitbelow splitright
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set nowrap
set list
set listchars=tab:▸\ ,eol:¬,trail:·
set foldlevelstart=0
set foldmethod=marker
set formatoptions=tcq

" Backups
set history=1000
set undolevels=1000
set nobackup
set directory=~/.vim/tmp/swap/

" Searching
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
set gdefault
set grepprg=ack
runtime macros/matchit.vim

let mapleader = ','

command! -nargs=* Wrap set wrap linebreak nolist


" Plugin configurations
" -----------------------------------------------------------------------------
let NERDSpaceDelims=1
let NERDTreeIgnore=['.DS_Store']
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:CommandTMaxHeight=20

" Popup menu behavior
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Override snipmate and set it's triggers to use control space
let g:snippets_dir = $HOME.'/.vim/snippets/'
ino <silent> <c-space> <c-r>=TriggerSnippet()<cr>
snor <silent> <c-space> <esc>i<right><c-r>=TriggerSnippet()<cr>
ino <silent> <s-c-space> <c-r>=BackwardsSnippet()<cr>
snor <silent> <s-c-space> <esc>i<right><c-r>=BackwardsSnippet()<cr>

" Re-enable the default mappings for super tab
let g:SuperTabLongestHighlight=1
let g:SuperTabMappingForward = '<tab>'
let g:SuperTabMappingBackward = '<s-tab>'
let g:SuperTabMappingTabLiteral = '<c-tab>'

" Key mapping
" -----------------------------------------------------------------------------
nnoremap j gj
nnoremap k gk
nnoremap ; :
inoremap jj <ESC>
inoremap jk <Esc>

" Move between splits
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Block movement
nmap <tab> %
vmap <tab> %

" Insert/append a single character
nmap ,, i_<esc>r
nmap ;; a_<esc>r

" Folding
nnoremap <Space> za
vnoremap <Space> za

" Clear the search highlight
map <silent> \ :silent nohlsearch<cr>

" <F1> toggles fullscreen
map <F2> :NERDTreeToggle<cr>
nnoremap <silent> <F3> :TlistToggle<cr>
nnoremap <silent> <F4> :YRShow<cr>
ino <silent> <F5> <c-r>=ShowAvailableSnips()<cr>
" <F10>-<F12> is reserved for .vimrc.local

" Bubble single lines (requires unimpaired.vim)
nmap <C-Up> [e
nmap <C-Down> ]e

" Bubble multiple lines (requires unimpaired.vim)
vmap <C-Up> [egv
vmap <C-Down> ]egv


" Leader mapping
" -----------------------------------------------------------------------------
map <leader>a :Ack

" Toggle wrapping in the current buffer
nmap <silent> <leader>wt :set wrap!<cr>

" Edit .vimrc and .vimrc.local
nmap <leader>evm <C-w><C-v><C-l>:e $MYVIMRC<cr>
nmap <leader>evl <C-w><C-v><C-l>:e ~/.vimrc.local<cr>

" Collapse all multi-line occurrences of whitespace into one line
map <leader>CN :%s/^\n\+/\r//<cr>:let @/=''<cr>

" Clean whitespace
map <leader>CW :%s/\s\+$//<cr>:let @/=''<cr>

" Retab My Authority.
map <silent><leader>CT :retab<cr>

" Open current buffer in a new split
map <leader>s <C-w>v<C-w>l

" Toggle spelling hints
nmap <silent> <leader>ts :set spell!<cr>

" Reload ctags
map <leader>rt :!ctags --extra=+f -R *<cr><cr>

" Command T
map <leader>t :CommandT<cr>
map <leader>ft :CommandTFlush<cr>

" Git bindings
map <leader>gs :Gstatus<CR>

" File type utility settings
" -----------------------------------------------------------------------------

" Turn wrapping on for text based languages (markdown, txt...)
function! s:setWrapping()
  setlocal wrap linebreak nolist spell
endfunction

" Enable browser refreshing on web languages
function! s:setBrowserEnv()
  if has('gui_macvim')
    map <silent><leader>r :RRB<cr>
  endif
endfunction

" Sort CSS selectors and allow for browser refresh
function! s:setCSS()
  map <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:let @/=''<cr>
  call s:setBrowserEnv()
endfunction

" Setup specific options for markdown
function! s:setMarkdown()
  call s:setWrapping()
  call s:setBrowserEnv()
  if has('gui_running')
    au! BufWritePost *.md,*.markdown,*.mkd :MDP
  endif
endfunction

" Commands for vim-rails
function! s:setRails()
  map <leader>c :Rcontroller
  map <leader>vc :RVcontroller
  map <leader>sc :RScontroller
  map <leader>vf :RVfunctional
  map <leader>sf :RSfunctional
  map <leader>m :Rmodel
  map <leader>vm :RVmodel
  map <leader>sm :RSmodel
  map <leader>u :Runittest
  map <leader>vu :RVunittest
  map <leader>su :RSunittest
  map <leader>vv :RVview
  map <leader>sv :RSview
  map <leader>A  :A<cr>
  map <leader>av :AV<cr>
  map <leader>as :AS<cr>
  map <leader>aa :R<cr>
endfunction


" File handling and settings
" -----------------------------------------------------------------------------

" Reload .vimrc after it or vimrc.local been saved
au! BufWritePost .vimrc source %
au! BufWritePost .vimrc.local source ~/.vimrc

" File type settings on load
au BufRead,BufNewFile *.scss set filetype=scss
au BufRead,BufNewFile *.m*down set filetype=markdown
au BufRead,BufNewFile *.as set filetype=actionscript
au BufRead,BufNewFile *.json set filetype=json

" Make and Python use real tabs
au FileType make set noexpandtab
au FileType python set noexpandtab

" Call the file type utility methods
autocmd BufRead,BufNewFile *.txt call s:setWrapping()
autocmd BufRead,BufNewFile *.md,*.markdown,*.mkd call s:setMarkdown()
autocmd BufRead,BufNewFile *.css,*.scss call s:setCSS()
autocmd BufRead,BufNewFile *.html,*.js,*.haml,*.erb call s:setBrowserEnv()
autocmd User Rails call s:setRails()

" Reload all snippets when creating new ones.
au! BufWritePost *.snippets call ReloadAllSnippets()

" Enable autosave
au FocusLost * :wa


" Themes and GUI settings
" -----------------------------------------------------------------------------
syntax on
set background=dark
colorscheme colorblind


" GUI specific settings (could be in .gvimrc)
" -----------------------------------------------------------------------------
if has('gui_running')
  set guifont=Menlo:h12
  set go-=T
  set go-=l
  set go-=L
  set go-=r
  set go-=R
  if has('gui_macvim')
    macmenu &File.New\ Tab key=<nop>
    map <D-t> :CommandT<cr>
    set fuoptions=maxhorz,maxvert
    inoremap <F1> <ESC>:set invfullscreen<CR>
    nnoremap <F1> :set invfullscreen<CR>
    vnoremap <F1> :set invfullscreen<CR>
  end
endif

" Set the title bar to something meaningful
if has('title') && (has('gui_running') || &title)
  set titlestring=
  set titlestring+=%f\                                             " file name
  set titlestring+=%h%m%r%w                                        " flags
  set titlestring+=\ -\ %{v:progname}                              " program name
  set titlestring+=\ -\ %{substitute(getcwd(),\ $HOME,\ '~',\ '')} " working directory
endif


" !- See the statusline plugin for status line settings...

" Load up the user's local .vimrc config
" -----------------------------------------------------------------------------
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

