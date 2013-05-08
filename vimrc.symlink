let g:EclimSgmlCompleteEndTag = 0
let g:EclimHtmlValidate = 0
let g:EclimXmlValidate = 0
let g:HtmlDjangoCompleteEndTag = 0

set t_Co=256
colorscheme slate
set autoindent
set mouse=a
set autoread
set completeopt=longest,menuone
set diffopt=iwhite,filler
set directory=/tmp
set display=lastline
set fo=tcr
set gdefault
set guitablabel=%!expand(\"\%:t\")
set hidden
set sw=2
set ignorecase
set incsearch
set nobackup
set nocompatible
set expandtab
set nofsync
set number
set numberwidth=1
set shiftwidth=4
set smartcase
set smartindent
set smarttab
set softtabstop=4
set noswapfile
set tabstop=4
set wildignore=*.o,*.obj,*.bak,*.swp,*.class,*.pyc
set wildmenu

cmap <c-a> <c-b>
nmap Q :q<return>
nmap m :w<return>
nmap <C-t> :tabnew<return>
nmap <C-Tab> :tabnext<return>
nmap <C-S-Tab> :tabprev<return>
nmap k gk
nmap j gj
nmap <C-q> :q<return>
nmap <space> i <esc>
nmap <return> o<esc>
nmap <C-s> :%s/
vmap <C-s> :s/
map <C-S-G> :w<return>:!vi -g %<return>:q!<return>
map \ :s/^/#/<CR>:nohlsearch<CR> x
map @ :s/^\/\/\\|^--\\|^> \\|^[#"%!;]//<CR>:nohlsearch<CR>
nnoremap <silent> s :exec "normal i".nr2char(getchar())."\e"<cr>
nnoremap <C-y> <return>
nnoremap <C-p> :b#<return>
nnoremap <C-n> :bn<return>

inoremap <expr> <cr> pumvisible() ? "<c-y>" : "<cr>"
inoremap <expr> j pumvisible() ? "<c-n>" : "j"
inoremap <expr> k pumvisible() ? "<c-p>" : "k"

cnoreabbrev E e
cnoreabbrev W w
command Q :q!
command WRITE :%!sudo tee % >/dev/null
runtime macros/matchit.vim
let mapleader = ","
nmap <leader>m :w<return>:make<return>
nmap <leader>e :earlier<return>
nmap <leader>r :RUN<return><return>
nmap <leader>p :RUNP<return><return>
nmap <leader>t :CommandT `git rev-parse --show-toplevel \|\| echo`<return>
autocmd BufEnter * cd %:p:h

"set guifont=Mono\ 9
syntax on
autocmd BufWinEnter *.* silent loadview
autocmd BufRead,BufNewFile *.des set syntax=levdes
autocmd BufRead,BufNewFile *.gcov set syntax=gcov
autocmd BufNewFile,BufReadPost *.go set filetype=go
filetype plugin on

augroup vimrc_filetype
	autocmd!
	autocmd FileType scala call s:myScalaSettings()
	autocmd FileType asm call s:myAssemblySettings()
	autocmd FileType scheme call s:mySchemeSettings()
	autocmd FileType java call s:myJavaSettings()
	autocmd FileType python call s:myPythonSettings()
	autocmd FileType haskell call s:myHaskellSettings()
	autocmd FileType javascript call s:myCSettings()
	autocmd FileType c call s:myCSettings()
	autocmd FileType cpp call s:myCSettings()
	autocmd FileType vim call s:myVimSettings()
augroup end

function! s:myCSettings()
	map \ :s/^/\/\//<CR>:nohlsearch<CR> x
endfunction

function! s:myPythonSettings()
	map \ :s/^/#/<CR>:nohlsearch<CR> x
	set expandtab
endfunction

function! s:mySchemeSettings()
	set expandtab
	set tabstop=2
	set shiftwidth=2
	map \ :s/^/;/<CR>:nohlsearch<CR> x
endfunction

function! s:myHaskellSettings()
	compiler ghc
	set expandtab
	nmap <leader>m :w<return>:make<return>
endfunction

function! s:myAssemblySettings()
	set expandtab
endfunction

function! s:myScalaSettings()
	set expandtab
	set tabstop=2
	set shiftwidth=2
	map \ :s/^/\/\//<CR>:nohlsearch<CR> x
	nmap <S-m> :w<return>:!scala-run %<return><return>
	command! -nargs=0 RUN :!scala-run --terminal %
	compiler scalac
	nmap <leader>m :w<return>:make<return>
endfunction

function! s:myJavaSettings()
	set expandtab
	set tabstop=4
	set shiftwidth=4
	map \ :s/^/\/\//<CR>:nohlsearch<CR> x
	nnoremap <silent> <buffer> <leader>i :JavaImportMissing<cr>:JavaImportClean<cr>:JavaImportSort<cr>
	nnoremap <silent> <buffer> <leader>c :JavaCorrect<cr>
	nnoremap <silent> <buffer> <leader>d :JavaDocSearch -x declarations<cr>
	nnoremap <silent> <buffer> <leader>s :JavaSearchContext<cr>
	nmap <leader>M :w<return>:make<return>:!java-run --nogui %<return><return>
	nmap <S-m> :!java-run --nogui %<return><return>
	nmap <C-o> :!gnome-terminal -x javac-vim %<return><return>
	command! -nargs=0 RUNP :!gnome-terminal -x java-run --profile %
	command! -nargs=0 RUN :!gnome-terminal -x java-run %
endfunction

function! s:myVimSettings()
	map \ :s/^/"/<CR>:nohlsearch<CR> x
endfunction

function! Convert()
	:%s/\n*[\t ]*{/ {/g
	:%retab!
endfunction
