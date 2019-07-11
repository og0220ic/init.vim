"dein Scripts----------------------------- 
if &compatible
  set nocompatible               " Be iMproved
  0
endif

" Required:
set runtimepath+=/home/oji/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/oji/.vim/dein')
  call dein#begin('/home/oji/.vim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/oji/.vim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  "Plugin koko
  call dein#add('tomasr/molokai')
  call dein#add('mattn/sonictemplate-vim')
  call dein#add('mattn/vim-sl')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

set number             "行番号を表示
set autoindent         "改行時に自動でインデントする
set tabstop=4          "タブを何文字の空白に変換するか
set shiftwidth=4       "自動インデント時に入力する空白の数
set expandtab          "タブ入力を空白に変換
set splitright         "画面を縦分割する際に右に開く
set clipboard=unnamed  "yank した文字列をクリップボードにコピー
set hls                "検索した文字をハイライトする
set cursorline
colorscheme molokai

let g:sonictemplate_vim_template_dir = [
      \ '~/.config/nvim/template'
      \]
nnoremap <Up>    :call sl#animate()<CR>
nnoremap <Down>  :call sl#animate()<CR>
nnoremap <Left>  :call sl#animate()<CR>
nnoremap <Right> :call sl#animate()<CR>
inoremap <Up>    <ESC>:call sl#animate()<CR>
inoremap <Down>  <ESC>:call sl#animate()<CR>
inoremap <Left>  <ESC>:call sl#animate()<CR>
inoremap <Right> <ESC>:call sl#animate()<CR>

inoremap <silent> jk <ESC>
