" Maintainer: Aston Dihor
" Last change: Entah kapan
"
" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
	finish
endif

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
	" do not keep a backup file, use versions instead
	set nobackup
	set noswapfile
else
	" keep a backup file
	set backup
	set backupdir=~/.vim/backup//
	set directory=~/.vim/swap//
endif

" Remove ALL autocommands for the current group.
" autocmd!

" Sudah di set untuk vim
" /usr/local/Cellar/macvim/7.4-72/MacVim.app/Contents/Resources/vim/vimrc
" set nocompatible
" set backspace=indent,eol,start
" set langmenu=none


" default-nya: whicwrap=b,s
" allow <BS>/h/l/<Left>/<Right>/<Space>, ~ to cross line boundaries
" set whichwrap+=<,>,b,h,l,s,[,],~
set whichwrap=<,>,b,h,l,s,[,],~


" Make a buffer hidden when editing another one
" (default: nohidden)
set hidden

" default-nya: tabstop=8, shiftwidth=8, softtabstop=0
set tabstop=4

" Spaces per tab (when shifting)
set shiftwidth=4

set softtabstop=4

" <tab>/<BS> indent/dedent in leading whitespace
set smarttab

" Show line numbers in gutter
set number

" show relative numbers in gutter
if exists('+relativenumber')
	set relativenumber
endif

" Ada seting di powerline yang membuat selalu ruler. :)
set ruler

" Smart auto-indenting inside numbered lists
set formatoptions+=n

" Incremental search ("find as you type")
set incsearch

" Ignore case when searching
set ignorecase

" Case-sensitive search if search string includes a capital letter
set smartcase

" Keyword Completion Case (insert mode)
set infercase

" jump between matching brackets
set showmatch

" if not changed in Vim, automatically pick up changes after "git checkout" etc
set autoread

" Write the content of the file if it has been modified, on each:
" :next, :rewind, :last, :first, :previous, :stop, :suspend, :tag, :!, :make
set autowrite

" -sda- :edit, :enew, :quit, :qall, :exit, :xit, :recover
set autowriteall

" Always use :confirm
set confirm

" extra info at end of command line
if has('showcmd')
	set showcmd
endif

set smartindent

set copyindent

" always indent by multiple of shiftwidth
set shiftround

" default-nya: laststatus=1
set laststatus=2

" default-nya : shortmess=filnxtToO
set shortmess+=a

" Ignore annoying swapfile messages
set shortmess+=A

" no splash screen
set shortmess+=I

" default-nya: fileformats=unix,dos
set ffs=unix,dos,mac

" default-nya: history=20
set history=1000

" default-nya: modelines=5
set modelines=0

" set iskeyword-=-
" set iskeyword-=_

