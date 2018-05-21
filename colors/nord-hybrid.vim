" File:       nord-hybrid.vim
" Maintainer: Michelle D Zhang (mdzhang)j
" URL:        https://github.com/mdzhang/vim-nord-hybrid
" Modified:   27 Jan 2013 07:33 AM AEST
" License:    MIT

" Description:"{{{
" ----------------------------------------------------------------------------

"}}}
" Requirements And Recommendations:"{{{
" ----------------------------------------------------------------------------

"}}}
" Initialisation:"{{{
" ----------------------------------------------------------------------------

hi clear

if exists("syntax_on")
  syntax reset
endif

let s:style = &background

let g:colors_name = "nord-hybrid"

"}}}
" GUI And Cterm Palettes:"{{{
" ----------------------------------------------------------------------------

let s:nord0_gui                = "#2E3440"
let s:nord1_gui                = "#3B4252"
let s:nord2_gui                = "#434C5E"
let s:nord3_gui                = "#4C566A"
let s:nord4_gui                = "#D8DEE9"
let s:nord5_gui                = "#E5E9F0"
let s:nord6_gui                = "#ECEFF4"
let s:nord7_gui                = "#8FBCBB"
let s:nord8_gui                = "#88C0D0"
let s:nord9_gui                = "#81A1C1"
let s:nord10_gui               = "#5E81AC"
let s:nord11_gui               = "#BF616A"
let s:nord12_gui               = "#D08770"
let s:nord13_gui               = "#EBCB8B"
let s:nord14_gui               = "#A3BE8C"
let s:nord15_gui               = "#B48EAD"

let s:nord0_term               = "0"
let s:nord1_term               = "0"
let s:nord2_term               = "8"
let s:nord3_term               = "8"
let s:nord5_term               = "7"
let s:nord6_term               = "15"
let s:nord7_term               = "14"
let s:nord8_term               = "6"
let s:nord9_term               = "4"
let s:nord10_term              = "12"
let s:nord11_term              = "1"
let s:nord12_term              = "11"
let s:nord13_term              = "3"
let s:nord14_term              = "2"
let s:nord15_term              = "5"

let s:gui_background           = s:nord0_gui
let s:gui_selection            = s:nord3_gui
let s:gui_line                 = "#282a2e" " TODO
let s:gui_comment              = s:nord3_gui

let s:palette                  = {'gui' : {} , 'cterm' : {}}

let s:palette.gui.background   = { 'dark' : s:gui_background, 'light' : "#e4e4e4" }
let s:palette.gui.foreground   = { 'dark' : s:nord5_gui,      'light' : "#000000" }
let s:palette.gui.selection    = { 'dark' : s:gui_selection,  'light' : "#bcbcbc" }
let s:palette.gui.line         = { 'dark' : s:gui_line,       'light' : "#d0d0d0" }
let s:palette.gui.comment      = { 'dark' : s:gui_comment,    'light' : "#5f5f5f" }
let s:palette.gui.red          = { 'dark' : s:nord11_gui,     'light' : "#5f0000" }
let s:palette.gui.orange       = { 'dark' : s:nord12_gui,     'light' : "#875f00" }
let s:palette.gui.yellow       = { 'dark' : s:nord13_gui,     'light' : "#5f5f00" }
let s:palette.gui.green        = { 'dark' : s:nord14_gui,     'light' : "#005f00" }
let s:palette.gui.aqua         = { 'dark' : s:nord8_gui,      'light' : "#005f5f" }
let s:palette.gui.blue         = { 'dark' : s:nord10_gui,     'light' : "#00005f" }
let s:palette.gui.purple       = { 'dark' : s:nord15_gui,     'light' : "#5f005f" }
let s:palette.gui.addbg        = { 'dark' : s:nord0_gui,      'light' : "#d7ffd7" }
let s:palette.gui.changebg     = { 'dark' : s:nord0_gui,      'light' : "#d7d7ff" }
let s:palette.gui.addfg        = { 'dark' : s:nord14_gui,     'light' : "#005f00" }
let s:palette.gui.changefg     = { 'dark' : s:nord13_gui,     'light' : "#5f005f" }
let s:palette.gui.delbg        = { 'dark' : s:nord11_gui,     'light' : "#ffd7d7" }
let s:palette.gui.window       = { 'dark' : s:nord2_gui,      'light' : "#9e9e9e" }
let s:palette.gui.darkcolumn   = { 'dark' : s:nord3_gui,      'light' : "#808080" }

let s:palette.cterm.background = { 'dark' : s:nord0_term,  'light' : "254" }
let s:palette.cterm.foreground = { 'dark' : s:nord5_term,  'light' : "16"  }
let s:palette.cterm.window     = { 'dark' : "236",         'light' : "247" }
let s:palette.cterm.selection  = { 'dark' : s:nord3_term,  'light' : "250" }
let s:palette.cterm.line       = { 'dark' : "235",         'light' : "252" }
let s:palette.cterm.comment    = { 'dark' : s:nord3_term,  'light' : "59"  }
let s:palette.cterm.red        = { 'dark' : s:nord11_term, 'light' : "52"  }
let s:palette.cterm.orange     = { 'dark' : s:nord12_term, 'light' : "94"  }
let s:palette.cterm.yellow     = { 'dark' : s:nord13_term, 'light' : "58"  }
let s:palette.cterm.green      = { 'dark' : s:nord14_term, 'light' : "22"  }
let s:palette.cterm.aqua       = { 'dark' : s:nord8_term,  'light' : "23"  }
let s:palette.cterm.blue       = { 'dark' : s:nord10_term, 'light' : "17"  }
let s:palette.cterm.purple     = { 'dark' : s:nord15_term, 'light' : "53"  }
let s:palette.cterm.darkcolumn = { 'dark' : s:nord3_term,  'light' : "244" }
let s:palette.cterm.addbg      = { 'dark' : s:nord0_term,  'light' : "194" }
let s:palette.cterm.addfg      = { 'dark' : s:nord14_term, 'light' : "22"  }
let s:palette.cterm.changebg   = { 'dark' : s:nord0_term,  'light' : "189" }
let s:palette.cterm.changefg   = { 'dark' : s:nord13_term, 'light' : "53"  }
let s:palette.cterm.delbg      = { 'dark' : s:nord11_term, 'light' : "224" }

"}}}
" Formatting Options:"{{{
" ----------------------------------------------------------------------------
let s:none                     = "NONE"
let s:t_none                   = "NONE"
let s:n                        = "NONE"
let s:c                        = ",undercurl"
let s:r                        = ",reverse"
let s:s                        = ",standout"
let s:b                        = ",bold"
let s:u                        = ",underline"
let s:i                        = ",italic"

"}}}
" Highlighting Primitives:"{{{
" ----------------------------------------------------------------------------
function! s:build_prim(hi_elem, field)
  " Given a:hi_elem = bg, a:field = comment
  let l:vname = "s:" . a:hi_elem . "_" . a:field " s:bg_comment
  let l:gui_assign = "gui".a:hi_elem."=".s:palette.gui[a:field][s:style] " guibg=...
  let l:cterm_assign = "cterm".a:hi_elem."=".s:palette.cterm[a:field][s:style] " ctermbg=...
  exe "let " . l:vname . " = ' " . l:gui_assign . " " . l:cterm_assign . "'"
endfunction

let s:bg_none = ' guibg=NONE ctermbg=NONE'
call s:build_prim('bg', 'foreground')
call s:build_prim('bg', 'background')
call s:build_prim('bg', 'selection')
call s:build_prim('bg', 'line')
call s:build_prim('bg', 'comment')
call s:build_prim('bg', 'red')
call s:build_prim('bg', 'orange')
call s:build_prim('bg', 'yellow')
call s:build_prim('bg', 'green')
call s:build_prim('bg', 'aqua')
call s:build_prim('bg', 'blue')
call s:build_prim('bg', 'darkcolumn')
call s:build_prim('bg', 'purple')
call s:build_prim('bg', 'window')
call s:build_prim('bg', 'addbg')
call s:build_prim('bg', 'addfg')
call s:build_prim('bg', 'changebg')
call s:build_prim('bg', 'changefg')
call s:build_prim('bg', 'delbg')

let s:fg_none = ' guifg=NONE ctermfg=NONE'
call s:build_prim('fg', 'foreground')
call s:build_prim('fg', 'background')
call s:build_prim('fg', 'selection')
call s:build_prim('fg', 'line')
call s:build_prim('fg', 'comment')
call s:build_prim('fg', 'red')
call s:build_prim('fg', 'orange')
call s:build_prim('fg', 'yellow')
call s:build_prim('fg', 'green')
call s:build_prim('fg', 'aqua')
call s:build_prim('fg', 'blue')
call s:build_prim('fg', 'darkcolumn')
call s:build_prim('fg', 'purple')
call s:build_prim('fg', 'window')
call s:build_prim('fg', 'addbg')
call s:build_prim('fg', 'addfg')
call s:build_prim('fg', 'changebg')
call s:build_prim('fg', 'changefg')

exe "let s:fmt_none = ' gui=NONE".          " cterm=NONE".          " term=NONE"        ."'"
exe "let s:fmt_bold = ' gui=NONE".s:b.      " cterm=NONE".s:b.      " term=NONE".s:b    ."'"
exe "let s:fmt_bldi = ' gui=NONE".s:b.      " cterm=NONE".s:b.      " term=NONE".s:b    ."'"
exe "let s:fmt_undr = ' gui=NONE".s:u.      " cterm=NONE".s:u.      " term=NONE".s:u    ."'"
exe "let s:fmt_undb = ' gui=NONE".s:u.s:b.  " cterm=NONE".s:u.s:b.  " term=NONE".s:u.s:b."'"
exe "let s:fmt_undi = ' gui=NONE".s:u.      " cterm=NONE".s:u.      " term=NONE".s:u    ."'"
exe "let s:fmt_curl = ' gui=NONE".s:c.      " cterm=NONE".s:c.      " term=NONE".s:c    ."'"
exe "let s:fmt_ital = ' gui=NONE".s:i.      " cterm=NONE".s:i.      " term=NONE".s:i    ."'"
exe "let s:fmt_stnd = ' gui=NONE".s:s.      " cterm=NONE".s:s.      " term=NONE".s:s    ."'"
exe "let s:fmt_revr = ' gui=NONE".s:r.      " cterm=NONE".s:r.      " term=NONE".s:r    ."'"
exe "let s:fmt_revb = ' gui=NONE".s:r.s:b.  " cterm=NONE".s:r.s:b.  " term=NONE".s:r.s:b."'"

exe "let s:sp_none       = ' guisp=". s:none                            ."'"
exe "let s:sp_foreground = ' guisp=". s:palette.gui.foreground[s:style] ."'"
exe "let s:sp_background = ' guisp=". s:palette.gui.background[s:style] ."'"
exe "let s:sp_selection  = ' guisp=". s:palette.gui.selection[s:style]  ."'"
exe "let s:sp_line       = ' guisp=". s:palette.gui.line[s:style]       ."'"
exe "let s:sp_comment    = ' guisp=". s:palette.gui.comment[s:style]    ."'"
exe "let s:sp_red        = ' guisp=". s:palette.gui.red[s:style]        ."'"
exe "let s:sp_orange     = ' guisp=". s:palette.gui.orange[s:style]     ."'"
exe "let s:sp_yellow     = ' guisp=". s:palette.gui.yellow[s:style]     ."'"
exe "let s:sp_green      = ' guisp=". s:palette.gui.green[s:style]      ."'"
exe "let s:sp_aqua       = ' guisp=". s:palette.gui.aqua[s:style]       ."'"
exe "let s:sp_blue       = ' guisp=". s:palette.gui.blue[s:style]       ."'"
exe "let s:sp_purple     = ' guisp=". s:palette.gui.purple[s:style]     ."'"
exe "let s:sp_window     = ' guisp=". s:palette.gui.window[s:style]     ."'"
exe "let s:sp_addbg      = ' guisp=". s:palette.gui.addbg[s:style]      ."'"
exe "let s:sp_addfg      = ' guisp=". s:palette.gui.addfg[s:style]      ."'"
exe "let s:sp_changebg   = ' guisp=". s:palette.gui.changebg[s:style]   ."'"
exe "let s:sp_changefg   = ' guisp=". s:palette.gui.changefg[s:style]   ."'"

"}}}
" Vim Highlighting: (see :help highlight-groups)"{{{
" ----------------------------------------------------------------------------
exe "hi! ColorColumn"   .s:fg_none        .s:bg_line        .s:fmt_none
"   Conceal"
"   Cursor"
"   CursorIM"
exe "hi! CursorColumn"  .s:fg_none        .s:bg_line        .s:fmt_none
exe "hi! CursorLine"    .s:fg_none        .s:bg_line        .s:fmt_none
exe "hi! Directory"     .s:fg_blue        .s:bg_none        .s:fmt_none
exe "hi! DiffAdd"       .s:fg_addfg       .s:bg_addbg       .s:fmt_none
exe "hi! DiffChange"    .s:fg_changefg    .s:bg_changebg    .s:fmt_none
exe "hi! DiffDelete"    .s:fg_background  .s:bg_delbg       .s:fmt_none
exe "hi! DiffText"      .s:fg_background  .s:bg_blue        .s:fmt_none
exe "hi! ErrorMsg"      .s:fg_background  .s:bg_red         .s:fmt_stnd
exe "hi! VertSplit"     .s:fg_window      .s:bg_none        .s:fmt_none
exe "hi! Folded"        .s:fg_comment     .s:bg_darkcolumn  .s:fmt_none
exe "hi! FoldColumn"    .s:fg_none        .s:bg_darkcolumn  .s:fmt_none
exe "hi! SignColumn"    .s:fg_none        .s:bg_darkcolumn  .s:fmt_none
"   Incsearch"
exe "hi! LineNr"        .s:fg_selection   .s:bg_none        .s:fmt_none
exe "hi! CursorLineNr"  .s:fg_yellow      .s:bg_none        .s:fmt_none
exe "hi! MatchParen"    .s:fg_yellow .s:bg_changebg    .s:fmt_none
exe "hi! ModeMsg"       .s:fg_green       .s:bg_none        .s:fmt_none
exe "hi! MoreMsg"       .s:fg_green       .s:bg_none        .s:fmt_none
exe "hi! NonText"       .s:fg_selection   .s:bg_none        .s:fmt_none
exe "hi! Pmenu"         .s:fg_foreground  .s:bg_selection   .s:fmt_none
exe "hi! PmenuSel"      .s:fg_foreground  .s:bg_selection   .s:fmt_revr
"   PmenuSbar"
"   PmenuThumb"
exe "hi! Question"      .s:fg_green       .s:bg_none        .s:fmt_none
exe "hi! Search"        .s:fg_background  .s:bg_yellow      .s:fmt_none
exe "hi! SpecialKey"    .s:fg_selection   .s:bg_none        .s:fmt_none
exe "hi! SpellCap"      .s:fg_blue        .s:bg_blue    .s:fmt_undr
exe "hi! SpellLocal"    .s:fg_aqua        .s:bg_aqua    .s:fmt_undr
exe "hi! SpellBad"      .s:fg_foreground  .s:bg_red     .s:fmt_undr
exe "hi! SpellRare"     .s:fg_purple      .s:bg_purple  .s:fmt_undr
exe "hi! StatusLine"    .s:fg_comment     .s:bg_background  .s:fmt_revr
exe "hi! StatusLineNC"  .s:fg_window      .s:bg_comment     .s:fmt_revr
exe "hi! TabLine"       .s:fg_foreground  .s:bg_darkcolumn  .s:fmt_revr
"   TabLineFill"
"   TabLineSel"
exe "hi! Title"         .s:fg_yellow      .s:bg_none        .s:fmt_none
exe "hi! Visual"        .s:fg_none        .s:bg_selection   .s:fmt_none
"   VisualNos"
exe "hi! WarningMsg"    .s:fg_red         .s:bg_none        .s:fmt_none
" FIXME LongLineWarning to use variables instead of hardcoding
hi LongLineWarning  guifg=NONE        guibg=#371F1C     gui=underline ctermfg=NONE        ctermbg=NONE        cterm=underline
"   WildMenu"

" Use defined custom background colour for terminal Vim.
if !has('gui_running') && exists("g:hybrid_custom_term_colors") && g:hybrid_custom_term_colors == 1
  let s:bg_normal = s:bg_none
else
  let s:bg_normal = s:bg_background
endif
exe "hi! Normal"        .s:fg_foreground  .s:bg_normal      .s:fmt_none

"}}}
" Generic Syntax Highlighting: (see :help group-name)"{{{
" ----------------------------------------------------------------------------
exe "hi! Comment"         .s:fg_comment     .s:bg_none        .s:fmt_none

exe "hi! Constant"        .s:fg_red         .s:bg_none        .s:fmt_none
exe "hi! String"          .s:fg_green       .s:bg_none        .s:fmt_none
"   Character"
"   Number"
"   Boolean"
"   Float"

exe "hi! Identifier"      .s:fg_purple      .s:bg_none        .s:fmt_none
exe "hi! Function"        .s:fg_yellow      .s:bg_none        .s:fmt_none

exe "hi! Statement"       .s:fg_blue        .s:bg_none        .s:fmt_none
"   Conditional"
"   Repeat"
"   Label"
exe "hi! Operator"        .s:fg_aqua        .s:bg_none        .s:fmt_none
"   Keyword"
"   Exception"

exe "hi! PreProc"         .s:fg_aqua        .s:bg_none        .s:fmt_none
"   Include"
"   Define"
"   Macro"
"   PreCondit"

exe "hi! Type"            .s:fg_orange      .s:bg_none        .s:fmt_none
"   StorageClass"
exe "hi! Structure"       .s:fg_aqua        .s:bg_none        .s:fmt_none
"   Typedef"

exe "hi! Special"         .s:fg_green       .s:bg_none        .s:fmt_none
"   SpecialChar"
"   Tag"
"   Delimiter"
"   SpecialComment"
"   Debug"
"
exe "hi! Underlined"      .s:fg_blue        .s:bg_none        .s:fmt_none

exe "hi! Ignore"          .s:fg_none        .s:bg_none        .s:fmt_none

exe "hi! Error"           .s:fg_foreground  .s:bg_red         .s:fmt_undr

exe "hi! Todo"            .s:fg_addfg       .s:bg_none        .s:fmt_none

" Quickfix window highlighting
exe "hi! qfLineNr"        .s:fg_yellow      .s:bg_none        .s:fmt_none
"   qfFileName"
"   qfLineNr"
"   qfError"

"}}}
" Diff Syntax Highlighting:"{{{
" ----------------------------------------------------------------------------
" Diff
"   diffOldFile
"   diffNewFile
"   diffFile
"   diffOnly
"   diffIdentical
"   diffDiffer
"   diffBDiffer
"   diffIsA
"   diffNoEOL
"   diffCommon
hi! link diffRemoved Constant
"   diffChanged
hi! link diffAdded Special
"   diffLine
"   diffSubname
"   diffComment

"}}}
"
" This is needed for some reason: {{{

let &background = s:style

" }}}
" Legal:"{{{
" ----------------------------------------------------------------------------
" Permission is hereby granted, free of charge, to any per‐
" son obtaining a copy of this software and associated doc‐
" umentation files (the “Software”), to deal in the Soft‐
" ware without restriction, including without limitation
" the rights to use, copy, modify, merge, publish, distrib‐
" ute, sublicense, and/or sell copies of the Software, and
" to permit persons to whom the Software is furnished to do
" so, subject to the following conditions:
"
" The above copyright notice and this permission notice
" shall be included in all copies or substantial portions
" of the Software.
"
" THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY
" KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO
" THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICU‐
" LAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
" DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CON‐
" TRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CON‐
" NECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.

" }}}
