" Vim color file - wombat256
" Generated by http://bytefluent.com/vivify 2013-01-05
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "wombat256"

"hi IncSearch -- no settings --
"hi WildMenu -- no settings --
"hi SignColumn -- no settings --
hi SpecialComment guifg=#ffdead guibg=NONE guisp=NONE gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE
hi Typedef guifg=#caeb82 guibg=NONE guisp=NONE gui=NONE ctermfg=192 ctermbg=NONE cterm=NONE
hi Title guifg=#f6f3e8 guibg=NONE guisp=NONE gui=bold ctermfg=230 ctermbg=NONE cterm=bold
hi Folded guifg=#a0a8b0 guibg=#404048 guisp=#404048 gui=NONE ctermfg=103 ctermbg=238 cterm=NONE
hi PreCondit guifg=#e5786d guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
hi Include guifg=#e5786d guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
"hi TabLineSel -- no settings --
hi StatusLineNC guifg=#857b6f guibg=#444444 guisp=#444444 gui=NONE ctermfg=101 ctermbg=238 cterm=NONE
"hi CTagsMember -- no settings --
hi NonText guifg=#857b6f guibg=#121212 guisp=#121212 gui=NONE ctermfg=101 ctermbg=233 cterm=NONE
"hi CTagsGlobalConstant -- no settings --
"hi DiffText -- no settings --
"hi ErrorMsg -- no settings --
"hi Ignore -- no settings --
hi Debug guifg=#ffdead guibg=NONE guisp=NONE gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#848688 guisp=#848688 gui=NONE ctermfg=NONE ctermbg=102 cterm=NONE
hi Identifier guifg=#caeb82 guibg=NONE guisp=NONE gui=NONE ctermfg=192 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#ffdead guibg=NONE guisp=NONE gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE
hi Conditional guifg=#caeb82 guibg=NONE guisp=NONE gui=NONE ctermfg=192 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#caeb82 guibg=NONE guisp=NONE gui=NONE ctermfg=192 ctermbg=NONE cterm=NONE
hi Todo guifg=#857b6f guibg=NONE guisp=NONE gui=italic ctermfg=101 ctermbg=NONE cterm=NONE
hi Special guifg=#ffdead guibg=NONE guisp=NONE gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE
hi LineNr guifg=#857b6f guibg=#121212 guisp=#121212 gui=NONE ctermfg=101 ctermbg=233 cterm=NONE
hi StatusLine guifg=#f6f3e8 guibg=#444444 guisp=#444444 gui=italic ctermfg=230 ctermbg=238 cterm=NONE
hi Normal guifg=#cccccc guibg=#242424 guisp=#242424 gui=NONE ctermfg=252 ctermbg=235 cterm=NONE
hi Label guifg=#caeb82 guibg=NONE guisp=NONE gui=NONE ctermfg=192 ctermbg=NONE cterm=NONE
"hi CTagsImport -- no settings --
hi PMenuSel guifg=#121212 guibg=#caeb82 guisp=#caeb82 gui=NONE ctermfg=233 ctermbg=192 cterm=NONE
hi Search guifg=#444444 guibg=#af87d7 guisp=#af87d7 gui=NONE ctermfg=238 ctermbg=140 cterm=NONE
"hi CTagsGlobalVariable -- no settings --
hi Delimiter guifg=#ffdead guibg=NONE guisp=NONE gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE
hi Statement guifg=#87afff guibg=NONE guisp=NONE gui=NONE ctermfg=111 ctermbg=NONE cterm=NONE
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
hi Comment guifg=#c0bc6c guibg=NONE guisp=NONE gui=italic ctermfg=143 ctermbg=NONE cterm=NONE
hi Character guifg=#e5786d guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
hi Float guifg=#e5786d guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
hi Number guifg=#e5786d guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
hi Boolean guifg=#87afff guibg=NONE guisp=NONE gui=NONE ctermfg=111 ctermbg=NONE cterm=NONE
hi Operator guifg=#caeb82 guibg=NONE guisp=NONE gui=NONE ctermfg=192 ctermbg=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#32322e guisp=#32322e gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
"hi Union -- no settings --
"hi TabLineFill -- no settings --
"hi Question -- no settings --
hi WarningMsg guifg=#ff0000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi VisualNOS guifg=#ecee90 guibg=#597418 guisp=#597418 gui=NONE ctermfg=228 ctermbg=64 cterm=NONE
"hi DiffDelete -- no settings --
"hi ModeMsg -- no settings --
hi CursorColumn guifg=NONE guibg=#2d2d2d guisp=#2d2d2d gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi Define guifg=#e5786d guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
hi Function guifg=#caeb82 guibg=NONE guisp=NONE gui=NONE ctermfg=192 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#a0a8b0 guibg=#404048 guisp=#404048 gui=NONE ctermfg=103 ctermbg=238 cterm=NONE
hi PreProc guifg=#e5786d guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
"hi EnumerationName -- no settings --
hi Visual guifg=#ecee90 guibg=#597418 guisp=#597418 gui=NONE ctermfg=228 ctermbg=64 cterm=NONE
"hi MoreMsg -- no settings --
"hi SpellCap -- no settings --
hi VertSplit guifg=#444444 guibg=#444444 guisp=#444444 gui=NONE ctermfg=238 ctermbg=238 cterm=NONE
hi Exception guifg=#caeb82 guibg=NONE guisp=NONE gui=NONE ctermfg=192 ctermbg=NONE cterm=NONE
hi Keyword guifg=#87afff guibg=NONE guisp=NONE gui=NONE ctermfg=111 ctermbg=NONE cterm=NONE
hi Type guifg=#caeb82 guibg=NONE guisp=NONE gui=NONE ctermfg=192 ctermbg=NONE cterm=NONE
"hi DiffChange -- no settings --
hi Cursor guifg=#222222 guibg=#ecee90 guisp=#ecee90 gui=NONE ctermfg=235 ctermbg=228 cterm=NONE
"hi SpellLocal -- no settings --
"hi Error -- no settings --
hi PMenu guifg=#f6f3e8 guibg=#444444 guisp=#444444 gui=NONE ctermfg=230 ctermbg=238 cterm=NONE
hi SpecialKey guifg=#6c6c6c guibg=#2d2d2d guisp=#2d2d2d gui=NONE ctermfg=242 ctermbg=236 cterm=NONE
hi Constant guifg=#e5786d guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
"hi DefinedName -- no settings --
hi Tag guifg=#ffdead guibg=NONE guisp=NONE gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE
hi String guifg=#95e454 guibg=NONE guisp=NONE gui=italic ctermfg=113 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#a4a6a8 guisp=#a4a6a8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi MatchParen guifg=#ecee90 guibg=#857b6f guisp=#857b6f gui=bold ctermfg=228 ctermbg=101 cterm=bold
"hi LocalVariable -- no settings --
hi Repeat guifg=#caeb82 guibg=NONE guisp=NONE gui=NONE ctermfg=192 ctermbg=NONE cterm=NONE
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
"hi Directory -- no settings --
hi Structure guifg=#caeb82 guibg=NONE guisp=NONE gui=NONE ctermfg=192 ctermbg=NONE cterm=NONE
hi Macro guifg=#e5786d guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
"hi Underlined -- no settings --
"hi DiffAdd -- no settings --
"hi TabLine -- no settings --
hi mbenormal guifg=#cfbfad guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=187 ctermbg=237 cterm=NONE
hi perlspecialstring guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi doxygenspecial guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi mbechanged guifg=#eeeeee guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=255 ctermbg=237 cterm=NONE
hi mbevisiblechanged guifg=#eeeeee guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=255 ctermbg=60 cterm=NONE
hi doxygenparam guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygensmallspecial guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygenprev guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi perlspecialmatch guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi cformat guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi lcursor guifg=#000000 guibg=#00e700 guisp=#00e700 gui=NONE ctermfg=NONE ctermbg=40 cterm=NONE
"hi cursorim -- no settings --
hi doxygenspecialmultilinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi taglisttagname guifg=#808bed guibg=NONE guisp=NONE gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
hi doxygenbrief guifg=#fdab60 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi mbevisiblenormal guifg=#cfcfcd guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=252 ctermbg=60 cterm=NONE
hi user2 guifg=#7070a0 guibg=#3e3e5e guisp=#3e3e5e gui=NONE ctermfg=103 ctermbg=60 cterm=NONE
hi user1 guifg=#00ff8b guibg=#3e3e5e guisp=#3e3e5e gui=NONE ctermfg=48 ctermbg=60 cterm=NONE
hi doxygenspecialonelinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi doxygencomment guifg=#ad7b20 guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi cspecialcharacter guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
"hi clear -- no settings --
hi attribute guifg=#CCCCCC guibg=NONE guisp=NONE gui=italic ctermfg=252 ctermbg=NONE cterm=NONE
hi statement guifg=#CCEE00 guibg=NONE guisp=NONE gui=italic ctermfg=190 ctermbg=NONE cterm=NONE
hi statementu guifg=#CCEE00 guibg=NONE guisp=NONE gui=underline ctermfg=190 ctermbg=NONE cterm=underline
hi keyword guifg=#CCEE00 guibg=NONE guisp=NONE gui=NONE ctermfg=190 ctermbg=NONE cterm=NONE
hi comment guifg=#BBCCEE guibg=NONE guisp=NONE gui=NONE ctermfg=189 ctermbg=NONE cterm=NONE
hi subtitle guifg=#FFFFFF guibg=#994444 guisp=#994444 gui=bold,underline ctermfg=15 ctermbg=131 cterm=bold,underline
"hi normal -- no settings --
hi htmlitalic guifg=#d0d0d0 guibg=#202020 guisp=#202020 gui=italic ctermfg=252 ctermbg=234 cterm=NONE
hi htmlboldunderlineitalic guifg=#d0d0d0 guibg=#202020 guisp=#202020 gui=bold,italic,underline ctermfg=252 ctermbg=234 cterm=bold,underline
hi htmlbolditalic guifg=#d0d0d0 guibg=#202020 guisp=#202020 gui=bold,italic ctermfg=252 ctermbg=234 cterm=bold
hi htmlunderlineitalic guifg=#d0d0d0 guibg=#202020 guisp=#202020 gui=italic,underline ctermfg=252 ctermbg=234 cterm=underline
hi htmlbold guifg=#d0d0d0 guibg=#202020 guisp=#202020 gui=bold ctermfg=252 ctermbg=234 cterm=bold
hi htmlboldunderline guifg=#d0d0d0 guibg=#202020 guisp=#202020 gui=bold,underline ctermfg=252 ctermbg=234 cterm=bold,underline
hi htmlunderline guifg=#d0d0d0 guibg=#202020 guisp=#202020 gui=underline ctermfg=252 ctermbg=234 cterm=underline
"hi default -- no settings --