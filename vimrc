" Case insensitive search
set ignorecase

" Set temporary directory (don't litter local dir with swp/tmp files)
set directory=/tmp/

" Make # surrounds actually make a ruby string interpolation
let g:surround_35 = "#{\r}"

" Color Setttings
set t_Co=256
colorscheme vividchalk

" Open the Ruby ApiDock page for the word under cursor, in a new Firefox tab
function! OpenRubyDoc(keyword)
  let url = 'http://apidock.com/ruby/'.a:keyword
  exec '!open '.url.' &'
endfunction
noremap RB :call OpenRubyDoc(expand('<cword>'))<CR>

" Open the Rails ApiDock page for the word under cursos, in a new Firefox tab
function! OpenRailsDoc(keyword)
  let url = 'http://apidock.com/rails/'.a:keyword
  exec '!open '.url.' &'
endfunction
noremap RR :call OpenRailsDoc(expand('<cword>'))<CR>


