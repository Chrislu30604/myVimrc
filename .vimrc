set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Git
Plugin 'tpope/vim-fugitive'
" Code
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'valloric/youcompleteme'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'ervandew/supertab'
Plugin 'plasticboy/vim-markdown'
Plugin 'fatih/vim-go'
" Prettier
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
" Navigation
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim' "CtrlP
Plugin 'myusuf3/numbers.vim'
Plugin 'tpope/vim-surround' "cs'<q>
Plugin 'majutsushi/tagbar' " F8
call vundle#end()
filetype plugin indent on

syntax enable
set tabstop=4
set shiftwidth=4
set laststatus=2
set t_Co=256
set clipboard+=unnamed
set clipboard=unnamedplus
autocmd BufNewFile,BufReadPost,BufRead *.md set filetype=markdown

nnoremap <silent> <F5> :NERDTree<CR>
map <F6> :setlocal spell! spelllang=en_us<CR>
nmap <F8> :TagbarToggle<CR>
colorscheme dracula
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:numbers_exclude = ['tagbar', 'gundo', 'minibufexpl', 'nerdtree']

" YouCompleteMe and UltiSnips compatibility, with the helper of supertab
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'C', 'go']
let g:markdown_syntax_conceal = 0
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_no_default_key_mappings = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_json_frontmatter = 1
let g:vim_markdown_new_list_item_indent = 2
set conceallevel=2
