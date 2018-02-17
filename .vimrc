if &diff
  execute pathogen#infect()
  colorscheme desert
  set number
  nnoremap <silent> <c-x> :qa<CR>
 
  " Use CTRL-S for saving, also in Insert mode
  noremap <C-s>		:update<CR>
  vnoremap <C-s>		<C-C>:update<CR>
  inoremap <C-s>		<ESC>:update<CR>
else
  set noswapfile
  execute pathogen#infect()
  let g:mapleader=","
  syntax on
  filetype plugin indent on
  let g:rehash256 = 1
  hi normal ctermfg=none ctermbg=none
  colorscheme monokai 



  "Tab settings
  set tabstop=2 shiftwidth=2 expandtab 

  " MiniBuferExplorer
  nnoremap <silent> <tab> :MBEbn<CR>
  nnoremap <silent> <s-tab> :MBEbp<CR>
  nnoremap <silent> <c-x> :q<CR>
  nnoremap <silent> <s-x>  :bp<bar>sp<bar>bn<bar>bd<CR>
  autocmd VimEnter * :MBEOpen
  hi MBEVisibleActiveNormal ctermfg=green ctermbg=235
  hi MBEVisibleActiveChanged ctermfg=yellow ctermbg=235
  hi MBEChanged ctermfg=red ctermbg=0
  hi MBEVisibleChanged ctermfg=red ctermbg=235
  hi MBENormal ctermfg=gray ctermbg=0
  hi MBEVisibleNormal ctermfg=lightgray ctermbg=235

  " NerdTree
  autocmd vimenter * NERDTree
  map <C-o> :NERDTreeToggle<CR>
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
  let g:NERDTreeMapOpenSplit="s"
  let g:NERDTreeMapOpenVSplit="v"
  let g:NERDTreeDirArrows=0
  let g:NERDTreeMinimalUI=1

  " Use CTRL-S for saving, also in Insert mode
  noremap <C-s>		:update<CR>
  vnoremap <C-s>		<C-C>:update<CR>
  inoremap <C-s>		<ESC>:update<CR>

  " CTRL-Z is Undo, and CTRL-Y Redo; not in cmdline though
  inoremap <C-Z> <C-O>u
  noremap <C-Y> <C-R>
  inoremap <C-Y> <C-O><C-R>

  " CTRL-A is Select all
  noremap <C-A> <S-V><S-G><C-R>
  inoremap <C-A> <S-V><S-G><C-R>

  " Enable mouse
  set mouse+=a
  if &term =~ '^screen'
    set ttymouse=xterm2
  endif

  " Move between windows
  :nmap <silent> <C-h> :wincmd h<CR>
  :nmap <silent> <C-j> :wincmd j<CR>
  :nmap <silent> <C-k> :wincmd k<CR>
  :nmap <silent> <C-l> :wincmd l<CR>

  :set fillchars=vert:│  

  " Collapse comments
  " set fdm=expr
  " set fde=getline(v:lnum)=~'^\\s#'?1:getline(prevnonblank(v:lnum))=~'^\\s#'?1:getline(nextnonblank(v:lnum))=~'^\\s*#'?1:0

endif
