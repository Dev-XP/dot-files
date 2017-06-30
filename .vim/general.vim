" Sets a unified shared clipboard between yank and the OS
set clipboard=unnamed

" Refresh source with F5
nnoremap <F5> :source $MYVIMRC<CR>:e<CR>

" Automatically re-source vimrc when a *.vim file is saved
augroup filetype_vim
    autocmd!
    autocmd BufWritePost *.vim :source $MYVIMRC
augroup END
