:set wildmenu
:set nu 
:set smartindent
:set showmatch
:set ai
:set ts=4
:set sw=4
:set sts=4
:syntax on
:set backspace=start,indent,eol
:set wrapscan
:set t_Co=256
:colo gardener 
set path+=$PWD/**

python << EOF
import os
import sys
import vim
for p in sys.path:
	if os.path.isdir(p):
		vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
EOF

map <silent><C-Left> <C-T>
map <silent><C-Right> <C-]>
autocmd FileType python set omnifunc=pythoncomplete#Complete
inoremap <Nul> <C-x><C-o>

filetype plugin on
au FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
" You might also find this useful
" PHP Generated Code Highlights (HTML & SQL)                                              
  
let php_sql_query=1                                                                                        
let php_htmlInStrings=1

" Folding
" http://smartic.us/2009/04/06/code-folding-in-vim/
"set foldmethod=indent
"set foldnestmax=10
"set foldlevel=1
"set foldnestmax=2

let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 40
map <F4> :TlistToggle<cr>
map <F6> :NERDTreeToggle<cr>
" map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
" More ctags stuff: http://amix.dk/blog/post/19329 
" Generate ctags data for a PHP project: ctags-exuberant -f ~/.vim/mytags/mendeley -h ".php" -R --totals=yes --tag-relative=yes --PHP-kinds=+cf --regex-PHP='/abstract class ([^ ]*)/\1/c/' --regex-PHP='/interface ([^ ]*)/\1/c/' --regex-PHP='/(public |static |abstract |protected |private )+function ([^ (]*)/\2/f/'
