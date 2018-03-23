" Sets a unified shared clipboard between yank and the OS
set clipboard=unnamed,unnamedplus

" Refresh source with F5
nnoremap <F5> :source $MYVIMRC<CR>:e<CR>

" Automatically re-source vimrc when a *.vim file is saved
augroup filetype_vim
    autocmd!
    autocmd BufWritePost *.vim :source $MYVIMRC
augroup END

" Turn off swap files
set noswapfile

" Disable backup files
set nobackup

" Set a designated Swap file directory
set directory=~/.vim/swap//

" Enable undo files and set a designated directory
set undodir=~/.vim/undo//
