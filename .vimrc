"-------~---~----------~----------~----
" svaante's vimrc
"   svaante@gmail.com
"-------~---~----------~----------~----

"-------~---~----------~----------~----
" Basics
    set nocompatible
    set background=light
    filetype off
" end Basics
"-------~---~----------~----------~----

"-------~---~----------~----------~----
" Setup bundel
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    Bundle 'kien/ctrlp.vim'
    Bundle 'scrooloose/nerdtree'
    Bundle 'corntrace/bufexplorer'

    Bundle 'Valloric/YouCompleteMe'
    Bundle 'SirVer/ultisnips'
    Bundle 'scrooloose/syntastic'

    Bundle 'sjl/gundo.vim'
    Bundle 'tpope/vim-fugitive'

    Bundle 'benmills/vimux'
    Bundle 'christoomey/vim-tmux-navigator'
" end Setup bundle
"-------~---~----------~----------~----

"-------~---~----------~----------~----
" General

    " Use X clipboard
    set clipboard+=unnamed

    " Detect file types
    filetype plugin indent on

    " Dissables backup
    set nobackup

    " Remove saftynet
    set nowritebackup

    " Remove saftynet
    set noswapfile

    " Switch buffers w/o saving
    set hidden

    " Sets title of vim
    set title

    " Make vim remember
    set history=1000

    " Make vim remember
    set undolevels=1000

    " Make vim remember
    set undoreload=1000

    " Set undo dir
    set undodir=~/.vim/undo

    " Use undofile
    set undofile

    " Super low delay
    set timeoutlen=500

    " Make backspace more flexible
    set backspace=indent,eol,start

    " Support fileformats in this order
    set fileformats=unix,dos,mac

    " Set incremental search
    set incsearch

    " Higlight search
    set hlsearch

    " Shortens message to lose press to con
    set shortmess=aOstT

    " Read a file that has changed
    set autoread

" end General
"-------~---~----------~----------~----

"-------~---~----------~----------~----
" Statusline

    " Show status always
    set laststatus=2

    " Show current mode
    set showmode

    " Ignore file extensions
    set wildignore+=*.a,*.o

    " Ignore file extensions
    set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png

    " Ignore file extensions
    set wildignore+=.DS_Store,.git,.hg,.svn

    " Ignore file extensions
    set wildignore+=*~,*.swp,*.tmp

    " Tail of the filename
    set statusline=%t

    " Get that git status
    set statusline+=%{exists('g:loaded_fugitive')?fugitive#statusline():''}

    " File encoding
    set statusline+=[%{strlen(&fenc)?&fenc:'none'},

    " File format
    set statusline+=%{&ff}]

    " Help file flag
    set statusline+=%h

    " Modified flag
    set statusline+=%m

    " Read only flag
    set statusline+=%r

    " Filetype
    set statusline+=%y

    " Left/right separator
    set statusline+=%=

    " Cursor column
    set statusline+=%c,

    " Cursor line/total lines
    set statusline+=%l/%L

    " Percent through file
    set statusline+=\ %P

" end Statusline
"-------~---~----------~----------~----

"-------~---~----------~----------~----
" Graphics

    " Set butiful collor scheme
    colorscheme navajo-night

    " Enable wildmenu
    set wildmenu

    " Longest match then cycle
    set wildmode=longest:full,full

    " Show line numbers
    set number

    " Show cmd
    set showcmd

    " Show matching brackets
    set showmatch

    " Enable fold
    set foldenable

    " Shows cursor position
    set ruler

    " Set ruler format
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)

    " Ruler to limit the line length
    set colorcolumn=81
" end Graphics
"-------~---~----------~----------~----

"-------~---~----------~----------~----
" Error

    " Remove error bells
    set noerrorbells

    " Remove visual bells
    set novisualbell

    " Sets visual bell to 0
    set t_vb=0

" end Error
"-------~---~----------~----------~----

"-------~---~----------~----------~----
" Text and tab
"
    " Use the apropriate spaces
    set expandtab

    " Sets shift with to 4
    set shiftwidth=4

    " Sets tab stop to 4
    set tabstop=4

    " Use smart tab
    set smarttab

    " Uses linebreaker
    set lbr

    " Uses auto indent
    set ai

    " Uses smart indet
    set si

    " Uses wrap lines
    set wrap

    " Disabels pastemode when leaving insertmode
    au InsertLeave * set nopaste

" end Text and tab
"-------~---~----------~----------~----

"-------~---~----------~----------~----
" Syntax

    " Syntax highlightning
    syntax on

    " Set unprintable chars
    set listchars=tab:>~,nbsp:_,trail:.

    " Print unprintable chars
    set list

    " Does what is says
    let java_allow_cpp_keywords=1

    " Syntax coloring lines are to long
    set synmaxcol=2048

" end Syntax
"-------~---~----------~----------~----

