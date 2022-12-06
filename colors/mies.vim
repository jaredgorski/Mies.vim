"
"
"
"      88b           d88 88
"      888b         d888 ""
"      88`8b       d8'88
"      88 `8b     d8' 88 88  ,adPPYba, ,adPPYba,
"      88  `8b   d8'  88 88 a8P_____88 I8[    ""
"      88   `8b d8'   88 88 8PP"""""""  `"Y8ba,
"      88    `888'    88 88 "8b,   ,aa aa    ]8I
"      88     `8'     88 88  `"Ybbd8"' `"YbbdP"'
"
"
"
" File:       mies.vim
" Maintainer: Jared Gorski <jaredgorski6@gmail.com>
" Repository: https://github.com/jaredgorski/Mies.vim
" License:    MIT

scriptencoding utf-8

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name="mies"

" ==========================
" Highlighting Function
" ==========================
fun! <sid>hi(group, fg, bg, attr)
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" .  a:fg.cterm256
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" .  a:bg.cterm256
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun

" ==========================
" Color Variables
" ==========================
let s:chicagoBlack1 = {'gui': '#080808', 'cterm256': '232'}
let s:chicagoBlack2 = {'gui': '#121212', 'cterm256': '233'}
let s:chicagoBlack3 = {'gui': '#1c1c1c', 'cterm256': '234'}
let s:chicagoBlack4 = {'gui': '#262626', 'cterm256': '235'}
let s:chicagoGray1 = {'gui': '#3E3D32', 'cterm256': '237'}
let s:chicagoGray2 = {'gui': '#49483E', 'cterm256': '239'}
let s:chicagoGray3 = {'gui': '#767676', 'cterm256': '243'}
let s:chicagoGray4 = {'gui': '#949494', 'cterm256': '246'}
let s:chicagoGray5 = {'gui': '#B0B0B0', 'cterm256': '249'}
let s:chicagoGray6 = {'gui': '#C6C6C6', 'cterm256': '251'}
let s:chicagoWhite1 = {'gui': '#D0D0D0', 'cterm256': '252'}
let s:chicagoWhite2 = {'gui': '#FFFFFF', 'cterm256': '231'}
let s:chicagoBlue = {'gui': '#5F8787', 'cterm256': '66'}
let s:chicagoGreen1 = {'gui': '#008700', 'cterm256': '28'}
let s:chicagoGreen2 = {'gui': '#00af5f', 'cterm256': '35'}
let s:chicagoGold1 = {'gui': '#8E700B', 'cterm256': '136'}
let s:chicagoGold2 = {'gui': '#D7AF00', 'cterm256': '178'}
let s:chicagoBrown = {'gui': '#5F5F00', 'cterm256': '58'}
let s:chicagoRed = {'gui': '#D70000', 'cterm256': '160'}
let s:none = {'gui': 'NONE', 'cterm256': 'NONE'}

