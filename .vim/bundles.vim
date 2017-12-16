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

" Enables Git features directly in Vim
call dein#add("tpope/vim-fugitive")

" Simplified clipboard management
call dein#add("svermeulen/vim-easyclip")
" Dependency:
call dein#add("tpope/vim-repeat")

" Useful pair-like features that utilize square brackets []
call dein#add('tpope/vim-unimpaired')

" Add surround action to Vim functionality
call dein#add("tpope/vim-surround")

" --------------------------------------------------
" Visuals
" --------------------------------------------------

" File explorer shelf for Vim
call dein#add('scrooloose/nerdtree')

" Shows a git diff in the gutter (sign column), allows staging/reverting/navigating of hunks
call dein#add('airblade/vim-gitgutter')

" Statusline with Powerline font
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')

" --------------------------------------------------
" Typing
" --------------------------------------------------

" Adds the ability to word jump by CamelCasing
call dein#add('bkad/CamelCaseMotion')

" Useful pair-like features that utilize square brackets []
call dein#add('scrooloose/syntastic')

" Add Sublime Multi-cursor support for Vim
call dein#add('terryma/vim-multiple-cursors')

" Adds JS Prettier support
call dein#add('prettier/vim-prettier')

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
