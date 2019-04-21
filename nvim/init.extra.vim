let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
set background=dark
colorscheme nord

let g:webdevicons_enable_nerdtree = 1
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

" Use rubyfmt instead of default rubocop
"let g:formatdef_rubyfmt = '"rubyfmt.rb"'
"let g:formatters_ruby = ['rubyfmt']
noremap f :Autoformat<CR>

let g:deoplete#enable_at_startup = 1
set completeopt-=preview