"-------~---~----------~----------~----
" Tags

    " When compleating show whole tag
    set showfulltag

    " Look for tags
    set tags+=./tags

    " Set tags for std
    set tags+=~/.vim/tags/std

    " Set tags for ql
    set tags+=~/.vim/tags/gl

    " Set tags for qt4
    set tags+=~/.vim/tags/qt4

    " Set tags for sfml
    set tags+=~/.vim/tags/sfml

    " Set tags for sdl
    set tags+=~/.vim/tags/sdl

" end Tags
"-------~---~----------~----------~----

"-------~---~----------~----------~----
" Plugins

    " bufExplorer

        " Show relative path
        let g:bufExplorerShowRelativePath=0

        " Show detailed help
        let g:bufExplorerDetailedHelp=0

        " Dont show default help
        let g:bufExplorerDefaultHelp=0

        " Sort by full file pathname
        let g:bufExplorerSortBy='mru'

        " Open bufexplorer
        map <F2> <Leader>bej

    " end bufExplorer

    " NERDTree

        " Dont show hidden files in nerdtree
        "let NERDTreeShowHidden=1

        " Makes NerdTree close on opening file
        let NERDTreeQuitOnOpen=1

        " Makes NERDtrees ui minimal
        "let NERDTreeMinimalUI=1

        " Don't display these kinds of files
        let NERDTreeIgnore=[ '\.ncb$', '\.suo$', '\.vcproj\.RIMNET', '\.obj$',
                   \ '\.ilk$', '^BuildLog.htm$', '\.pdb$', '\.idb$',
                   \ '\.embed\.manifest$', '\.embed\.manifest.res$',
                   \ '\.intermediate\.manifest$', '^mt.dep$' ]

        " Toggel nerdtree
        nmap <F1> :NERDTreeToggle <CR>

    " end NERDTree

    " eclim
        let g:EclimBrowser='firefox'"
        let g:EclimCompletionMethod = 'omnifunc'
        let g:EclimJavaValidate=1
    " eclim end

    " UtilSnips
        let g:UltiSnipsExpandTrigger="<c-j>"
        let g:UltiSnipsJumpForwardTrigger="<c-j>"
    " UtilSnips end

    " Vimux
        let g:VimuxUseNearestPane=1
        let g:VimuxOrientation="h"
        let g:VimuxHeight=40
    " Vimux end

    " Syntastic

        let g:syntastic_always_populate_loc_list = 1

        " Bind s and S to write and write all to remove those pesky signs
        nmap s :SignClearAll<CR>:w<CR>
        nmap S :SignClearAll<CR>:wall<CR>

    " Syntastic end

    " Ycm

        let g:ycm_global_ycm_extra_conf=
                    \ '/home/svaante/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

        let g:ycm_autoclose_preview_window_after_completion=1

        " Goto def
        nmap <C-d> :YcmCompleter GoToDefinition<CR>

    " Ycm end

    " Ctrlp

        nmap <C-p> :CtrlPMixed<CR>
        let g:ctrlp_working_path_mode = 'rc'
        let g:ctrlp_custom_ignore = '\v%(/\.%(git|hg|svn)|\.%(class|o|png|jpg|jpeg|bmp|tar|jar|tgz|deb|zip)$|/target/)'
    " Ctrlp end

    " Gundo

        nmap <F3> :GundoToggle <CR>

    " Ctrlp end

" end Plugins
"-------~---~----------~----------~----

"-------~---~----------~----------~----
" Mappings

    " Smash <Esc> remap
        inoremap jk <Esc>
        cnoremap jk <Esc>
        inoremap kj <Esc>
        cnoremap kj <Esc>

    " Write with sudo
        cmap w!! w !sudo tee % >/dev/null

    " Insert blank lines without leaving normal mode
        nmap T O<ESC>
        nmap t o<ESC>

    " Making it easier to execute macro
        nnoremap Q @q

    " Closing windows easier
        nnoremap <C-c> :q<CR>

    " Complie program
        autocmd FileType c,cpp map <buffer> <F5> :call VimuxRunCommand("make -C" . expand("%:p:h"))<CR>
        autocmd FileType java map <buffer> <F5> :call VimuxRunCommand("classpath2cli " . expand("%:p") .  " cr")<CR>

    " Bind <F9> to open .vimrc
        nmap <F9> :e $MYVIMRC <CR>

    " Run ctags in the current folder for c++
        map <F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

    " Toggels the ability to paste without auto comments
        set pastetoggle=<F2>

    " Change W to w when writing in a hurry
        cnoreabbrev W w

    " Move change windows with hjkl keys
        map <C-h> :wincmd h<CR>
        map <C-j> :wincmd j<CR>
        map <C-k> :wincmd k<CR>
        map <C-l> :wincmd l<CR>

    " end Mappings
"-------~---~----------~----------~----