" ==========================
" Definitions
" ==========================
" call <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE)
if &background == 'light'
  " Editor
  call <sid>hi('ColorColumn', s:none, s:chicagoGray4, 'none')
  call <sid>hi('Cursor', s:chicagoWhite2, s:chicagoBlack3, 'none')
  call <sid>hi('CursorColumn', s:none, s:chicagoWhite1, 'none')
  call <sid>hi('CursorLine', s:none, s:chicagoWhite1, 'none')
  call <sid>hi('CursorLineNr', s:chicagoBlack1, s:chicagoGray5, 'none')
  call <sid>hi('Directory', s:chicagoBlack1, s:none, 'none')
  call <sid>hi('FoldColumn', s:chicagoGray6, s:chicagoBlack4, 'none')
  call <sid>hi('Folded', s:chicagoGray4, s:none, 'none')
  call <sid>hi('IncSearch', s:chicagoGold2, s:chicagoGray1, 'none')
  call <sid>hi('LineNr', s:chicagoBlack3, s:chicagoGray6, 'none')
  call <sid>hi('MatchParen', s:chicagoBlack1, s:chicagoGray4, 'none')
  call <sid>hi('Normal', s:chicagoBlack1, s:chicagoWhite2, 'none')
  call <sid>hi('Pmenu', s:chicagoBlack1, s:chicagoGray6, 'none')
  call <sid>hi('PmenuSel', s:chicagoWhite2, s:chicagoGray4, 'none')
  call <sid>hi('Search', s:chicagoGold2, s:chicagoGray1, 'none')
  call <sid>hi('SignColumn', s:none, s:chicagoGray1, 'none')
  call <sid>hi('StatusLine', s:chicagoWhite2, s:chicagoGray1, 'none')
  call <sid>hi('StatusLineNC', s:chicagoGray6, s:chicagoGray1, 'none')
  call <sid>hi('VertSplit', s:chicagoBlack1, s:chicagoGray3, 'none')
  call <sid>hi('Visual', s:none, s:chicagoGray5, 'none')

  " General
  call <sid>hi('Boolean', s:chicagoBlack1, s:none, 'none')
  call <sid>hi('Character', s:chicagoBlack1, s:none, 'none')
  call <sid>hi('Comment', s:chicagoGray3, s:none, 'none')
  call <sid>hi('Conditional', s:chicagoBlack1, s:none, 'none')
  call <sid>hi('Constant', s:chicagoBlack1, s:none, 'none')
  call <sid>hi('Define', s:chicagoBlack1, s:none, 'none')
  call <sid>hi('DiffAdd', s:chicagoBlack1, s:chicagoGreen1, 'none')
  call <sid>hi('DiffChange', s:chicagoBlack1, s:chicagoGold2, 'none')
  call <sid>hi('DiffDelete', s:chicagoBlack1, s:chicagoRed, 'none')
  call <sid>hi('DiffText', s:chicagoGray1, s:chicagoBlue, 'none')
  call <sid>hi('ErrorMsg', s:chicagoBlack1, s:chicagoRed, 'none')
  call <sid>hi('Float', s:chicagoBlack1, s:none, 'none')
  call <sid>hi('Function', s:chicagoBlack1, s:none, 'none')
  call <sid>hi('Identifier', s:chicagoBlack1, s:none, 'none')
  call <sid>hi('Keyword', s:chicagoBlack1, s:none, 'none')
  call <sid>hi('Label', s:chicagoBlack1, s:none, 'none')
  call <sid>hi('NonText', s:chicagoGray1, s:none, 'none')
  call <sid>hi('Number', s:chicagoBlack1, s:none, 'none')
  call <sid>hi('Operator', s:chicagoBlack1, s:none, 'none')
  call <sid>hi('PreProc', s:chicagoBlack1, s:none, 'none')
  call <sid>hi('Special', s:chicagoBlack1, s:none, 'none')
  call <sid>hi('SpecialKey', s:chicagoBlack1, s:none, 'none')
  call <sid>hi('SpellBad', s:chicagoRed, s:none, 'italic,undercurl')
  call <sid>hi('SpellCap', s:chicagoBlack1, s:none, 'italic,undercurl')
  call <sid>hi('SpellLocal', s:chicagoBlack1, s:none, 'undercurl')
  call <sid>hi('Statement', s:chicagoBlack1, s:none, 'none')
  call <sid>hi('StorageClass', s:chicagoBlack1, s:none, 'none')
  call <sid>hi('String', s:chicagoBlack1, s:none, 'none')
  call <sid>hi('Tag', s:chicagoBlack1, s:none, 'none')
  call <sid>hi('Title', s:none, s:none, 'bold')
  call <sid>hi('Todo', s:chicagoGray3, s:none, 'inverse,bold')
  call <sid>hi('Type', s:none, s:none, 'none')
  call <sid>hi('Underlined', s:none, s:none, 'underline')
  call <sid>hi('WarningMsg', s:chicagoGold2, s:chicagoBlack3, 'none')

  " Diff Mode
  if &diff
    call <sid>hi('DiffAdd', s:chicagoWhite2, s:chicagoGreen1, 'none')
    call <sid>hi('DiffChange', s:chicagoWhite2, s:chicagoBrown, 'none')
    call <sid>hi('DiffDelete', s:chicagoRed, s:chicagoBrown, 'none')
    call <sid>hi('DiffText', s:chicagoGray1, s:chicagoBlue, 'none')
  else
    call <sid>hi('DiffAdd', s:chicagoBlack1, s:chicagoGreen1, 'none')
    call <sid>hi('DiffChange', s:chicagoGold2, s:chicagoGray1, 'none')
    call <sid>hi('DiffDelete', s:chicagoBlack1, s:chicagoRed, 'none')
    call <sid>hi('DiffText', s:chicagoWhite2, s:chicagoBlue, 'none')
  endif

  " ------------
  " Plugins
  " ------------

  " todo.txt
  call <sid>hi('TodoContext', s:chicagoBlack1, s:none, 'none')
  call <sid>hi('TodoDate', s:chicagoBlack1, s:none, 'none')
  call <sid>hi('TodoDone', s:chicagoGray3, s:none, 'none')
  call <sid>hi('TodoPriorityA', s:chicagoBlack1, s:none, 'none')
  call <sid>hi('TodoPriorityB', s:chicagoBlack1, s:none, 'none')
  call <sid>hi('TodoPriorityC', s:chicagoBlack1, s:none, 'none')
  call <sid>hi('TodoProject', s:chicagoBlack1, s:none, 'none')

  " Buftabline
  call <sid>hi('BufTabLineActive', s:chicagoBlack1, s:chicagoGray3, 'none')
  call <sid>hi('BufTabLineCurrent', s:chicagoBlack1, s:chicagoGray4, 'none')
  call <sid>hi('BufTabLineFill', s:chicagoBlack1, s:chicagoWhite2, 'none')
  call <sid>hi('BufTabLineHidden', s:chicagoGray3, s:chicagoBlack3, 'none')
