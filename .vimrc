""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" svaante's vimrc                                                                            "
"   svaante@gmail.com                                                                        "
"                                                                                            "
" Bundel include                                                                             "
"   omnicppcomplete                                             # For autocompleation        "
"   protodef                                                    # Automatiotion of class     "
"   fswitch                                                     # Switching header/source    "
"   snipMate                                                    # Insearting snippets        "
"   NERDTree                                                    # For filebrowsing           "
"   NERDCommentator                                             # For easy comments          "
"   bufexplorer                                                 # Easier buffer switching    "
"   vim-pad                                                     # Used for taking notes      "
"   powerline                                                   # A better commandline       "
"   delimitMate                                                 # Auto compleat ' ( {        " 
"   QuickFixHighlight                                           # Error report after compile "
"   shell                                                       # For windows fullscreen     "
"   css-color                                                   # Adding color to css files  "
"                                                                                            "
" What is needed                                                                             "
"   pearl                                                       # For protodef               " 
"   ctags                                                       # For auto complete          "
"   Ctrl-key unlocked by os                                     # For all the bindings       "
"   Meta-key unlocked by os                                     # For all the bindings       "
"                                                                                            "
" Todo                                                                                       "
"   look into minibufexplorer                                                                "
"   add win support                                                                          "
"   add gui support                                                                          "
"                                                                                            "
" Colorscheames                                                                              "
"   xoria256                                                                                 "
"   inkpot                                                                                   "
"                                                                                            "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Basics
    set nocompatible
    set background=light
" end Basics

" Setup bundel
    runtime! autoload/pathogen.vim
    silent! call pathogen#infect()
    silent! call pathogen#helptags()
" end Setup bundle

" General
    set clipboard+=unnamed                                      " Use X clipboard
    filetype plugin indent on                                   " Detect file types
    syntax on                                                   " Syntax highlightning 
    set nobackup                                                " Dissables backup
    set hidden                                                  " Switch buffers w/o saving
    set title                                                   " Sets title of vim
    set history=1000                                            " Make vim remember
    set undolevels=1000                                         " Make vim remember
    set undoreload=1000                                         " Make vim remember
    au BufWritePost .vimrc so ~/.vimrc                          " Auto reload vimrc on write
    set timeoutlen=500                                          " Super low delay
    set backspace=indent,eol,start                              " Make backspace more flexible
    set fileformats=unix,dos,mac                                " Support fileformats in this order
    set incsearch                                               " Set incremental search
    set shortmess=aOstT                                         " Shortens message to lose press to con
" end General

" Statusline
    set laststatus=2                                            " Show status always
    set wildignore+=*.a,*.o                                     " Ignore file extensions
    set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png               " Ignore file extensions
    set wildignore+=.DS_Store,.git,.hg,.svn                     " Ignore file extensions
    set wildignore+=*~,*.swp,*.tmp                              " Ignore file extensions
    set statusline=%t                                           " Tail of the filename
    set statusline+=[%{strlen(&fenc)?&fenc:'none'},             " File encoding
    set statusline+=%{&ff}]                                     " File format
    set statusline+=%h                                          " Help file flag
    set statusline+=%m                                          " Modified flag
    set statusline+=%r                                          " Read only flag
    set statusline+=%y                                          " Filetype
    set statusline+=%=                                          " Left/right separator
    set statusline+=%c,                                         " Cursor column
    set statusline+=%l/%L                                       " Cursor line/total lines
    set statusline+=\ %P                                        " Percent through file
" end Statusline

" Graphics
    colorscheme navajo-night                                    " Set butiful collor scheme
    set wildmenu                                                " Enable wildmenu
    set wildmode=longest:full,full                              " Longest match then cycle
    set number                                                  " Show line numbers
    set showcmd                                                 " Show cmd
    set showmatch                                               " Show matching brackets
    set foldenable                                              " Enable fold
    set ruler                                                   " Shows cursor position
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)          " Set ruler format
" end Graphics

" Error
    set noerrorbells                                            " Remove error bells
    set novisualbell                                            " Remove visual bells
    set t_vb=0                                                  " Sets visual bell to 0
" end Error

" Text and tab
    set expandtab                                               " Use the apropriate spaces
    set shiftwidth=4                                            " Sets shift with to 4
    set tabstop=4                                               " Sets tab stop to 4
    set smarttab                                                " Use smart tab
    set lbr                                                     " Uses linebreaker
    set ai                                                      " Uses auto indent
    set si                                                      " Uses smart indet
    set wrap                                                    " Uses wrap lines
    au InsertLeave * set nopaste                                " Disabels pastemode when leaving insertmode
" end Text and tab

" Tags
    set tags+=./tags                                            " Look for tags
    set tags+=~/.vim/tags/std                                   " Set tags for std
    set tags+=~/.vim/tags/gl                                    " Set tags for ql
    set tags+=~/.vim/tags/qt4                                   " Set tags for qt4       
    set tags+=~/.vim/tags/sfml                                  " Set tags for sfml
    set tags+=~/.vim/tags/sdl                                   " Set tags for sdl
