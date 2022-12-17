"Basics
:syntax on
:set number
:set nocompatible 
:filetype plugin on

"GroveBOX theme
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark    " Setting dark mode


"Plugins-uses-vimplug-INSERT PLUGINS BELOW THIS LINE
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '/home/sanal/.config/plugged/')
Plug 'vimwiki/vimwiki'
Plug 'morhetz/gruvbox'
Plug 'windwp/nvim-autopairs'
call plug#end() " INSERT PLUGINS BEFORE THIS LINE

lua << EOF
require("nvim-autopairs").setup {}
EOF
