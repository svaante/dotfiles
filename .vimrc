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
    set lazyredraw                      " Do not redraw on macro
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
" end General
"-------~---~----------~----------~----

"-------~---~----------~----------~----
" Statusline
    function! GitBranch()
        return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
    endfunction

    function! StatuslineGit()
      let l:branchname = GitBranch()
      return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
    endfunction

    set laststatus=2                    " Show status always
    set statusline=                     " Empty statusline
    set statusline+=%#PmenuSel#         " Color
    set statusline+=%{StatuslineGit()}  " Branch name
    set statusline+=%#LineNr#           " Color
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
    set colorcolumn=81                  " Ruler to limit the line length
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
    set smarttab                        " Use smart tab
    set linebreak                       " Uses linebreaker
    set autoindent                      " Uses auto indent
    set smartindent                     " Uses smart indet
    set wrap                            " Uses wrap lines
    set list                            " Print unprintable chars
    set listchars=tab:>~,nbsp:_,trail:. " Set unprintable chars
" end Text and tab
"-------~---~----------~----------~----

"-------~---~----------~----------~----
" Mappings
    nnoremap <SPACE> <Nop>              " Unmap space
    map <SPACE> <leader>                " Map leader to space
    imap jk <Esc>                       " Smash <Esc> remap
    cmap jk <Esc>                       " Smash <Esc> remap
    nnoremap Y y$                       " Make Y consistent with C and D
    cmap w!! w !sudo tee % >/dev/null   " Write with sudo
    nnoremap Q @q                       " Making it easier to execute macro
    map <C-h> :wincmd h<CR>             " Move change windows to hjkl
    map <C-j> :wincmd j<CR>             " Move change windows to hjkl
    map <C-k> :wincmd k<CR>             " Move change windows to hjkl
    map <C-l> :wincmd l<CR>             " Move change windows to hjkl
    nnoremap <leader>b :ls <CR>:e #     " Fast buffer switch
    nmap <leader>d :w !git diff % -<CR> " Git diff
    nmap <leader>t <C-]>                " Goto tag
" end Mappings
"-------~---~----------~----------~----

"-------~---~----------~----------~----
" Plugins
    autocmd! BufWritePost * Neomake     " Run Neamake on bufwrite
" end Plugins
"-------~---~----------~----------~----
