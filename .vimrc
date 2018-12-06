colorscheme delek
" Copied this from the guy who made vagarant.


let mapleader=";"         " The <leader> key
set autoread              " Reload files that have not been modified
set colorcolumn=79        " Highlight 79 character limit
"set list                  " Show invisible characters
"set listchars=tab:›\ ,eol:¬,trail:⋅ "Set the characters for the invisibles
set number
set ruler                 " Show the line number and column in the status bar
set t_Co=256              " Use 256 colors
set scrolloff=999         " Keep the cursor centered in the screen
set showmatch             " Highlight matching braces
set splitbelow            " Splits show up below by default
set splitright            " Splits go to the right by default


" Search settings
set hlsearch   " Highlight results
set ignorecase " Ignore casing of searches
set incsearch  " Start showing results as you type
set smartcase  " Be smart about case sensitivity when searching

" Tab settings
set expandtab     " Expand tabs to the proper type and size
set tabstop=4     " Tabs width in spaces
set softtabstop=4 " Soft tab width in spaces
set shiftwidth=4  " Amount of spaces when shifting

" Get rid of search highlights
noremap <silent><leader>' :nohlsearch<cr>

" Clear whitespace at the end of lines automatically
autocmd BufWritePre * :%s/\s\+$//e
" Command to write as root if we dont' have permission
cmap w!! %!sudo tee > /dev/null %
