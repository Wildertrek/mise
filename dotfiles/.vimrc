" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
 syntax on
 set hlsearch
endif
" causes problems on pasting:
" set smartindent
set tabstop=2
" for '>', e.g., set shiftwidth=4
set shiftwidth=2
" causes problems with makefiles:
set expandtab
filetype plugin on 
":let b:col=substitute(b:col, ',', ';', 'g') 
"use docx2txt.pl to allow VIm to view the text content of a .docx file directly.
autocmd BufReadPre *.docx set ro
autocmd BufReadPost *.docx %!docx2txt.pl 

" show line #s
set number

" from https://github.com/tpope/vim-markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