set wildmenu
set wildignore=*.dll,*.o,*.pyc,*.bak,*.exe,*.jpg,*.jpeg,*.png,*.gif,*$py.class,*.class
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*/tmp/librarian/*,*/.vagrant/*,*/.kitchen/*,*/vendor/cookbooks/*
set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*
set wildignore+=*/tmp/*,*.so,*.swp,*~,._*
set wildignore+=*/vendor/**
set wildignore+=*/public/forum/**
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=.DS_Store
set wildignore+=public/build,.git,*/node_modules/*,*/deps/go/*
" default-nya: wildmode=full
set wildmode=list:longest,full

" default-nya: foldmethod=manual
set foldmethod=manual

" default-nya: foldclose=
set foldclose=all

" default-nya: foldlevel=0
set foldlevel=9

" default-nya: nofoldenable
" disable folding because it is evil
set nofoldenable

" default-nya: sessionoptions=blank,buffers,curdir,folds,help,options,tabpages,winsize
set sessionoptions=resize,winpos,winsize,buffers,tabpages,folds,curdir,help

" allow cursor to move where there is no text in visual block mode
set virtualedit=block

" default GUI window width (80) is too narrow)
" set columns=91
" create windows with maximum height by default
" set lines=999

if has("gui_macvim")
	" maximum horizontal width on entering fullscreen mode
	set fuopt+=maxhorz
endif

" default-nya: startofline
set nostartofline
"
" Start scrolling 3 lines before edge of viewport
set scrolloff=1

" same as scolloff, but for columns
set sidescrolloff=1

"set tags=./tags,tags,../tags,../../tags

" Dictionary (requirement: curl u/ cari di internet sebagai dict client)
" ----------------------------------------------------------------------
" To lookup a word (or words) in the dictionary use 'Dict' command: :Dict start up
" default-nya: dictionary=
set dictionary+=~/.vim/dict.txt

" This will enable the dictionary in the insert mode (<C-x><C-k>). Additionaly
" it could be useful to add the dictionary to the standard word completions
" (<C-n>...) for text and Markdown file types. To do this set the 'complete' to
" include 'k' value:
au FileType text,markdown setlocal complete+=k
let g:dict_hosts = [
			\ ["dict.org", []],
			\ ["dict.mova.org", []]
			\ ]
" -------------------------------------------------------- end of Dictionary

" open horizontal splits below current window
set splitbelow

" open vertical splits to the right of the current window
set splitright

" default-nya: mousemodel=popup_setpos
set mousemodel=popup

set visualbell

" Share OS clipboard
set clipboard+=unnamed

" Better Completion
set complete=.,w,b,u,t
set completeopt=longest,menuone,preview

" Only shown when not in insert mode so I don't go insane.
augroup trailing
    au!
    au InsertEnter * :set listchars+=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:·
    au InsertLeave * :set listchars-=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:·
augroup END

let mapleader = ","
let g:mapleader=","
let maplocalleader="\\"

" Tidak menampilkan buffers di system menu
" harus dilakukan sebelum :syntax on
let no_buffers_menu=1

" This command swithces on syntax highlighting.
" What this command actually does is to execute
" the command :source $VIMRUNTIME/syntax/syntax.vim
syntax enable


" default-nya sudah spt ini:
" set noexpandtab
" set timeout
" set textwidth=0
" set wrapmargin=0
" set showmode
" set encoding=utf-8
" set undolevels=1000
" set t_Co=256
" set ttyfast
" set magic
" set mousehide
" set background=dark
" set noerrorbells
" set novisualbell
"

" setelah highlight, di override dgn syntax on
highlight Search cterm=underline

if exists('$TMUX')  " Support resizing in tmux
	" default-nya: ttymouse=xterm2
	set ttymouse=xterm2
endif

autocmd BufWrite /private/tmp/crontab.* set nowritebackup
autocmd BufWrite /private/etc/pw.* set nowritebackup

if has('mouse')
    " default-nya: mouse=
    " Normally you would enable the mouse in all four modes with: :set mouse=a
    set mouse=a

    if &term =~ "xterm" || &term =~ "screen"
		" as of March 2013, this works
		set ttymouse=xterm2

		" previously, I found that ttymouse was getting reset, so had
		" to reapply it via an autocmd like this:
		autocmd VimEnter,FocusGained,BufEnter * set ttymouse=xterm2"
	endif
endif

" apabila nilai dari t_Co (yang mana saat ini adalah 256) lebih besar dari 2,
" atau gui_running.. maka..
if &t_Co > 2 || has("gui_running")
	" default-nya: nohlsearch
	set hlsearch
endif

if has("gui_macvim")
	let macvim_skip_colorscheme=1
	"let macvim_hig_shift_movement = 1
endif

" Pilihan Color Scheme
colorscheme xoria256

if has('gui_running')
    set guifont=Sauce\ Code\ Powerline\ Light:h11
    " set guifont=PowerlineSymbols:h10
    " set guifont=Meslo\ LG\ S\ for\ Powerline:h11
    set linespace=3
	set lines=51       " default-nya: lines=40
endif

" Scroll Bar
if has('gui_running')
	set guioptions-=T  " no toolbar
	set guioptions-=R  " remove right-hand scroll Bar
    set guioptions-=r  " remove right-hand scroll Bar
    set guioptions-=l  " remove right-hand scroll Bar
    set guioptions-=L  " remove right-hand scroll bar
endif

" Timeout
if has('gui_running')
	set ttimeoutlen=500
	set timeoutlen=500
	augroup FastEscape
		autocmd!
		autocmd InsertEnter * set timeoutlen=500
		autocmd InsertLeave * set timeoutlen=700
		" au InsertLeave * set timeoutlen=3500
	augroup END
else
	" default-nya: timeoutlen=1000 ttimeoutlen=-1
	set timeoutlen=600      " time out on :mappings
	set ttimeoutlen=100    " time out on key codes
endif


if has("autocmd")
	" Highlight current line kalau di Insert Mode,
	" Tapi hilangkan highlight current line waktu
	" keluar dari Insert Mode menuju Normal Mode
	autocmd InsertLeave * set nocursorline
	autocmd InsertEnter * set cursorline
endif


if has("autocmd")
	" when enabling diff for a buffer it should be disabled when the
	" buffer is not visible anymore
	au BufHidden * if &diff == 1 | diffoff | setlocal nowrap | endif
endif


" Mappings

" Don't use Ex mode, use Q for formatting
" -------------------------------------------------
map Q gq
"map Q :qa


" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
" Hapus yang ada di kiri kursor, sampai ke awal line
inoremap <C-U> <C-G>u<C-U>



if exists('+relativenumber')
" cycle through relativenumber + number, number (only), and no numbering
	nnoremap <leader>ln :<c-r>={
		\ '00': 'set rnu <bar> set nu',
        \ '01': 'set nornu <bar> set nu',
        \ '10': 'set nornu <bar> set nonu',
        \ '11': 'set nornu <bar> set nu' }[&nu . &rnu]<cr><cr>
else
	" toggle line numbers on and off
	nnoremap <leader>ln :set nu!<cr>
endif


" Window Navigation
" -------------------------------------------------
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-=> <C-w>+
nnoremap <C--> <C-w>-
nnoremap <D-S-Left> :wincmd h<CR>
nnoremap <D-S-Right> :wincmd l<CR>
nnoremap <D-S-Up> :wincmd k<CR>
nnoremap <D-S-Down> :wincmd j<CR>
" -------------------------------------------------


" Apabila wrap, kita inginkan bisa turun ke baris yang ter-wrap, bukan
" langsung menuju line berikutnya.
nmap j gj
nmap k gk

" Select entire buffer
" Sudah diganti dengan Cmd+A (Select All)
" nnoremap vaa ggvGg_
" nnoremap Vaa ggVG

" Insert the directory of the current buffer in command line mode
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Sepertinya ini tidak berfungsi
nmap <SwipeLeft> :bN<CR>
nmap <SwipeRight> :bn<CR>

" Keluar dari Insert Mode, gunakan `kj`
imap kj <Esc>

" space berfungsi sebagai Esc juga
nnoremap <Space> <ESC>
vnoremap <Space> <ESC>

" Vertical Split
nnoremap vs :vsplit<CR>
" Horizontal split
nnoremap sp :split<CR>
" Vertical Split dan tuju window baru.
nnoremap <leader>v <C-w>v<c-w>l
" Vertical Split overrules 'splitbelow' and 'splitright'
nnoremap <leader>bv :bel vsp<CR>

" Resizing Window
" -------------------------------------------------
nnoremap <leader>< <C-W><
nnoremap <leader><< 5<C-W><
nnoremap <leader>> <C-W>>
nnoremap <leader>>> 5<C-W>>
nnoremap <leader>, <C-W>-
nnoremap <leader>,, 5<C-W>-
nnoremap <leader>. <C-W>+
nnoremap <leader>.. 5<C-W>+
" -------------------------------------------------


" Fast Save Current Buffer
" -------------------------------------------------
inoremap <leader>w <Esc>:w!<CR>
nnoremap <leader>w :w!<CR>
inoremap <leader>s <Esc>:w!<CR>
nnoremap <leader>s <Esc>:w!<CR>
" Save file menggunakan sudo.
cnoremap w!! w !sudo tee % >/dev/null

" Karena hanya berlaku di MacVim, maka:
if has("gui_macvim") && has("gui_running")
	" imap <D-S> <Esc>:w!<CR>
	" nmap <D-S> :w!<CR>
endif
" -------------------------------------------------


" Buffer Navigation
" -------------------------------------------------
map <leader>[ :bp<CR>
map <leader>] :bn<CR>
imap <leader>] <Esc>:bn<CR>
imap <leader>[ <Esc>:bp<CR>
map <leader>} :blast<CR>
map <leader>{ :bfirst<CR>
imap <leader>} <Esc>:blast<CR>
imap <leader>{ <Esc>:bfirst<CR>

" Close the Current Buffer
" -------------------------------------------------
" noremap <leader>bd <Esc>:bd<CR>
" vnoremap <leader>bd <Esc>:bd<CR>
noremap <leader>bd <Esc>:Bclose<CR>
vnoremap <leader>bd <Esc>:Bclose<CR>
noremap <leader>x <Esc>:Bclose<CR>

" Close All Buffers
" -------------------------------------------------
nmap <silent> <leader>da :exec "1," . bufnr('$') . "bd"<CR>

" Remove search results
" -------------------------------------------------
command! H let @/=""		
nmap <silent> <leader>/ :nohlsearch<CR>

" Close Current Window but leave buffer
" -------------------------------------------------
nmap <leader>qw <C-w>q

" [Description]
" -------------------------------------------------
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>sv :so $MYVIMRC<CR>

" -------------------------------------------------
" Cmd-x is Cut
" vnoremap <D-X> "+x

" Cmd-c is Copy
" vnoremap <D-C> "+y

" Cmd-v is Paste
" vnoremap <D-V> "+gP
" cmap <D-V> <C-R>+

" Cmd-z is Undo
" noremap <D-z> u
" inoremap <D-z> <C-O>u

" Cmd-Y is Redo (although not repeat); not in cmdline though
" noremap <D-Y> <C-R>
" inoremap <D-Y> <C-O><C-R>

" [Description]
" vnoremap <Tab> <Esc>gV
" onoremap <Tab> <Esc>

" Fold Current Tag
nnoremap <leader>ft Vatzf

" [Description]
" nmap ;; :

" [Description]
nnoremap <leader>ed :edit %:p:h/

" [Description]
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>


" Insert blank new line
nnoremap <silent> <leader>il o<Esc>
nmap <leader>iil O<Esc>

" Insert blank space
nnoremap ss i<Space><Esc>

" Swap Lines
" -------------------------------------------------
nmap <C-up> ddkP
nmap <C-down> ddp
" Swap Line using <leader>
nnoremap <leader>k ddkP
nnoremap <leader>j ddp
" Swap Lines (Move Line) in Visual Mode
vnoremap <C-up> xkP`[V`]
vnoremap <C-down> xp`[V`]
" -------------------------------------------------

" [Description]
nnoremap <leader>q gqip

" [Description]
nmap <leader>td :e todo.txt<CR>

" Completion
" -------------------------------------------------
" Lakukan setelah filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

imap <C-Space> <C-x><C-o>

" omnicompletion : words
inoremap <leader>, <C-x><C-o>

" omnicompletion : filenames
inoremap <leader>: <C-x><C-f>

" omnicompletion : lines
inoremap <leader>= <C-x><C-l>

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<C-g>u\<Tab>"
" -------------------------------------------------


" Whitespace
" -----------------------------------------------------------------------------
if has("autocmd")
	au ColorScheme * highlight ExtraWhitespace ctermbg=darkgrey guibg=darkgrey
	au ColorScheme * highlight WhitespaceEOL ctermbg=darkgrey guibg=darkgrey

	" Automatically removing all trailing whitespace
	"autocmd BufWritePre * :%s/\s\+$//e
endif

" Show tab character and trailing characters
set listchars=tab:>-,eol:¶,trail:·,extends:>,precedes:<
"set listchars=tab:▸▸,trail:¬

func! RemoveTrailingWhitespace()
	let l:lastline = line(".") - 1
	call setline(l:lastline, substitute(getline(l:lastline), ' \+$', '', ''))
endfunc
" ----------------------------------------------------------- end of Whitespace

let NERDTreeHijackNetrw = 0

" Camelcasemotion Mapping
" -----------------------------------------------------------------------------
map <silent> \w <Plug>CamelCaseMotion_w
map <silent> \b <Plug>CamelCaseMotion_b
map <silent> \e <Plug>CamelCaseMotion_e
" sunmap w
" sunmap b
" sunmap e
" -----------------------------------------------------------------------------


" Pathogen {{{
" -----------------------------------------------------------------------------
set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim

filetype off

" add .vim/bundle subdirs to runtime path
execute pathogen#infect()
" wasteful, but no shortage of grunt available
call pathogen#helptags()

if has("autocmd")
	filetype plugin indent on
endif

" -----------------------------------------------------------------------------
" }}}

" default-nya: showmode
set noshowmode

" default-nya: wrap
set nowrap

function! s:setupWrapping()
	setlocal wrap
	setlocal linebreak
	setlocal textwidth=72
	setlocal nolist
endfunction

" au	: autocmd
" ts	: tabstop
" sts	: softtabstop
" sw	: shiftwidth
" ft	: filetype
" noet	: noexpandtab
" setl  : setlocal

if has("autocmd")
	" Recognize file types by extension"
	augroup filetypedetect
		au BufEnter *.less set filetype=less
		au BufEnter *.{md,markdown,mdown,mkd,mkdn,txt} set filetype=markdown
		au BufEnter *.phps set filetype=php
		au BufEnter *.js set filetype=javascript
		au BufEnter *.json set filetype=javascript
		au BufEnter *.ejs set filetype=html
		au BufEnter *.go set filetype=go
		" Treat .rss files as XML
		au BufEnter *.rss set filetype=xml
		au BufEnter *.tex set filetype=tex
		au BufEnter *.cofee set filetype=cofee
	augroup END

	au BufEnter *.[ch] setl cindent
	au BufEnter *.[ch]pp setl cindent
	au FileType tex setl wrap tw=79 fo=tcqor noet
	au FileType coffee setl sw=2 expandtab
	au FileType html setlocal ts=2 sts=2 sw=2 expandtab
    au FileType css setlocal ts=2 sts=2 sw=2 expandtab
	" PHP indentation uses spaces and 4 spaces for each tab per PSR guidelines
	au FileType php setlocal indentexpr= | setlocal smartindent | setlocal nowrap
    au FileType blade setlocal ts=2 sts=2 sw=2 expandtab tw=0


	au FileType blade let b:match_words = "<?php:?>,\<switch\>:\<endswitch\>,\<if\>:\<elseif\>:\<else\>:\<endif\>,"
			\ . "\<while\>:\<endwhile\>,\<do\>:\<while\>,\<for\>:\<endfor\>,\<foreach\>:\<endforeach\>,"
			\ . "<div:</div,h1:/h1,<h2:</h2,<h3:</h3,<h4:</h4,<h5:</h5,<h6:</h6,"
			\ . "<span:</span,<section:</section,<nav:</nav,<header:</header,<article:</article,<footer:</footer,"
			\ . "<ul:</ul,<ol:</ol,<li:</li,<table:</table,<thead:</thead,<tbody:</tbody,"
			\ . "<tfoot:</tfoot,<th:</th,<tr:</tr,<td:</td,<a:</a,<p:</p,"
			\ . "<form:</form,<fieldset:</fieldset,<head:</head,<body:</body,<title:</title,<html:</html,"
			\ . "<button:</button,<dd:</dd,<dl:</dl,"
			\ . "<style:</style,<script:</script,<strong:</strong,<small:</small,<i:</i,<b:</b,"
			\ . "@section:@show:@overwrite:@stop,@if:@elsif:@else:@endif,@unless:@endunless,"
			\ . "@for:@endfor,@foreach:@endforeach,@while:@endwhile,{{--:--}},{{:}},{{{:}}},/*:*/,"
			\ . "<abbr:</abbr,<address:</address,<area:</area,<blockquote:</blockquote,"
			\ . "<caption:</caption,<cite:</cite,<em:</em,<colgroup:</colgroup,"
			\ . "<del:</del,<ins:</ins,<dt:</dt,<kbd:</kbd,<label:</label,"
			\ . "<legend:</legend,<map:</map,<noscript:</noscript,<menu:</menu,<menu:</menu,"
			\ . "<object:</object,<select:</select,<optgroup:</optgroup,<option:</option,"
			\ . "<q:</q,<samp:</samp,<s:</s,<sub:</sub,<sup:</sub,<textarea:</textarea,<u:</u,<var:</var,"
			\ . "<canvas:</canvas,<audio:</audio,<video:</video,<canvas:</canvas,<pre:</pre,"
			\ . "<code:</code,<embed:</embed,<source:</source,<track:</track,<datalist:</datalist,"
			\ . "<keygen:</keygen,<output:</output,<aside:</aside,<details:</details,<summary:</summary,"
			\ . "<figure:</figure,<figcaption:</figcaption,<mark:</mark,<time:</time,<bdi:</bdi,"
			\ . "<wbr:</wbr,<dialog:</dialog,<command:</command,<meter:</meter,<progress:</progress,"
			\ . "<ruby:</ruby,<rt:</rt,<rp:</rp,"
			\ . "(:),[:],{:},<:>,<\@<=[ou]l\>[^>]*\%(>\|$\):<\@<=li\>:<\@<=/[ou]l>,<\@<=dl\>[^>]*\%(>\|$\):"
			\ . "<\@<=d[td]\>:<\@<=/dl>,<\@<=\([^/][^ \t>]*\)[^>]*\%(>\|$\):<\@<=/\1>"



    au FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
	au FileType make setlocal ts=4 sts=4 sw=4 noexpandtab list
	au FileType markdown call s:setupWrapping()
	au FileType python setlocal softtabstop=4 tabstop=4 shiftwidth=4
	au FileType go setlocal shiftwidth=1 tabstop=3 noexpandtab
	au FileType go setlocal listchars=tab:\ \ ,trail:¬ " Show trailing chars

	autocmd FileType python set completefunc=pythoncomplete#Complete
	autocmd FileType javascript set completefunc=javascriptcomplete#CompleteJS
	autocmd FileType html set completefunc=htmlcomplete#CompleteTags
	autocmd FileType css set completefunc=csscomplete#CompleteCSS
	autocmd FileType xml set completefunc=xmlcomplete#CompleteTags
	autocmd FileType java set completefunc=javacomplete#Complete
	" autocmd FileType php set completefunc=phpcomplete#Complete

	" autocmd BufNewFile *.php 0r ~/.vim/templates/skeleton.php | normal Gdda
	" autocmd BufNewFile *.txt 0r ~/.vim/templates/skeleton.txt | normal GddOAOAOAOAOAOAOAOAOA
    " autocmd BufNewFile *.rst 0r ~/.vim/templates/skeleton.txt | normal GddOAOAOAOAOAOAOAOAOA
	" autocmd BufNewFile * silent! 0r $VIMHOME/templates/%:e.tpl

	augroup filetype_vim
        autocmd!
        autocmd FileType vim setlocal foldmethod=marker nolist
    augroup END

	" After the cursor was moved in Insert Mode, if popup menu
	" then pclose (Close any "Preview" window currently open).
	autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
	autocmd InsertLeave * if pumvisible() == 0|pclose|endif

	autocmd cursorhold * set nohlsearch
    autocmd cursormoved * set hlsearch

	" Remember last location in file, but not for commit
    " messages.
    " see :help last-position-jump
    " Make sure Vim returns to the same line when you reopen a file.
    augroup line_return
    	au!
		autocmd BufReadPost *
			\ if &filetype !~ '^git\c' && line("'\"") > 0
			\ && line("'\"") <= line("$") |
			\ exe "normal! g`\"" |
			\ endif
	augroup END


	" Put these in an autocmd group, so that we can delete them easily.
	augroup vimrcEx
		au!
		" autocmd vimenter * :Helptags

		" For all text files set 'textwidth' to 78 characters.
		autocmd FileType text setlocal textwidth=78

		" When editing a file, always jump to the last known cursor position.
        " Don't do it when the position is invalid or when inside an event handler
        " (happens when dropping a file on gvim).
        " Also don't do it when the mark is in the first line, that is the default
        " position when opening a file.
		autocmd BufReadPost *
			\ if line("'\"") > 1 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif
	augroup END
