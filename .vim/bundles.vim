if &compatible
  set nocompatible
endif
set runtimepath^=~/.vim/bundle/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/bundle'))

" Let Dein manage itself
" Required:
call dein#add('Shougo/dein.vim')


" --------------------------------------------------
" General
" --------------------------------------------------

" Simplified clipboard management
call dein#add("svermeulen/vim-easyclip")
" Dependency:
call dein#add("tpope/vim-repeat")

" Useful pair-like features that utilize square brackets []
call dein#add('tpope/vim-unimpaired')

" Add surround action to Vim functionality
call dein#add("tpope/vim-surround")

" --------------------------------------------------


" Required:
call dein#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
if dein#check_install()
  call dein#install()
endif
