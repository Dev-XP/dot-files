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
let g:syntastic_javascript_eslint_args = '--config dx/eslint.config.js'
let g:syntastic_quiet_messages = { "!level":  "error" }

" Trim trailing whitespace
fun! TrimWhitespace()
    let l:save = winsaveview()
    %s/\s\+$//e
    call winrestview(l:save)
endfun
noremap <Leader>w :call TrimWhitespace()<CR>

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.vue PrettierAsync
let g:prettier#exec_cmd_async = 1
let g:prettier#config#print_width = 80
let g:prettier#config#tab_width = 4
let g:prettier#config#use_tabs = 'false'
let g:prettier#config#semi = 'true'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#trailing_comma = 'all'

nnoremap <leader>c :call CopyToggle()<cr>

let g:copy_mode = 0
function! CopyToggle()
    if g:copy_mode
        setlocal number
        setlocal relativenumber
        let g:copy_mode = 0
    else
        setlocal nonumber
        setlocal norelativenumber
        let g:copy_mode = 1
    endif
endfunction

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
