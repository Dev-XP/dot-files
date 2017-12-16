" Easier escape key
inoremap jk <ESC>
inoremap jK <ESC>
inoremap Jk <ESC>
inoremap JK <ESC>
vnoremap JK <ESC>

" Indent file without moving cursor
nnoremap g= gg=G``

" Better visual indentations
vnoremap > >gv
vnoremap < <gv

" Select most recently pasted text
nnoremap gp `[v`]

" Sets the leader character to `;`
let mapleader = ";"

" Set backspace to work as it should
set backspace=indent,eol,start

" CamelCasing movements
" normal mode
nmap <silent> w <Plug>CamelCaseMotion_w
nmap <silent> b <Plug>CamelCaseMotion_b
nmap <silent> e <Plug>CamelCaseMotion_e
" visual mode
xmap <silent> w <Plug>CamelCaseMotion_w
xmap <silent> b <Plug>CamelCaseMotion_b
xmap <silent> e <Plug>CamelCaseMotion_e
" text-objects
omap <silent> aw <Plug>CamelCaseMotion_iw
xmap <silent> aw <Plug>CamelCaseMotion_iw
omap <silent> iw <Plug>CamelCaseMotion_ie
xmap <silent> iw <Plug>CamelCaseMotion_ie
" operator pending mode
omap <silent> w <Plug>CamelCaseMotion_w
omap <silent> b <Plug>CamelCaseMotion_b
omap <silent> e <Plug>CamelCaseMotion_e[20~

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_quiet_messages = { "!level":  "errors" }

" Trim trailing whitespace
fun! TrimWhitespace()
    let l:save = winsaveview()
    %s/\s\+$//e
    call winrestview(l:save)
endfun
noremap <Leader>w :call TrimWhitespace()<CR>

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md PrettierAsync