else
  " Editor
  call <sid>hi('ColorColumn', s:none, s:chicagoGray2, 'none')
  call <sid>hi('Cursor', s:chicagoBlack2, s:chicagoWhite1, 'none')
  call <sid>hi('CursorColumn', s:none, s:chicagoBlack3, 'none')
  call <sid>hi('CursorLine', s:none, s:chicagoBlack4, 'none')
  call <sid>hi('CursorLineNr', s:chicagoWhite1, s:chicagoGray1, 'none')
  call <sid>hi('Directory', s:chicagoWhite1, s:chicagoBlack2, 'none')
  call <sid>hi('FoldColumn', s:chicagoGray6, s:chicagoBlack2, 'none')
  call <sid>hi('Folded', s:chicagoGray4, s:none, 'none')
  call <sid>hi('IncSearch', s:chicagoBlack2, s:chicagoGold1, 'none')
  call <sid>hi('LineNr', s:chicagoGray4, s:chicagoBlack4, 'none')
  call <sid>hi('MatchParen', s:chicagoWhite1, s:chicagoGray3, 'none')
  call <sid>hi('Normal', s:chicagoWhite1, s:chicagoBlack2, 'none')
  call <sid>hi('Pmenu', s:none, s:chicagoBlack4, 'none')
  call <sid>hi('PmenuSel', s:none, s:chicagoGray2, 'none')
  call <sid>hi('Search', s:chicagoBlack2, s:chicagoGold1, 'none')
  call <sid>hi('SignColumn', s:none, s:chicagoBlack3, 'none')
  call <sid>hi('StatusLine', s:chicagoBlack2, s:chicagoWhite1, 'none')
  call <sid>hi('StatusLineNC', s:chicagoGray1, s:chicagoGray5, 'none')
  call <sid>hi('VertSplit', s:chicagoBlack2, s:chicagoGray3, 'none')
  call <sid>hi('Visual', s:none, s:chicagoGray2, 'none')

  " General
  call <sid>hi('Boolean', s:chicagoWhite1, s:none, 'none')
  call <sid>hi('Character', s:chicagoWhite1, s:none, 'none')
  call <sid>hi('Comment', s:chicagoGray3, s:none, 'none')
  call <sid>hi('Conditional', s:chicagoWhite1, s:none, 'none')
  call <sid>hi('Constant', s:chicagoWhite1, s:none, 'none')
  call <sid>hi('Define', s:chicagoWhite1, s:none, 'none')
  call <sid>hi('DiffAdd', s:chicagoBlack2, s:chicagoGreen2, 'none')
  call <sid>hi('DiffChange', s:chicagoBlack2, s:chicagoGold1, 'none')
  call <sid>hi('DiffDelete', s:chicagoWhite1, s:chicagoRed, 'none')
  call <sid>hi('DiffText', s:chicagoBlack2, s:chicagoBlue, 'none')
  call <sid>hi('ErrorMsg', s:chicagoWhite1, s:chicagoRed, 'none')
  call <sid>hi('Float', s:chicagoWhite1, s:none, 'none')
  call <sid>hi('Function', s:chicagoWhite1, s:none, 'none')
  call <sid>hi('Identifier', s:chicagoWhite1, s:none, 'none')
  call <sid>hi('Keyword', s:chicagoWhite1, s:none, 'none')
  call <sid>hi('Label', s:chicagoWhite1, s:none, 'none')
  call <sid>hi('NonText', s:chicagoGray3, s:none, 'none')
  call <sid>hi('Number', s:chicagoWhite1, s:none, 'none')
  call <sid>hi('Operator', s:chicagoWhite1, s:none, 'none')
  call <sid>hi('PreProc', s:chicagoWhite1, s:none, 'none')
  call <sid>hi('Special', s:chicagoWhite1, s:none, 'none')
  call <sid>hi('SpecialKey', s:chicagoWhite1, s:none, 'none')
  call <sid>hi('SpellBad', s:chicagoRed, s:none, 'italic,undercurl')
  call <sid>hi('SpellCap', s:chicagoWhite1, s:none, 'italic,undercurl')
  call <sid>hi('SpellLocal', s:chicagoWhite1, s:none, 'undercurl')
  call <sid>hi('Statement', s:chicagoWhite1, s:none, 'none')
  call <sid>hi('StorageClass', s:chicagoWhite1, s:none, 'none')
  call <sid>hi('String', s:chicagoWhite1, s:none, 'none')
  call <sid>hi('Tag', s:chicagoWhite1, s:none, 'none')
  call <sid>hi('Title', s:none, s:none, 'bold')
  call <sid>hi('Todo', s:chicagoGray3, s:none, 'inverse,bold')
  call <sid>hi('Type', s:none, s:none, 'none')
  call <sid>hi('Underlined', s:none, s:none, 'underline')
  call <sid>hi('WarningMsg', s:chicagoBlack2, s:chicagoGold1, 'none')

  " Diff Mode
  if &diff
    call <sid>hi('DiffAdd', s:chicagoBlack2, s:chicagoGreen2, 'none')
    call <sid>hi('DiffChange', s:chicagoBlack2, s:chicagoGold1, 'none')
    call <sid>hi('DiffDelete', s:chicagoRed, s:chicagoBrown, 'none')
    call <sid>hi('DiffText', s:chicagoBlack2, s:chicagoBlue, 'none')
  else
    call <sid>hi('DiffAdd', s:chicagoGreen2, s:none, 'none')
    call <sid>hi('DiffChange', s:chicagoGold1, s:none, 'none')
    call <sid>hi('DiffDelete', s:chicagoRed, s:none, 'none')
    call <sid>hi('DiffText', s:chicagoBlack2, s:chicagoBlue, 'none')
  endif

  " ------------
  " Plugins
  " ------------

  " todo.txt
  call <sid>hi('TodoContext', s:chicagoWhite1, s:none, 'none')
  call <sid>hi('TodoDate', s:chicagoWhite1, s:none, 'none')
  call <sid>hi('TodoDone', s:chicagoGray3, s:none, 'none')
  call <sid>hi('TodoPriorityA', s:chicagoWhite1, s:none, 'none')
  call <sid>hi('TodoPriorityB', s:chicagoWhite1, s:none, 'none')
  call <sid>hi('TodoPriorityC', s:chicagoWhite1, s:none, 'none')
  call <sid>hi('TodoProject', s:chicagoWhite1, s:none, 'none')

  " Buftabline
  call <sid>hi('BufTabLineActive', s:chicagoWhite1, s:chicagoGray2, 'none')
  call <sid>hi('BufTabLineCurrent', s:chicagoBlack2, s:chicagoGray5, 'none')
  call <sid>hi('BufTabLineFill', s:chicagoBlack2, s:chicagoBlack2, 'none')
  call <sid>hi('BufTabLineHidden', s:chicagoGray3, s:chicagoBlack4, 'none')
endif
