syntax on
set number relativenumber
set cursorline
set gfn=Fira_Code_Retina_Nerd_h13

set noerrorbells
set expandtab
set tabstop=2 softtabstop=2 
set shiftwidth=2
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set undodir=~/.vim/undodir
set undofile

set encoding=UTF-8

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox' 
Plug 'flazz/vim-colorschemes'
Plug 'itchyny/lightline.vim', {'do': { -> coc#util#install() }}
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'neoclide/coc.nvim'
Plug 'mbbill/undotree'
Plug 'sheerun/vim-polyglot'
Plug 'lyuts/vim-rtags'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdcommenter'
Plug 'vim-syntastic/syntastic'
Plug 'puremourning/vimspector'
Plug 'jiangmiao/auto-pairs'

"javascript html
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'alvan/vim-closetag'

"snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"icons
Plug 'ryanoasis/vim-devicons'

"firenvim
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

"arduino
Plug 'sudar/vim-arduino-syntax'
Plug 'sudar/vim-arduino-snippets'


call plug#end()

" --------- Plugins configuration ----------

" configuration
if executable('rg')
	  let g:rg_derive_root='true'
  endif

  let mapleader = " "

  let g:netrw_browse_split = 2
  let g:netrw_banner = 0
  let g:netrw_winsize = 25

  "  color scheme
  let g:gruvbox_contrast_dark = 'hard'
  colorscheme gruvbox
  set background=dark
  highlight Comment cterm=italic

  "  bottom bar
  set laststatus=2
  let g:lightline = {'colorscheme': 'gruvbox',}
   
 
 " html Plug
  let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
  let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
  let g:closetag_filetypes = 'html,xhtml,phtml,jsx,javascript'
  let g:closetag_xhtml_filetypes = 'xhtml,jsx'
  let g:closetag_emptyTags_caseSensitive = 1
  let g:closetag_regions = {
      \ 'typescript.tsx': 'jsxRegion,tsxRegion',
      \ 'javascript.jsx': 'jsxRegion',
      \ }
  let g:closetag_shortcut = '>'
  let g:closetag_close_shortcut = '<leader>>'

  
  " ultisnips
  let g:UltiSnipsExpandTrigger = '<f5>' 
  "set filetype arduino
  au BufRead,BufNewFile *.pde set filetype=arduino
  au BufRead,BufNewFile *.ino set filetype=arduino

  " --------- Key configuration ----------
  source $HOME/.config/nvim/plug-config/coc.vim
  source $HOME/.config/nvim/plug-config/airline.vim

  nnoremap <leader>h :wincmd h<CR>
  nnoremap <leader>j :wincmd j<CR>
  nnoremap <leader>k :wincmd k<CR>
  nnoremap <leader>l :wincmd l<CR>
  nnoremap <leader>u :UndotreeShow<CR>
  nnoremap <Leader>ps :Rg<SPACE>
  nnoremap <silent> <Leader>+ :vertical resize +5<CR>
  nnoremap <silent> <Leader>- :vertical resize -5<CR>
  nnoremap <Leader>p :Files<CR>
  nnoremap <silent> <C-l> :nohl<CR><C-l>
  let g:lsc_auto_map = v:true


  inoremap <C-l> <C-t> 
  inoremap <C-h> <C-d> 

  "move lines
  nnoremap <A-k> :m .-2<CR>==
  nnoremap <A-j> :m .+1<CR>==

  "copy on clipboard
  noremap <C-c> "+yy"

