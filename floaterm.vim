"let g:floaterm_keymap_new    = '<F8>'
"let g:floaterm_keymap_prev   = '<F9>'
"let g:floaterm_keymap_next   = '<F10>'
"let g:floaterm_keymap_toggle = '<F12>'
let g:floaterm_position = 'topright'
let g:floaterm_width = 0.6
let g:floaterm_height = 0.6
let g:floaterm_title = 'Terminal $1/$2'
let g:floaterm_wintype = 'float'
let g:floaterm_rootmarkers = ['.pro']
if has('win32')
	let g:floaterm_shell = 'powershell -nologo'
endif

" Set color
hi Floaterm guibg=Grey15
hi FloatermBorder guifg=Orange guibg=DarkGreen
"hi FloatermNC guibg=darkred

autocmd User FloatermOpen        " triggered after opening a new/existed floater

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Hotkey to manage terminals
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open a new terminal 
nnoremap <F8>   :FloatermNew --position=bottomleft --height=0.8 --width=0.6 --title='Git' lazygit<CR>

"User define mappings
nnoremap <silent>  <F9>    :FloatermNew  powershell  -nologo <CR>
tnoremap <silent>  <F9>    <C-\><C-n>:FloatermNew powershell -nologo <CR>
nnoremap <silent>  <C-F9>  :FloatermKill<CR>:FloatermPrew <CR>
tnoremap <silent>  <C-F9>  <C-\><C-n>:FloatermKill<CR>:FloatermPrev <CR>


nnoremap <silent>  <F10>   :FloatermNext  <CR>
tnoremap <silent>  <F10>    <C-\><C-n>:FloatermNext <CR>
nnoremap <silent>  <C-F10>  :FloatermPrew <CR>
tnoremap <silent>  <C-F9>    <C-\><C-n>:FloatermPrew <CR>

nnoremap <silent>  <F11>    :FloatermToggle <CR>
tnoremap <silent>  <F11>    <C-\><C-n>:FloatermToggle <CR>
nnoremap <silent>  <C-F11>    <C-\><C-n> <C-W> <Left>
tnoremap <silent>  <C-F11>    <C-\><C-n><C-W><Left>

