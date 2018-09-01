" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"
" VIM Atlantic (dark)
"
" ~/.vim/colors/atlantic-dark.vim
"
" Author: Ivan Bogachev <sfi0zy@gmail.com> (https://sfi0zy.github.io/), 2018
" License: MIT
"
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~



set background=dark
highlight clear

if exists('syntax on')
    syntax reset
endif



let g:colors_name='atlantic-dark'



" Colors for terminal (dconf: org->pantheon->terminal->settings):
"   background: #121212
"   foreground: #e4e4e4
"   palette:
"       #121212:#ff005f:#00af5f:#ffd787:#0087ff:#ff005f:#0087ff:#e4e4e4:
"       #1c1c1c:#ff005f:#00ad5f:#ffd787:#0087ff:#ff005f:#0087ff:#00875f

let s:black        = { 'cterm': '233', 'gui': '#121212' }
let s:dark_grey    = { 'cterm': '234', 'gui': '#1c1c1c' }
let s:white        = { 'cterm': '254', 'gui': '#e4e4e4' }
let s:light_green  = { 'cterm':  '35', 'gui': '#00af5f' }
let s:medium_green = { 'cterm':  '29', 'gui': '#00875f' }
let s:dark_green   = { 'cterm':  '23', 'gui': '#005f5f' }
let s:blue         = { 'cterm':  '33', 'gui': '#0087ff' }
let s:gold         = { 'cterm': '222', 'gui': '#ffd787' }
let s:red          = { 'cterm': '197', 'gui': '#ff005f' }



function! s:hi(group, fg, bg, style)
    let l:command = 'hi ' . a:group . ' '

    if (!empty(a:fg))
        let l:command .= 'ctermfg=' . a:fg['cterm'] 
                    \ .   ' guifg=' . a:fg['gui'] . ' '
    endif

    if (!empty(a:bg))
        let l:command .= 'ctermbg=' . a:bg['cterm']
                    \ .   ' guibg=' . a:bg['gui'] . ' '
    endif

    if (!empty(a:style))
        let l:command .= 'cterm=' . a:style
                    \ .   ' gui=' . a:style . ' '
    endif

    execute l:command
endfunction



" Preview of the color scheme:
" :so $VIMRUNTIME/syntax/hitest.vim

call s:hi('Normal',         s:white,        s:black,        '')
call s:hi('SpecialKey',     s:blue,         '',             '')
call s:hi('NonText',        s:white,        '',             '')
call s:hi('Directory',      s:blue,         '',             '')
call s:hi('ErrorMsg',       s:black,        s:red,          '')
call s:hi('IncSearch',      s:black,        s:gold,         '')
call s:hi('Search',         s:gold,         s:black,        '')
call s:hi('MoreMsg',        s:white,        '',             '')
call s:hi('ModeMsg',        s:white,        '',             'NONE')
call s:hi('LineNr',         s:dark_green,   '',             '')
call s:hi('CursorLineNr',   s:dark_green,   '',             '')
call s:hi('Question',       s:white,        '',             '')
call s:hi('StatusLine',     s:white,        s:dark_grey,    'NONE')
call s:hi('StatusLineNC',   s:dark_grey,    s:white,        '')
call s:hi('VertSplit',      s:dark_grey,    s:black,        '')
call s:hi('Title',          s:white,        '',             '')
call s:hi('Visual',         s:black,        s:white,        '')
call s:hi('VisualNOS',      s:black,        s:white,        '')
call s:hi('WarningMSG',     s:red,          '',             '')
call s:hi('WildMenu',       s:black,        s:gold,         '')
call s:hi('Folded',         s:blue,         s:dark_grey,    '')
call s:hi('FoldColumn',     s:blue,         s:dark_grey,    '')
call s:hi('DiffAdd',        s:medium_green, s:black,        'bold')
call s:hi('DiffChange',     s:white,        s:black,        'bold')
call s:hi('DiffDelete',     s:blue,         s:black,        'bold')
call s:hi('DiffText',       s:gold,         s:black,        'bold')
call s:hi('SignColumn',     s:blue,         s:dark_grey,    '')
call s:hi('Conceal',        s:white,        '',             '')
call s:hi('SpellBad',       s:red,          s:black,        'bold')
call s:hi('SpellCap',       s:red,          s:black,        'bold')
call s:hi('SpellRare',      s:light_green,  s:gold,         '')
call s:hi('SpellLocal',     s:blue,         s:white,        '')
call s:hi('Pmenu',          s:white,        s:dark_grey,    '')
call s:hi('PmenuSel',       s:white,        s:medium_green, '')
call s:hi('PmenuSbar',      s:white,        s:dark_grey,    '')
call s:hi('PmenuThumb',     s:dark_grey,    s:dark_green,   '')
call s:hi('TabLine',        s:white,        s:dark_grey,    '')
call s:hi('TabLineSel',     s:white,        '',             '')
call s:hi('TabLineFill',    s:black,        s:white,        '')
call s:hi('CursorColumn',   s:white,        s:dark_grey,    '')
call s:hi('CursorLine',     s:gold,         '',             '')
call s:hi('ColorColumn',    '',             s:dark_grey,    '')
call s:hi('MatchParen',     s:white,        s:blue,         '')
call s:hi('Comment',        s:dark_green,   '',             'italic')
call s:hi('Constant',       s:blue,         '',             '')
call s:hi('Special',        s:gold,         '',             '')
call s:hi('Identifier',     s:white,        '',             'NONE')
call s:hi('Statement',      s:light_green,  '',             '')
call s:hi('PreProc',        s:medium_green, '',             '')
call s:hi('Type',           s:light_green,  '',             '')
call s:hi('Underlined',     s:blue,         '',             '')
call s:hi('Error',          s:red,          s:black,        '')
call s:hi('Todo',           s:light_green,  s:black,        'underline,italic')

