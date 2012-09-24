call pathogen#infect()
set ts=4

set expandtab
set tabstop=4
set shiftwidth=4

set t_Co=256
colorscheme xoria256

"erlang format term: (term must end with '.')
map <F2> :%!erl -noshell -eval '{ok,Data}=io:read(""),io:format("~p.",[Data]),init:stop().'<CR>

"json formatting
autocmd BufNewFile,BufRead *.json set ft=javascript

let g:erlangCompleteFile="~/.vim/bundle/vimerl/autoload/erlang_complete.erl"
"let g:erlangCheckFile="~/.vim/bundle/vimerl/compiler/erlang_check.erl"
let g:erlangManPath="/usr/local/lib/erlang/man"
let g:erlangCompletionDisplayDoc=1
let g:erlangHighlightErrors=1

set nofoldenable
filetype on
filetype plugin on
set ofu=syntaxcomplete#Complete
syntax on
set nocompatible ruler laststatus=2 showcmd showmode number
set incsearch ignorecase smartcase hlsearch
set shortmess+=|

highlight comment ctermfg=grey

 filetype plugin indent on     " required! 

"FuzzyFinder:
nmap ,f :FufFileWithCurrentBufferDir<CR>
nmap ,b :FufBuffer<CR>
nmap ,t :FufTaggedFile<CR>
"ctags -R --extra=+f .

function ToggleNERDTree()
      execute ":NERDTreeToggle"
  endfunction
  command -nargs=0 ToggleNERDTree :call ToggleNERDTree()

function OpenNERDTree()
      execute ":NERDTree"
  endfunction
  command -nargs=0 OpenNERDTree :call OpenNERDTree()

nmap <C-D> :ToggleNERDTree<CR>
"nmap <C-D> <Plug>Rebar

"nmap <Leader>R <Plug>Rebar
