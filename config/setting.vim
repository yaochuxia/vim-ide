"
" WebVim Configuration : global settings
"
" author: Bertrand Chevrier <chevrier.bertrand@gmail.com>
" source: https://github.com/krampstudio/dotvim
" year  : 2015
"

" wrap end of line
set wrap

" show line numbers
set number

" syntax highlighting
syntax on
set background=dark
set t_Co=256
color mango

"indent
set smartindent
set autoindent
set copyindent
set shiftwidth=4
set shiftround
set backspace=indent,eol,start
set smarttab
set expandtab

"search
set showmatch
set smartcase

set hlsearch
set incsearch


" copy/paste
"set paste
set clipboard=unnamedplus

" folding manual
set foldmethod=manual

" mouse
set mouse=a

" spell check, to be activated manually
set spelllang=en_us
set nospell


" Emmet 在其他编辑器的触发快捷键一般是 Tab 或 Ctrl+e，如果你更习惯它们，也可以在 .vimrc 文件中加入下一行命令来修改它的触发快捷键：
let g:user_emmet_expandabbr_key = '<Tab>' 