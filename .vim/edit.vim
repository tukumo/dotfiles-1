" タブ文字・インデント
set tabstop=4 shiftwidth=4 softtabstop=4    " インデントは空白4つ
set expandtab                               " タブを空白文字に展開
set smarttab                                " 空白4つをまとめて削除

set autoindent
set smartindent

set backspace=indent,eol,start  " バックスペースでなんでも消せるように
set formatoptions+=m            " 整形オプション，マルチバイト系を追加
set whichwrap=b,s,h,l,<,>,[,]   " 行頭行末の左右移動で行をまたぐ

" ファイルを閉じても undo が有効
if has('persistent_undo')
	set undodir=~/.vim/.undo
    augroup vimrc-undofile
        autocmd!
        autocmd BufReadPre ~/* setlocal undofile
    augroup END
endif

set completeopt+=longest " <C-n> の補完に最長優先を追加
