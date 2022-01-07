" Ultraviolet Color theme
" Author: Matthew Coleman
" License: MIT

" Color Palette
let s:gray1     = '#0b0b14'
let s:gray2     = '#1b202a'
let s:gray3     = '#1b202a'
let s:gray4     = '#3b4c73'
let s:gray5     = '#777cb8'
let s:red       = '#cf516a'
let s:green     = '#7ee698'
let s:yellow    = '#ffe380'
let s:blue      = '#668cff'
let s:purple    = '#b37dff'
let s:cyan      = '#28e0c8'
let s:orange    = '#e87946'
let s:pink      = '#c47ebd'


let g:airline#themes#ultraviolet#palette = {}

" Normal
let s:N1 = [s:gray1, s:green, 235, 255]
let s:N2 = [s:blue, s:gray3, 248, 238]
let s:N3 = [s:cyan, s:gray3, 243, 236]
let s:N4 = [s:orange, '', 137, '', '']
let g:airline#themes#ultraviolet#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#ultraviolet#palette.normal_modified = {'airline_c': s:N4}

" Insert
let s:I1 = [s:gray1, s:cyan, 235, 67]
let g:airline#themes#ultraviolet#palette.insert = airline#themes#generate_color_map(s:I1, s:N2, s:N3)
let g:airline#themes#ultraviolet#palette.insert_modified =
			\ copy(g:airline#themes#ultraviolet#palette.normal_modified)

" Replace
let s:R1 = [s:gray1, s:orange, 235, 132]
let g:airline#themes#ultraviolet#palette.replace = airline#themes#generate_color_map(s:R1, s:N2, s:N3)
let g:airline#themes#ultraviolet#palette.replace_modified =
			\ copy(g:airline#themes#ultraviolet#palette.normal_modified)

" Visual
let s:V1 = [s:gray1, s:yellow , 235, 143]
let g:airline#themes#ultraviolet#palette.visual = airline#themes#generate_color_map(s:V1, s:N2, s:N3)
let g:airline#themes#ultraviolet#palette.visual_modified =
			\ copy(g:airline#themes#ultraviolet#palette.normal_modified)

" Inactive
let s:IA = [s:gray4, s:gray1, 237, 235, '']
let g:airline#themes#ultraviolet#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#ultraviolet#palette.inactive_modified =
			\ copy(g:airline#themes#ultraviolet#palette.normal_modified)

" Terminal
let s:T1 = [s:gray1, s:purple, 237, 235, '']
let g:airline#themes#ultraviolet#palette.terminal = airline#themes#generate_color_map(s:T1, s:N2, s:N3)

" Command Line
let g:airline#themes#ultraviolet#palette.commandline = airline#themes#generate_color_map(s:N2, s:N2, s:N3)

" Readonly status
let g:airline#themes#ultraviolet#palette.accents = {'red': [s:red, '', 132, '']}

" Ctrlp
if !get(g:, 'loaded_ctrlp', 0)
	finish
endif
let g:airline#themes#ultraviolet#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
			\ ['#9aa7bd', '#323c4d', 248, 237, ''],
			\ ['#b3785d', '#232936', 137, 235, ''],
			\ ['#232936', '#b3785d', 235, 137, 'bold'])
