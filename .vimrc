" Installation Instructions
"        1. Place file in home directory as .vimrc
"        2. Run the following command in terminal
"                mkdir .vim .vim/bundle .vim/backup .vim/swap .vim/cache .vim/undo; git clone https://github.com/gmarik/vundle.git .vim/bundle/vundle
"                vim +BundleInstall +qall
"        5. Restart Vim

set nocompatible
filetype off

let s:bundle_path=$HOME."/.vim/bundle/"
execute "set rtp+=".s:bundle_path."vundle/"
call vundle#rc()

Bundle 'gmarik/vundle'

" Language plugins
Bundle "bryanjswift/vim-rust"
Bundle "elzr/vim-json"
Bundle "empanda/vim-varnish"
Bundle "groenewege/vim-less"
Bundle "Glench/Vim-Jinja2-Syntax"
Bundle "kchmck/vim-coffee-script"
Bundle "PProvost/vim-ps1"
Bundle "rodjek/vim-puppet"
Bundle "tpope/vim-markdown"
Bundle "nono/vim-handlebars"

" Other plugins
Bundle "airblade/vim-gitgutter"
Bundle "godlygeek/tabular"
Bundle "kien/ctrlp.vim"
Bundle "Lokaltog/vim-easymotion"
Bundle "Lokaltog/vim-powerline"
Bundle "mileszs/ack.vim"
Bundle "mhinz/vim-startify"
Bundle "scrooloose/syntastic"
Bundle "tpope/vim-eunuch"
Bundle "tpope/vim-fugitive"

Bundle 'tsaleh/vim-align'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'maxbrunsfeld/vim-yankstack'
Bundle 'tpope/vim-eunuch'

Bundle 'michaeljsmith/vim-indent-object'
 let g:indentobject_meaningful_indentation = ["haml", "sass", "python", "yaml", "markdown"]
Bundle 'bling/vim-airline'
 let g:airline_left_sep = ''
 let g:airline_right_sep = ''
 let g:airline_branch_prefix = ''

Bundle 'sjl/badwolf'
Bundle 'altercation/vim-colors-solarized'
Bundle 'zaiste/Atom'
Bundle 'w0ng/vim-hybrid'
Bundle 'chriskempson/base16-vim'
Bundle 'Elive/vim-colorscheme-elive'
Bundle 'zeis/vim-kolor'

colorscheme desert
set background=light

"Enable filetype plugins
filetype plugin on
filetype indent on

"Set to auto read when a file is changed from the outside
set autoread

"Always show current position
set ruler

"Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Enable syntax highlighting
syntax enable

" Seriously, guys. It's not like :W is bound to anything anyway.
command! W :w

set visualbell

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif


" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2
