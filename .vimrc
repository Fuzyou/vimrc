" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

au BufNewFile,BufRead *.pde setf processing


"NeoBundle

set runtimepath+=~/.vim/bundle/neobundle.vim/

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'shougo/neobundle.vim'

NeoBundle 'sophacles/vim-processing'

NeoBundle 'vim-latex/vim-latex'

NeoBundle 'sudar/vim-arduino-syntax'

"NeoBundle 'Yggdroot/indentLine'
"
NeoBundle 'nathanaelkane/vim-indent-guides'

call neobundle#end()


filetype plugin indent on

NeoBundleCheck

let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=237
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=238
let g:indent_guides_color_change_percent = 30

let g:indent_guides_guide_size = 4

colorscheme elflord

set tabstop=4
set expandtab
set autoindent
set shiftwidth=4
set number
syntax on


"set list listchars=tab:\¦\

