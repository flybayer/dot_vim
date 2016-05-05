if exists('g:plug_loading_plugins')
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  finish
endif

nnoremap <silent><leader>nn :NERDTreeToggle<CR>:wincmd =<CR>
nnoremap <silent><leader>nf :NERDTreeFind<CR>:wincmd =<CR>

" Change working directory when changing NERD base directory
let g:NERDTreeChDirMode = 2
let g:NERDTreeMinimalUI = 1
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeForceMac = 1

" Unmap so that C-J & C-K work like in rest of vim
let g:NERDTreeMapJumpNextSibling = "<nop>"
let g:NERDTreeMapJumpPrevSibling = "<nop>"

" Close Vim if NERDTree is the last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree")
                                      \&& b:NERDTree.isTabTree()) | q | endif