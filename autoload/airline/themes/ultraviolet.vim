
"  ___  ___  ___   _________  ________  ________  ___      ___ ___  ________  ___       _______  _________
" |\  \|\  \|\  \ |\___   ___\\   __  \|\   __  \|\  \    /  /|\  \|\   __  \|\  \     |\  ___ \|\___   ___\
" \ \  \\\  \ \  \\|___ \  \_\ \  \|\  \ \  \|\  \ \  \  /  / | \  \ \  \|\  \ \  \    \ \   __/\|___ \  \_|
"  \ \  \\\  \ \  \    \ \  \ \ \   _  _\ \   __  \ \  \/  / / \ \  \ \  \\\  \ \  \    \ \  \_|/__  \ \  \
"   \ \  \\\  \ \  \____\ \  \ \ \  \\  \\ \  \ \  \ \    / /   \ \  \ \  \\\  \ \  \____\ \  \_|\ \  \ \  \
"    \ \_______\ \_______\ \__\ \ \__\\ _\\ \__\ \__\ \__/ /     \ \__\ \_______\ \_______\ \_______\  \ \__\
"     \|_______|\|_______|\|__|  \|__|\|__|\|__|\|__|\|__|/       \|__|\|_______|\|_______|\|_______|   \|__|

" Author:	Matthew Coleman
" File:		ultraviolet.vim
" Maintainer:	msc5 <msc5.coleman@gmail.com>
" Modified:	2022-01-06
" License:	MIT

" Color Palette
let s:gray1     = '#0b0b14'
let s:gray2     = '#13131f'
let s:gray3     = '#191830'
let s:gray4     = '#292e5e'
let s:gray5     = '#777cb8'
let s:red       = '#cf516a'
let s:green     = '#5eff87'
let s:yellow    = '#ffcb47'
let s:blue      = '#6181ff'
let s:lightblue = '#1cd2ff'
let s:purple    = '#a363ff'
let s:violet    = '#f569ff'
let s:cyan      = '#22f5d9'
let s:orange    = '#e87946'
let s:salmon    = '#ff6190'
let s:pink      = '#ff61cd'

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
