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
    set rtp+=~/.vim/bundle/Vundle.vim/
    call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'

    Bundle 'kien/ctrlp.vim'
    Bundle 'mileszs/ack.vim'

    Bundle 'SirVer/ultisnips'
    Bundle 'honza/vim-snippets'

    Bundle 'scrooloose/syntastic'
    Bundle 'Valloric/YouCompleteMe'
    Bundle 'rdnetto/YCM-Generator'

    Bundle 'Raimondi/delimitMate'
    Bundle 'tpope/vim-surround'
    Bundle 'wellle/targets.vim'

    Bundle 'sjl/gundo.vim'

    Bundle 'ConradIrwin/vim-bracketed-paste'

    Bundle 'tpope/vim-fugitive'
    Bundle 'airblade/vim-gitgutter'

    Bundle 'benmills/vimux'
    Bundle 'christoomey/vim-tmux-navigator'
    call vundle#end()
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

    " Case insensitive
    set ignorecase

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
" Plugins

    " delimate
        let delimitMate_expand_cr = 1
    " end delimate

    " eclim
        let g:EclimBrowser='firefox'"
        let g:EclimCompletionMethod = 'omnifunc'
        let g:EclimJavaValidate=1
    " eclim end

    " Syntastic
       set statusline+=%#warningmsg#
       set statusline+=%{SyntasticStatuslineFlag()}
       set statusline+=%*
       let g:syntastic_javascript_checkers = ['jshint']
       let g:syntastic_always_populate_loc_list = 0
       let g:syntastic_auto_loc_list = 0
       let g:syntastic_check_on_open = 1
       let g:syntastic_check_on_wq = 0
    " Syntastic end

    " Ycm
        let g:ycm_global_ycm_extra_conf=
                    \ '/home/svaante/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
        let g:ycm_autoclose_preview_window_after_completion = 1
        let g:ycm_min_num_of_chars_for_completion = 1
        let g:ycm_seed_identifiers_with_syntax = 1
        let g:ycm_add_preview_to_completeopt = 1
        let g:ycm_show_diagnostics_ui = 0
        let g:ycm_collect_identifiers_from_tags_files = 1
        let g:pymode_rope_complete_on_dot = 0
    " Ycm end

    " CtrlP
        au BufEnter * cal ctrlp#mrufiles#list(expand('<abuf>', 1))
        let ctrlp_switch_buffer=0
        let g:ctrlp_prompt_mappings = { 'PrtExit()': ['<esc>', '<c-c>'] }
    " CtrlP end

    " Vimux
        let g:VimuxUseNearestPane=1
        let g:VimuxOrientation="h"
        let g:VimuxHeight=40
    " Vimux end

" end Plugins
"-------~---~----------~----------~----

"-------~---~----------~----------~----
" Mappings

    " Map leader to space
        nnoremap <SPACE> <Nop>
        map <SPACE> <leader>

    " Smash <Esc> remap
        inoremap jk <Esc>
        cnoremap jk <Esc>
        inoremap kj <Esc>
        cnoremap kj <Esc>

    " Write with sudo
        cmap w!! w !sudo tee % >/dev/null

    " Making it easier to execute macro
        nnoremap Q @q

    " Closing windows easier
        nnoremap <C-c> :q<CR>

    " Move change windows with hjkl keys
        map <C-h> :wincmd h<CR>
        map <C-j> :wincmd j<CR>
        map <C-k> :wincmd k<CR>
        map <C-l> :wincmd l<CR>
        imap <C-h> jk:wincmd h<CR>
        imap <C-j> jk:wincmd j<CR>
        imap <C-k> jk:wincmd k<CR>
        imap <C-l> jk:wincmd l<CR>

    " Move down and up
        noremap J }
        noremap K {

    " Bind <F9> to open .vimrc
        nmap <leader>v :e $MYVIMRC <CR>

    " Plugin mappings

        " Gundo toggle map
            nmap <leader>g :GundoToggle <CR>

        " Goto def in ycm
            nmap <leader>d :YcmCompleter GoToDefinitionElseDeclaration<CR>
            "
        " Goto ref in ycm
            nmap <leader>r :YcmCompleter GoToReferences<CR>

        " Change buffer
            nmap <leader>b :CtrlPBuffer<CR>

        " Change buffer
            nmap <leader>f :CtrlP<CR>

        " Expand and jump
            let g:UltiSnipsExpandTrigger="<c-j>"
            let g:UltiSnipsJumpForwardTrigger="<c-j>"
            let g:UltiSnipsJumpBackwardTrigger="<c-k>"

    " end Plugin mappings

" end Mappings
"-------~---~----------~----------~----

"-------~---~----------~----------~----
" Functions
"
    function s:MkNonExDir(file, buf)
        if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
            let dir=fnamemodify(a:file, ':h')
            if !isdirectory(dir)
                call mkdir(dir, 'p')
            endif
        endif
    endfunction
    augroup BWCCreateDir
        autocmd!
        autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
    augroup END
" end Functions
"-------~---~----------~----------~----
