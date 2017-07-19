"-------~---~----------~----------~----
" svaante's vimrc
"   svaante@gmail.com
"-------~---~----------~----------~----

"-------~---~----------~----------~----
" Setup bundel
    set rtp+=~/.vim/bundle/Vundle.vim/
    call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'

    Bundle 'neomake/neomake'

    Bundle 'christoomey/vim-tmux-navigator'

    Bundle 'chriskempson/base16-vim'

    call vundle#end()
" end Setup bundle
"-------~---~----------~----------~----

"-------~---~----------~----------~----
" General
    filetype plugin indent on           " Detect file types
    set t_Co=256                        " Color mode
    set clipboard+=unnamed              " Use X clipboard
    set history=10000                   " Make vim remember cmds
    set nobackup                        " Dissables backup
    set nowritebackup                   " Remove saftynet
    set noswapfile                      " Remove saftynet
    set hidden                          " Switch buffers w/o saving
    set timeoutlen=500                  " Super low delay
    set backspace=indent,eol,start      " Make backspace more flexible
    set fileformats=unix,mac,dos        " Support fileformats in this order
    set incsearch                       " Set incremental search
    set ignorecase                      " Case insensitive
    set hlsearch                        " Higlight search
    set smartcase                       " Do case-sensitive if there's a capital letter
    set autoread                        " Read a file that has changed
    set path+=**                        " Recursive find
    set tags=tags;/                     " Bubble search for for tags files
    if executable('ack')                " Set ack if availiable
        set grepprg=ack
    endif
" end General
"-------~---~----------~----------~----

"-------~---~----------~----------~----
" Statusline
    set laststatus=2                    " Show status always
    set statusline=                     " Empty statusline
    set statusline+=%t                  " File name tail
    set statusline+=%h                  " Help file flag
    set statusline+=%m                  " Modified flag
    set statusline+=%r                  " Read only flag
    set statusline+=%y                  " Filetype
    set statusline+=\[%{&fileformat}\]  " Fileformat
    set statusline+=%=                  " Left/right separator
    set statusline+=%c,                 " Cursor column
    set statusline+=%l/%L               " Cursor line/total lines
    set statusline+=\ %P                " Percent through file
" end Statusline
"-------~---~----------~----------~----

"-------~---~----------~----------~----
" Graphics
    syntax on                           " Syntax highlightning
    colorscheme base16-default-dark     " Colorscheme
    set synmaxcol=2048                  " Syntax coloring lines are to long
    set wildmenu                        " Enable wildmenu
    set wildmode=longest:full,full      " Auto complete to longest matching and show tab
    set wildignore+=*.a,*.o             " Ignore file extensions
    set wildignore+=.DS_Store,.gi       " Ignore file extensionst
    set showmode                        " Show current mode
    set number                          " Show line numbers
    set relativenumber                  " Show relative line numbers
    set showcmd                         " Show cmd
    set showmatch                       " Show matching brackets
    set colorcolumn=81                  " Colum to limit the line length
" end Graphics
"-------~---~----------~----------~----

"-------~---~----------~----------~----
" Error
    set noerrorbells                    " Remove error bells
    set novisualbell                    " Remove visual bells
    set t_vb=0                          " Sets visual bell to 0
" end Error
"-------~---~----------~----------~----

"-------~---~----------~----------~----
" Text and tab
    set expandtab                       " Use the apropriate spaces
    set shiftwidth=4                    " Sets shift with to 4
    set tabstop=4                       " Sets tab stop to 4
    set softtabstop=4                   " Set soft tab stop
    set smarttab                        " Smart tab
    set wrap                            " Uses wrap lines
    set list                            " Print unprintable chars
    set listchars=tab:>~,nbsp:_,trail:. " Set unprintable chars
" end Text and tab
"-------~---~----------~----------~----

"-------~---~----------~----------~----
" Mappings
    nnoremap <SPACE> <Nop>
    map <SPACE> <leader>
    imap jk <Esc>
    cmap jk <C-f>
    nnoremap Y y$
    cmap w!! w !sudo tee % >/dev/null
    cnoremap gr silent gr
    nnoremap Q @q
    map <C-h> :wincmd h<CR>
    map <C-j> :wincmd j<CR>
    map <C-k> :wincmd k<CR>
    map <C-l> :wincmd l<CR>
    nmap <leader> d :w !git diff % - <CR>
    command Wall wall
    command Wq wq
    command W w
    command E e
" end Mappings
"-------~---~----------~----------~----

"-------~---~----------~----------~----
" Plugins
    autocmd! BufWritePost * Neomake     " Run Neamake on bufwrite
    let g:neomake_javascript_enabled_makers = ['eslint']
" end Plugins
"-------~---~----------~----------~----
