" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

set tabstop=4

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

"matlab correction plugin
source $VIMRUNTIME/macros/matchit.vim

"Daves magic line
au! BufWritePost .vimrc nested source %

"Old If it is working without this line, remove permanently mlint integration

autocmd BufEnter *.m    compiler mlint
let g:mlint_path_to_mlint = "/opt/Matlab/bin/glnxa64/mlint"

"Neo complete cache
let g:neocomplcache_enable_at_startup = 1 

" Use neocomplcache. 
 let g:neocomplcache_enable_at_startup = 1 
 " Use smartcase. 
 let g:neocomplcache_enable_smart_case = 1 
 " Use camel case completion. 
 let g:neocomplcache_enable_camel_case_completion = 1 
 " Use underbar completion. 
 let g:neocomplcache_enable_underbar_completion = 1 
 " Set minimum syntax keyword length. 
 let g:neocomplcache_min_syntax_length = 3 
 let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*' 
" Recommended key-mappings. 
 " <CR>: close popup and save indent. 
 inoremap <expr><CR>  neocomplcache#smart_close_popup() ."\<CR>" 
 " <TAB>: completion. 
 inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>" 
 " <C-h>, <BS>: close popup and delete backword char. 
 inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>" 
 inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>" 
 inoremap <expr><C-y>  neocomplcache#close_popup() 
 inoremap <expr><C-e>  neocomplcache#cancel_popup() 
 imap <C-k>     <Plug>(neocomplcache_snippets_expand) 
 smap <C-k>     <Plug>(neocomplcache_snippets_expand) 
 inoremap <expr><C-g>     neocomplcache#undo_completion() 
 inoremap <expr><C-l>     neocomplcache#complete_common_string() 

 "R plugin settings

	set nocompatible
	syntax enable
	filetype plugin on
	filetype indent on

set clipboard=unnamed

	"Copy and paste between different Vim sessions
	nmap <C-Y> :!echo ""> ~/.vi_tmp<CR><CR>:w! ~/.vi_tmp<CR>
	vmap <C-Y> :w! ~/.vi_tmp<CR>
	nmap <C-P> :r ~/.vi_tmp<CR>

colorscheme wombat256mod

