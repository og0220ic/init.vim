call plug#begin()
Plug 'tomasr/molokai'
Plug 'mattn/vim-sl'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
call plug#end()

set number             "行番号を表示
set autoindent         "改行時に自動でインデントする
set tabstop=4          "タブを何文字の空白に変換するか
set shiftwidth=4       "自動インデント時に入力する空白の数
set expandtab          "タブ入力を空白に変換
set splitright         "画面を縦分割する際に右に開く
set clipboard=unnamed  "yank した文字列をクリップボードにコピー
set hls                "検索した文字をハイライトする
set cursorline
set noswapfile
colorscheme molokai

highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none

nnoremap <Up>    :write<CR> :call sl#animate()<CR>
nnoremap <Down>  :write<CR> :call sl#animate()<CR>
nnoremap <Left>  :write<CR> :call sl#animate()<CR>
nnoremap <Right> :write<CR> :call sl#animate()<CR>
inoremap <Up>    <ESC>:wtire<CR> :call sl#animate()<CR>
inoremap <Down>  <ESC>:wtire<CR> :call sl#animate()<CR>
inoremap <Left>  <ESC>:wtire<CR> :call sl#animate()<CR>
inoremap <Right> <ESC>:wtire<CR> :call sl#animate()<CR>

inoremap <silent> jk <ESC>