else
	" always set autoindenting on
	set autoindent
endif " has("autocmd")

if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif


" 80-character line coloring
if has("autocmd")
	if exists('+colorcolumn')
		set colorcolumn=80
		highlight ColorColumn ctermbg=235 guibg=#262626
	else
		au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
	endif
endif



" Ini bikin console menampilkan identifier setiap
" habis dari focus on other app.
	" enable focus reporting on entering Vim
	" let &t_ti .= "\e[?1004h"
	" disable focus reporting on leaving Vim
	" let &t_te = "\e[?1004l" . &t_te




" Must have plugins {{{
" --------------------------------------------------------------

" vim-less
nnoremap <Leader>less :w <BAR> !lessc % > %:t:r.css<CR><space>

" vim-css-color
" let g:cssColorVimDoNotMessMyUpdatetime = 1

" vim-css3-syntax
" highlight VendorPrefix guifg=#00ffff gui=bold
" match VendorPrefix /-\(moz\|webkit\|o\|ms\)-[a-zA-Z-]\+/

" maksimr / vim-jsbeautify {{{
" --------------------------------------------------------------
" https://github.com/maksimr/vim-jsbeautify
" cd ~/.vim/bundle
" git clone https://github.com/maksimr/vim-jsbeautify.git
" cd vim-jsbeautify && git submodule update --init --recursive
map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
" --------------------------------------------------------------
" }}}



" <Plugin>NERDTree {{{
" --------------------------------------------------------------
autocmd VimEnter * if !argc() | NERDTree | endif
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeDirArrows = 0
let NERDTreeWinSize = 25
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '\.rbc$', '\.rbo$', '\.class$', '\.o$', '\~$', '\.git', '\.DS_Store']

let g:NERDTreeCopyCmd= 'cp -r '
" let g:NERDTreeMapOpenVSplit = "<A-m>"
" let g:NERDTreeMapOpenSplit = "<A-n>"

let g:nerdtree_tabs_open_on_console_startup = 0
let g:nerdtree_tabs_open_on_gui_startup = 1
let g:nerdtree_tabs_no_startup_for_diff = 1
let g:nerdtree_tabs_smart_startup_focus = 1
let g:nerdtree_tabs_autoclose = 1

nnoremap <leader>nt :NERDTreeToggle<CR> :NERDTreeMirror<CR>
noremap <leader>n :NERDTreeFocus<CR>
noremap <leader>nf :NERDTreeFind<CR>


" returns true iff is NERDTree open/active
function! rc:isNTOpen()        
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" calls NERDTreeFind iff NERDTree is active, current window contains a modifiable file, and we're not in vimdiff
function! rc:syncTree()
  if &modifiable && rc:isNTOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

"autocmd BufEnter * call rc:syncTree()
" --------------------------------------------------------------
" }}}



" <Plugin>Powerline {{{
" --------------------------------------------------------------
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

" Powerline (Fancy thingy at bottom stuff)
let g:Powerline_symbols='fancy'
let g:syntastic_mode_map={'mode': 'passive'}
let g:Powerline_theme="long"
let g:Powerline_colorscheme="solarized256_light"
" --------------------------------------------------------------
" }}}



" <Plugin>Splits : Buffergator {{{
"---------------------------------------------------------------------
let g:buffergator_viewport_split_policy = "b"
let g:buffergator_suppress_keymaps="1"
let g:buffergator_autodismiss_on_select=0
let g:buffergator_split_size=18
nnoremap <leader>bg :BuffergatorOpen<CR>
nnoremap <leader>bgc :BuffergatorClose<CR>
noremap <leader>bgt :BuffergatorTabsOpen<CR>
"---------------------------------------------------------------------
" }}}



" <Plugin>CtrlP {{{
"--------------------------------------------------------------------
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" let g:ctrlp_user_command = 'find %s -type f'
"---------------------------------------------------------------------
" }}}



" <Plugin>Snipmate {{{
"-----------------------------------------------------------------
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
" let g:snipMate.scope_aliases['ruby'] = 'ruby,ruby-rails,ruby-1.9'
let g:snipMate.scope_aliases['blade'] = 'blade,laravel,php,html'
" nnoremap <leader>smr <Esc>:exec ReloadAllSnippets()<CR>
" let g:snips_author = 'Aston Dihor Lubis <aston.dihor@yahoo.com>'
imap <Tab> <Plug>snipMateNextOrTrigger
smap <Tab> <Plug>snipMateNextOrTrigger
"-----------------------------------------------------------------
" }}}



" <Plugin>Align (vim-align) {{{
"--------------------------------------------------------------------
map <leader>aw= <Plug>AM_w=
"-----------------------------------------------------------------
" }}}



" <Plugin>Markdown {{{
"-----------------------------------------------------------------
let g:vim_markdown_folding_disabled=1
"-----------------------------------------------------------------
" }}}



" <Plugin>delimitMate {{{
"-----------------------------------------------------------------
au FileType *    let b:delimitMate_autoclose = 1
au FileType mail let b:delimitMate_autoclose = 0

" If using html auto complete (complete closing tag)
au FileType xml,html,xhtml let b:delimitMate_matchpairs = "(:),[:],{:}"
"-----------------------------------------------------------------
" }}}



" <Plugin>Sparkup {{{
"-----------------------------------------------------------------
augroup ft_sparkup
	au!
	au FileType xml,html,htmljinja,htmldjango imap <buffer> <C-e> <Plug>SparkupExecute
	au FileType xml,html,htmljinja,htmldjango imap <buffer> <C-l> <Plug>SparkupNext
augroup END
" let g:sparkupExecuteMapping="<Tab>"
" let g:sparkupNextMapping = '<c-s>'
"-----------------------------------------------------------------
" }}}



" <Plugin>PDV PHP Documentor for VIM - 2 {{{
"-----------------------------------------------------------------
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
autocmd FileType php,blade,phtml,phps nnoremap <buffer> <C-d> :call pdv#DocumentWithSnip()<CR>
" inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
" nnoremap <C-P> :call PhpDocSingle()<CR>
" vnoremap <C-P> :call PhpDocRange()<CR>
" nnoremap <C-H> :Php <q-args>
"-----------------------------------------------------------------
" }}}



" <Plugin>Vimwiki {{{
"-----------------------------------------------------------------
fun! s:AstonSettingWikiFileType()
	" set ft=vimwiki
	" Better line wrapping
	set wrap
	setlocal encoding=utf-8
	setlocal ffs=unix
	" This is the number of characters from the right window border where wrapping starts.
	setlocal wrapmargin=3
	" This simply sets the number of columns used on the screen.
	setlocal textwidth=79
	setlocal formatoptions=qrn1
	setlocal linebreak
	setlocal nolist
endfun

augroup filetype_vimwiki
	au FileType vimwiki call s:AstonSettingWikiFileType()
augroup END

" nmap <Plug>NoVimwikiFollowLink <Plug>VimwikiFollowLink
nmap <Plug>NoVimwiki2HTML <Plug>Vimwiki2HTML
nmap <Plug>NoVimwiki2HTMLBrowse <Plug>Vimwiki2HTMLBrowse
nmap <Plug>NoVimwikiDeleteLink <Plug>VimwikiDeleteLink
nmap <Plug>NoVimwikiRenameLink <Plug>VimwikiRenameLink
nmap <leader>vwi <Plug>VimwikiIndex
nmap <Plug>NoVimwikiTabIndex <Plug>VimwikiTabIndex
nmap <Plug>NoVimwikiUISelect <Plug>VimwikiUISelect
nmap <Plug>NoVimwikiDiaryIndex <Plug>VimwikiDiaryIndex
nmap <Plug>NoVimwikiDiaryGenerateLinks <Plug>VimwikiDiaryGenerateLinks
nmap <Plug>NoVimwikiMakeDiaryNote <Plug>VimwikiMakeDiaryNote
nmap <Plug>NoVimwikiTabMakeDiaryNote <Plug>VimwikiTabMakeDiaryNote
"--------------------------------------------------------------------
" }}}



" <Plugin>T-Comment {{{
"--------------------------------------------------------------------
map <leader>c <C-_><c-_>
imap <D-/> <C-_><C-_>
nmap <D-/> <C-_><C-_>
"--------------------------------------------------------------------
" }}}


" vim-eunuch defines a ":W" command that I consider a little dangerous
" (too easy to type, with possibly wide-reaching side-effects); overwrite
" it with the ":W" command that I've been using for years
command! W w !sudo tee % > /dev/null")

" <Plugin>gundo.vim {{{
"--------------------------------------------------------------------
nnoremap <silent> <leader>u :GundoToggle<CR>
"--------------------------------------------------------------------
" }}}

" <Plugin>Rainbow Parentheses  {{{
"--------------------------------------------------------------------
" let g:rbpt_colorpairs = [
" 	\ ['brown',       'RoyalBlue3'],
" 	\ ['Darkblue',    'SeaGreen3'],
" 	\ ['darkgray',    'DarkOrchid3'],
" 	\ ['darkgreen',   'firebrick3'],
" 	\ ['darkcyan',    'RoyalBlue3'],
" 	\ ['darkred',     'SeaGreen3'],
" 	\ ['darkmagenta', 'DarkOrchid3'],
" 	\ ['brown',       'firebrick3'],
" 	\ ['gray',        'RoyalBlue3'],
" 	\ ['black',       'SeaGreen3'],
" 	\ ['darkmagenta', 'DarkOrchid3'],
" 	\ ['Darkblue',    'firebrick3'],
" 	\ ['darkgreen',   'RoyalBlue3'],
" 	\ ['darkcyan',    'SeaGreen3'],
" 	\ ['darkred',     'DarkOrchid3'],
" 	\ ['red',         'firebrick3'],
" 	\ ]

" let g:rbpt_max = 16

" Catatan :
	":RainbowParenthesesToggle       " Toggle it on/off
	":RainbowParenthesesLoadRound    " (), the default when toggling
	":RainbowParenthesesLoadSquare   " []
	":RainbowParenthesesLoadBraces   " {}
	":RainbowParenthesesLoadChevrons " <>

" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces
"--------------------------------------------------------------------
" }}}



" <Plugin>Supertab  {{{
"--------------------------------------------------------------------
" let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
" let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
" let g:SuperTabContextDiscoverDiscovery =
"         \ ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]
"--------------------------------------------------------------------
" }}}


" <Plugin>tagbar  {{{
"--------------------------------------------------------------------
"nmap <F8> :TagbarToggle<CR>
noremap <F8> :TagbarOpenAutoClose<CR>
inoremap <F8> <C-o>:TagbarOpenAutoClose<CR><Esc>
"--------------------------------------------------------------------
" }}}


" <Plugin>tagbar  {{{
"--------------------------------------------------------------------
noremap <leader>ms :DoShowMarks<CR>
noremap <leader>mh :NoShowMarks!<CR>
"--------------------------------------------------------------------
" }}}

" <Plugin>Matchit  {{{
"--------------------------------------------------------------------
source $VIMRUNTIME/macros/matchit.vim
"--------------------------------------------------------------------
" }}}


" <Plugin>Aston  {{{
"--------------------------------------------------------------------
" Clean trailing whitespace
nnoremap ctw mz:%s/\s\+$//<cr>:let @/=''<cr>`z
" Key mapping - clean whitespace
nnoremap <silent> <F5> :StripTrailingWhitespaces<CR>
nnoremap <leader>S :%s/\s\+$//<CR>:let @/=''<CR>
nnoremap <C-r><C-r> :%s/\s\+$//e<CR>

" Line di bawah ini menganggu powerline
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

" Highlight Group(s)
nnoremap <F8> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
	\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
	\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Show contents of registers
nnoremap <leader>reg :registers<cr>

" Sort lines
nnoremap <leader>sl vip:!sort<cr>
vnoremap <leader>sl :!sort<cr>

" Tabs
nnoremap <leader>( :tabprev<cr>
nnoremap <leader>) :tabnext<cr>
nnoremap <leader>{ :tabnew<cr>

" Keep the cursor in place while joining lines
nnoremap J mzJ`z

" Split line (sister to [J]oin lines)
" The normal use of S is covered by cc, so don't worry about shadowing it.
nnoremap S i<cr><esc>^mwgk:silent! s/\v +$//<cr>:noh<cr>`w

"--------------------------------------------------------------------
" }}}


" <Plugin>Powerline - Solarized theme for vim-Powerline  {{{
"--------------------------------------------------------------------
" let g:Powerline_theme='long'
" let g:Powerline_colorscheme='solarized256_dark'
"--------------------------------------------------------------------
" }}}


" --------------------------------------------------------------
" }}} end of Must have plugins


" Helpers Functions {{{
"---------------------------------------------------------------------
" autocmd FileType *.php set ft=php.laravel.html
autocmd FileType phtml set ft=php.html
" autocmd FileType *.blade.php set ft=php.laravel.blade.html
" autocmd BufEnter *.blade.php set ft=php.laravel.blade.html
autocmd BufWritePre *.php,*.blade.php :%s/\s\+$//e

autocmd BufEnter * :syntax sync fromstart

" Laravel framework commons
nnoremap <leader>lr :e app/routes.php<CR>
nmap <leader>lca :e app/config/app.php<CR>81Gf(%0
nmap <leader>lcd :e app/config/database.php<CR>
nmap <leader>lc :e composer.json<CR>
"-----------------------------------------------------------------
" }}}

" Make cursor keys ignore wrapping
inoremap <silent> <Down> <C-R>=pumvisible() ? "\<lt>Down>" : "\<lt>C-O>gj"<CR>
inoremap <silent> <Up> <C-R>=pumvisible() ? "\<lt>Up>" : "\<lt>C-O>gk"<CR>


" autocmd VimEnter * if !argc() | :BuffergatorOpen<CR>| endif
autocmd VimEnter * if !argc() | execute "BuffergatorOpen" | endif
" execute "BuffergatorToggle"
autocmd VimEnter * let g:buffergator_autoupdate=1

autocmd VimEnter * wincmd b
autocmd VimEnter * wincmd w
autocmd VimEnter * wincmd p

onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>


iabbrev lorem Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
iabbrev llorem Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
iabbrev teh the
iabbrev Teh The
iabbrev cthuf Ia! Ia! Cthulhu fhtagn! Ph'nglui mglw'nafh Cthulhu R'lyeh wgah'nagl fhtagn! Cthulhu fhtagn! Cthulhu fhtagn!
iabbrev =? =>
iabbrev </ </<C-x><C-o>
iabbrev ad@ aston.dihor@yahoo.com
iabbrev adl@ astondihorlubis@gmail.com
iabbrev astondl Aston Dihor Lubis
abbrev pft PHPUnit_Framework_TestCase
abbrev chmst !sudo chmod -R 777 app/storage
abbrev gm !php artisan generate:model
abbrev gc !php artisan generate:controller
abbrev gmig !php artisan generate:migration
abbrev gseed !php artisan generate:seed
abbrev dump !php artisan dump-autoload
abbrev ff :! open -a firefox.app %:p<CR>


" Cursor
" if &term =~ "xterm\\|rxvt"
if &term =~ "xterm-256color"
	" use an orange cursor in insert mode
	let &t_SI = "\<Esc>]12;orange\x7"
	" use a red cursor otherwise
	let &t_EI = "\<Esc>]12;red\x7"
	silent !echo -ne "\033]12;red\007"
	" reset cursor when vim exits
	autocmd VimLeave * silent !echo -ne "\033]112\007"
	" use \003]12;gray\007 for gnome-terminal
endif

if &term =~ 'xterm-256color'
	" solid underscore
	" let &t_SI .= "\<Esc>[4 q"
	let &t_SI = "\<Esc>]50;CursorShape=1\x7"
	" solid block
	" let &t_EI .= "\<Esc>[2 q"
	let &t_EI = "\<Esc>]50;CursorShape=0\x7"
	" 1 or 0 -> blinking block
	" 3 -> blinking underscore
	" Recent versions of xterm (282 or above) also support
	" 5 -> blinking vertical bar
	" 6 -> solid vertical bar
endif

" changes the cursor shape/color
" in the terminal depending on the mode
" see http://code.google.com/p/iterm2/issues/detail?id=710&q=cursor
function! SetCursorStyle()
	" if &term =~ "xterm\\|rxvt"
	if &term =~ "xterm-256color"
		" use a | cursor in insert mode
		let &t_SI = "\<Esc>]50;CursorShape=6\x7"

		" use a rectangle cursor otherwise
		let &t_EI = "\<Esc>]50;CursorShape=0\x7"

		" reset cursor when vim exits
		autocmd VimLeave * silent !echo -ne "\<Esc>]50;CursorShape=0\x7"

	endif
endfunction





if has("autocmd")
	" Save on FocusLost
	" au FocusLost * :silent! wall

	" Disable paste mode when leaving Insert Mode
	au InsertLeave * set nopaste

	" Return to normal mode on FocustLost"
	au FocusLost * call feedkeys("\<C-\>\<C-n>")

	au VimResized * wincmd =
	au VimResized * exe "normal! \<c-w>="

	" Reload ~/.vimrc when saved
	autocmd bufwritepost .vimrc source ~/.vimrc
endif


" MacOS X clipboard sharing
" :.!pbcopy "Copy current line clipboard
" :4,8!pbcopy "Copy line 4 to 8
" :!echo "%:p" | pbcopy "Copy current filename to clipboard
" :r !pbpaste "Paste clipboard content to current line
" set clipboard=unnamed
" map <F2> :.w !pbcopy<CR><CR>
" map <F3> :r !pbpaste<CR>
" nmap <F1> :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
" imap <F1> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
" nmap <F2> :.w !pbcopy<CR><CR>
" vmap <F2> :w !pbcopy<CR><CR>
" ggVG
" :!tee >(pbcopy)
" ggVG
" :w !pbcopy

hi MatchParen   ctermfg=014 guifg=#00ffff ctermbg=023  guibg=#005F5F cterm=none gui=none


" Finally, we have now set a whole bunch of different filetypes for specific
" filenames. If ViM hadn't auto-recognized the filetype to begin with, syntax
" might not have been loaded.
if &t_Co > 2 || has("gui_running")
	if !exists("syntax_on")
		syntax on
	endif
endif


" vim: set sw=2 :
