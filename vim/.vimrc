"-------~---~----------~----------~----
" svaante's vimrc
"   svaante@gmail.com
"-------~---~----------~----------~----

"-------~---~----------~----------~----
" Setup bundel
    call plug#begin('~/.vim/bundle')

    Plug 'Lokaltog/vim-monotone'

    Plug 'neomake/neomake'

    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

    Plug 'christoomey/vim-tmux-navigator'
    Plug 'svaante/vimux'

    Plug 'vimwiki/vimwiki'

    Plug 'prabirshrestha/async.vim'
    Plug 'prabirshrestha/vim-lsp'

    Plug 'calviken/vim-gdscript3'

    call plug#end()
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
    set splitright                      " Switch to right window on vs
    set hidden                          " Switch buffers w/o saving
    set timeoutlen=500                  " Super low delay
    set backspace=indent,eol,start      " Make backspace more flexible
    set fileformats=unix,mac,dos        " Support fileformats in this order
    set incsearch                       " Set incremental search
    set ignorecase                      " Case insensitive
    set hlsearch                        " Higlight search
    set smartcase                       " Do case-sensitive if there's a capital letter
    set autoread                        " Read a file that has changed
    if executable('ag')                 " Set ack if availiable
        set grepprg=ag
    endif
    autocmd FileType gitcommit          " Set spell on gitcommit messages
    \ setlocal spell spelllang=en_us
" end General
"-------~---~----------~----------~----

"-------~---~----------~----------~----
" Statusline
    set laststatus=2                    " Show status always
    set statusline=                     " Empty statusline
    set statusline+=%f                  " File name tail
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
    colorscheme monotone                " Colorscheme
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
    nnoremap Q @q
    map <C-h> :wincmd h<CR>
    map <C-j> :wincmd j<CR>
    map <C-k> :wincmd k<CR>
    map <C-l> :wincmd l<CR>
    tnoremap <C-h> <C-w>h
    tnoremap <C-j> <C-w>j
    tnoremap <C-l> <C-w>l
    tnoremap <C-k> <C-w>k
    tnoremap <Esc> <C-W>N
    command Wall wall
    command Wq wq
    command W w
    command E e

    nnoremap <Leader>r :VimuxPromptCommand<cr>
    nnoremap <Leader>rr :VimuxRunLastCommand<cr>
    function! VimuxSlime()
      normal! gv"ty
      call VimuxOpenRunner()
      call VimuxSendText(@t)
    endfunction

    vmap <LocalLeader>s <Esc>:call VimuxSlime()<cr>

    nnoremap <leader>e :FZF<cr>
    let g:fzf_action = {
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit' }

" end Mappings
"-------~---~----------~----------~----

"-------~---~----------~----------~----
" Autocmd
    autocmd! BufWritePost * Neomake             " Run Neomake on bufwrite
    autocmd FileType gitcommit setlocal spell   " Set spell check for commit msg
    autocmd FileType tex setlocal spell         " Set spell check for tex
" end Autocmd
"-------~---~----------~----------~----

"-------~---~----------~----------~----
" Plugins
    if executable('pyls')
        au User lsp_setup call lsp#register_server({
            \ 'name': 'pyls',
            \ 'cmd': {server_info->['pyls']},
            \ 'whitelist': ['python'],
            \ })
    endif

    let g:vimwiki_list = [{'path': '~/Dropbox/wiki/vimwiki', 'ext': '.md', 'syntax': 'markdown'}]
" end Plugins
"-------~---~----------~----------~----
