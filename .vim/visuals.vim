" Enables syntax highlighting
syntax enable

" Set indentation level
set tabstop=4
set shiftwidth=4
set expandtab

" Set line width
set tw=80

" Don't wrap long lines (soft wrap)
set nowrap

" Set relative numbering for better navigation
" with the current line number
set relativenumber
set number

" Toggle NERDTree
nmap <LEADER>n :NERDTreeToggle<CR>

" Always show the status line
set laststatus=2

" Airline Status Line settings
let g:airline_theme='dark'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
