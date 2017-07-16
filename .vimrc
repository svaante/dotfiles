"-------~---~----------~----------~----
" svaante's vimrc
"   svaante@gmail.com
"-------~---~----------~----------~----

"-------~---~----------~----------~----
" Basics
    set nocompatible
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

    Bundle 'christoomey/vim-tmux-navigator'

    Bundle 'chriskempson/base16-vim'

    Bundle 'LaTeX-Box-Team/LaTeX-Box'

    Bundle 'vimwiki/vimwiki'

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

    " Super low delay
    set timeoutlen=500

    " Make backspace more flexible
    set backspace=indent,eol,start

    " Support fileformats in this order
    set fileformats=unix,mac,dos

    " Set incremental search
    set incsearch

    " Case insensitive
    set ignorecase

    " Higlight search
    set hlsearch

    " Do case-sensitive if there's a capital letter
    set smartcase

    " Read a file that has changed
    set autoread

    " Recursive find
    set path+=**

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

    " Colorscheme
    colorscheme base16-default-dark

    " Enable wildmenu
    set wildmenu

    " Longest match then cycle
    set wildmode=longest:full,full

    " Show line numbers
    set number

    " Show relative line numbers
    set relativenumber

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

    " Split below
    set splitbelow

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
    set linebreak

    " Uses auto indent
    set autoindent

    " Uses smart indet
    set smartindent

    " Uses wrap lines
    set wrap

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
       let g:syntastic_python_flake8_exec = 'python3'
       let g:syntastic_python_flake8_args = ['-m', 'flake8']
       let g:syntastic_javascript_checkers = ['eslint']
       let g:syntastic_always_populate_loc_list = 0
       let g:syntastic_cpp_compiler = 'clang++'
       let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
       let g:syntastic_auto_loc_list = 0
       let g:syntastic_check_on_open = 1
       let g:syntastic_check_on_wq = 0
    " Syntastic end

    " Ycm
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

    " Make Y consistent with C and D
        nnoremap Y y$

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

    " Fast buffer open
        nnoremap gb :ls<cr>:e #

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

