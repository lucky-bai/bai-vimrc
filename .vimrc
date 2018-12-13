" Start GUI maximized.
au GUIEnter * simalt ~x

" Import default settings.
source $VIMRUNTIME/mswin.vim

" Copied from default vim file.
set nocompatible
set history=50
set ruler
set showcmd	
set incsearch
map Q gq
set mouse=nvi
set hlsearch

" (for searching)
set ignorecase

" Don't create annoying backups.
set nobackup
set noswapfile

" Line numbers on
set nu

" Enter to indent to previous
set autoindent

" Load automatically when file is changed externally
set autoread

set gfn=Inconsolata:h14

" Infinite history.
set history=1000

" Disable all beeps and flashing
set noeb vb t_vb=
au GUIEnter * set vb t_vb=

" If we are in GVIM, set colorscheme.
syntax on
if has("gui_running")
  colorscheme gruvbox
  set background=dark
  set lines=999
  set columns=999
endif

" Default directory
" cd C:\Users\Bai\Desktop\

" F4 = :noh
noremap <F4> :noh<CR>

" Blinking off.
set gcr=a:blinkon0

" Hidden buffers are abandoned.
set hidden

" Change directories automatically
set autochdir

" Tabs
com! TAB2 :set ts=2 sw=2 sts=2
com! TAB4 :set ts=4 sw=4 sts=4
com! TAB8 :set ts=8 sw=8 sts=8

" Turn off parantheses highlighting
hi link cErrInParen cBracket
hi link cErrInBracket cBracket

" Don't want stuff pasting when I press the middle mouse.
map <MiddleMouse> <Nop>
map <2-MiddleMouse> <Nop>
map <3-MiddleMouse> <Nop>
map <4-MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>
imap <2-MiddleMouse> <Nop>
imap <3-MiddleMouse> <Nop>
imap <4-MiddleMouse> <Nop>

nmap ; :

" Java shortcuts.
iab psvm public static void main(String[] args) {<ENTER><ENTER>}<UP><END><BS><BS>
iab sout System.out.println);<LEFT><LEFT>

" Insert breakpoint
iab bbb import pdb; pdb.set_trace()

" Use 2 for spaces, and expand tabs into spaces.
set ts=2
set sts=2
set sw=2
set et

" Set the line wrap to wrap at word breaks and not between a word.
set wrap linebreak textwidth=0
set nowrap

" Special application of the cc command. Instead of placing the cursor at the
" beginning of the line as usual, we place it where it should be placed
" according to the code with the spaces inserted.
map gcc ccQ<Esc>==A<Backspace>

" Turn off the toolbar
set go-=T

" Use a darker background for the cursor line
set cursorline

" Map ALT-(arrow key) to navigate extremely long lines
map <A-DOWN> gj
map <A-UP> gk
imap <A-UP> <ESC>gki
imap <A-DOWN> <ESC>gji

" Conventional shifting
vnoremap < <gv
vnoremap > >gv

" So that accented characters can render correctly
set encoding=utf-8

map \b :BufExplorer<CR>
map vb :BufExplorer<CR>

map \t :NERDTree<CR>

set showbreak=------->

" Prevent # from unindenting
inoremap # X<c-h>#

" Specific saving for notes.txt
autocmd BufWinLeave notes.txt mkview
autocmd BufWinEnter notes.txt silent loadview 
autocmd BufWinEnter notes.txt set nowrap
autocmd BufWinEnter yume.txt set wrap

au BufWinEnter *.sol set syn=javascript " Solidity

" Map gv to select last pasted
nnoremap gv `[V`]

" <A-a> to increment
nnoremap <A-a> <C-a>

" Ctrl-P
map <C-P> :CtrlP ~/dev/<CR>
let g:ctrlp_max_files = 0
let g:ctrlp_max_depth = 40
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0

" Faster macros
set lazyredraw

" F5 inserts date
inoremap <F5> <ESC>i[<ESC>"=strftime("%a, %d %b %Y %H:%M:%S")<CR>pa] 

" Open cheat sheet
com! CS :open C:\Users\Bai\Dropbox\cheatsheet.md
com! NO :open C:\Users\Bai\Dropbox\notes.txt

" Fix some syntax highlighting problems
au BufWinEnter *.md syn sync fromstart

" Replaces some ctrl combinations that break over SSH
map gt <C-^>
map gq <C-Q>
