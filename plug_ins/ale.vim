if exists('g:plug_loading_plugins')
  Plug 'w0rp/ale'
  finish
endif

" -------------------------------------------
" TO FIX PRETTIER_D !!!!!!!!!!!!!!!!!!!!!!!!!
" -------------------------------------------
" In `plugged/ale/autoload/ale/fixers/prettier.vim`, change this:
"    \   '%e --version',
" to
"    \   'prettier --version',
" -------------------------------------------
" -------------------------------------------


let g:ale_fix_on_save = 1
let g:ale_lint_on_enter = 1
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'normal'

" let g:ale_sign_error = ' '
" let g:ale_sign_warning = ' '


hi ALEError guifg=#000000 guibg=#ffe3e3
hi ALEErrorSign guifg=#ffe3e3 guibg=#ffe3e3
hi ALEWarning guifg=#00000 guibg=#fff3bf
hi ALEWarningSign guifg=#fff3bf guibg=#fff3bf

let g:ale_linters = {}
let g:ale_linters['javascript'] = ['eslint']
let g:ale_linters['typescript'] = ['eslint']
let g:ale_linters['typescriptreact'] = ['eslint']
let g:ale_linters['markdown'] = []
let g:ale_linters['graphql'] = []
let g:ale_linters['rust'] = ['rls']

let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier', 'eslint']
let g:ale_fixers['typescript'] = ['prettier', 'eslint']
let g:ale_fixers['typescriptreact'] = ['prettier', 'eslint']
let g:ale_fixers['markdown'] = ['prettier']
let g:ale_fixers['html'] = ['prettier']
let g:ale_fixers['ruby'] = ['prettier']
let g:ale_fixers['json'] = ['prettier']
let g:ale_fixers['graphql'] = ['prettier']
let g:ale_fixers['scss'] = ['prettier']
let g:ale_fixers['css'] = ['prettier']
let g:ale_fixers['rust'] = ['rustfmt']
let g:ale_fixers['prisma'] = ['prettier']

" let g:ale_javascript_prettier_executable = 'prettier_d'
" let g:ale_javascript_prettier_use_global = 1
" let g:ale_javascript_prettier_use_local_config = 1
" let g:ale_javascript_prettier_options = '--no-semi --print-width 100 --trailing-comma all'
let g:ale_javascript_eslint_executable = 'eslint_d'

let g:ale_typescript_eslint_executable = 'eslint_d'