" end Tags

" Plugins
    " bufExplorer
        let g:bufExplorerShowRelativePath=0                     " Show relative path
        let g:bufExplorerDetailedHelp=0                         " Show detailed help
        let g:bufExplorerDefaultHelp=0                          " Dont show default help
        let g:bufExplorerSortBy='mru'                           " Sort by full file pathname
    " end bufExplorer
    
    " eclim
        " ,i imports whatever is needed for current line
        nnoremap <silent> <LocalLeader>i :JavaImport<cr>
        " ,d opens javadoc for statement in browser
        nnoremap <silent> <LocalLeader>d :JavaDocSearch -x declarations<cr>
        " ,<enter> searches context for statement
        nnoremap <silent> <LocalLeader><cr> :JavaSearchContext<cr>
        " ,jv validates current java file
        nnoremap <silent> <LocalLeader>jv :Validate<cr>
        " ,jc shows corrections for the current line of java
        nnoremap <silent> <LocalLeader>jc :JavaCorrect<cr>
        " 'open' on OSX will open the url in the default browser without issue
        let g:EclimBrowser='firefox'"
        let g:EclimCompletionMethod = 'omnifunc'
        let g:EclimJavaValidate=1
    " eclim end


    " NERDTree
        let NERDTreeShowHidden=1                                " Dont show hidden files in nerdtree
        let NERDTreeQuitOnOpen=1                                " Makes NerdTree close on opening file
        let NERDTreeMinimalUI=1                                 " Makes NERDtrees ui minimal
    " end NERDTree

    " vim-pads
        let g:pad_dir='/home/svaante/notes'                     " Sets the folder to save notes
        let g:pad_use_default_mappings=0                        " Disable vim-pads default mappings
    " end vim-pads

    " Protodef
        let protodefPath='~/.vim/bundle/protodef'               " Gives protodef the information where it is located
    " end Protodef

    " noteMake
        augroup filetypedetect
        au BufNewFile,BufRead *.notes setf notes
        augroup END
    " noteMaker end
    
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
    " Syntastic end
    
    " Ycm
        let g:ycm_global_ycm_extra_conf = '/home/svaante/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
        let g:ycm_autoclose_preview_window_after_completion=1
    " Ycm end

    " end Plugins

    " Smash <Esc> remap
    inoremap jk <Esc>
    cnoremap jk <Esc>

    inoremap kj <Esc>
    cnoremap kj <Esc>

    " Remap leader
    let mapleader='ö'

    " Write with sudo
    cmap w!! w !sudo tee % >/dev/null

    " Wrapped lines goes down/up to next row
    nnoremap j gj
    nnoremap k gk

    " Insert blank lines without leaving normal mode
    nmap T O<ESC>
    nmap t o<ESC>

    " Making it easier to execute macro
    nnoremap Q @q

    " Closing windows easier
    nnoremap <C-c> :q<CR>

    " Toggel nerdtree
    nmap <F1> :NERDTreeToggle <CR>

    " Open bufexplorer
        map <F2> <Leader>bej

    " Open term
        nmap <F3> :sh <CR>

    "" Insert definitions into sourcefile
        "    nmap <F3> -PP

    "" Switch to headerfile/sourcefile
        "    nmap <F4> :FSHere <CR>

    " Complie program
        autocmd FileType c,cpp map <buffer> <F5> :call VimuxRunCommand("make -C" . expand("%:p:h"))<CR>
        autocmd FileType java map <buffer> <F5> :call VimuxRunCommand("classpath2cli " . expand("%:p") .  " cr")<CR>

    " OpenPad to make a new pad
        nmap <F7> :OpenPad<CR>

    " ListPad to list all pads
        nmap <F8> :ListPads<CR>

    " Bind <F9> to open .vimrc
        nmap <F9> :e $MYVIMRC <CR>

    " Bind <F11> to fullscreen
        nmap <F11> :Fullscreen<CR>

    " Run ctags in the current folder for c++
        map <F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

    " Toggels the ability to paste without auto comments
        set pastetoggle=<F2>

    " Change W to w when writing in a hurry
        cnoreabbrev W w

    " Bind s and S to write and write all
        nmap s :SignClearAll<CR>:w<CR>
        nmap S :SignClearAll<CR>:wall<CR>

    " Alt k or j to move line up or down
        nmap <M-j> mz:m+ <CR> `z
        nmap <M-k> mz:m-2 <CR> `z

    " Move change windows with hjkl keys
        map <C-h> :wincmd h<CR>
    "    map <C-j> :wincmd j<CR>
    "    map <C-k> :wincmd k<CR>
        map <C-l> :wincmd l<CR>

    " end Bindings
