if exists('g:vundle_installing_plugins')
  Plugin 'tomtom/tcomment_vim'
  finish
endif

let g:tcommentMaps = 0
nnoremap <silent><leader>c :TComment<CR>
vnoremap <silent><leader>c :TComment<CR>
nnoremap <silent><leader>cb :TCommentBlock<CR>
vnoremap <silent><leader>cb :TCommentBlock<CR>

" Use '//' for C comments instead of '/* .. */'
call tcomment#DefineType('c', '// %s')
