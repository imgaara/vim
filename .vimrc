
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle configs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible                " be iMproved
filetype off                    " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/Vundle.vim
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

"my Bundle here:
"
" original repos on github
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'
Bundle 'Shougo/neosnippet-snippets'


Bundle 'kien/ctrlp.vim'
Bundle 'sukima/xmledit'
Bundle 'sjl/gundo.vim'
Bundle 'jiangmiao/auto-pairs'
Bundle 'klen/python-mode'
Bundle 'Valloric/ListToggle'
Bundle 'SirVer/ultisnips'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 't9md/vim-quickhl'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdcommenter'
"..................................
" vim-scripts repos
Bundle 'YankRing.vim'
Bundle 'vcscommand.vim'
Bundle 'ShowPairs'
Bundle 'SudoEdit.vim'
Bundle 'EasyGrep'
Bundle 'VOoM'
Bundle 'VimIM'
"..................................
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
"......................................
filetype plugin indent on    " required


" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" vim:shiftwidth=2:tabstop=2:softtabstop=2:et
colorscheme koehler
set nocompatible
syntax on
"set enc=gb2312
set enc=utf-8
"set tenc=gbk
set nobackup

set autoindent
set cindent
set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4
"set paste

set backspace=indent,eol,start
set history=50
set showcmd
set number
set incsearch
set ignorecase
set hlsearch
set mouse=a
"set clipboard=unnamed
set wildmenu
filetype plugin indent on
set cino=:0,l1,g0,p0,t0

set completeopt=longest,menu

"set fileencodings=gbk,utf-8
set fileencodings=utf-8,gbk

set laststatus=2
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
if has('multi_byte') && v:version > 601
  if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
    set ambiwidth=double
endif
endif

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 进行Tlist的设置
" TlistUpdate可以更新tags
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"let Tlist_Sort_Type="name"
let Tlist_Ctags_Cmd='ctags' "因为我们放在环境变量里，所以可以直接执行
let Tlist_Use_Right_Window=1 "让窗口显示在右边，0的话就是显示在左边
let Tlist_Show_One_File=0 "让taglist可以同时展示多个文件的函数列表，如果想只有1个，设置为1
let Tlist_File_Fold_Auto_Close=1 "非当前文件，函数列表折叠隐藏
let Tlist_Exit_OnlyWindow=1 "当taglist是最后一个分割窗口时，自动推出vim
let Tlist_Process_File_Always=0 "是否一直处理tags.1:处理;0:不处理。不是一直实时更新tags，因为没有必要
let Tlist_Inc_Winwidth=0
let Tlist_GainFocus_On_ToggleOpen=1

nmap <silent> <F2>      :TagbarToggle <CR>
imap <silent> <F2>      <C-O>:TagbarToggle <CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"nmap <silent> <F3>      :Project<CR>
"imap <silent> <F3>      <C-O>:Project<CR>
nmap <silent> <F3>      :NERDTreeToggle<CR>
imap <silent> <F3>      <C-O>:NERDTreeToggle<CR>
let NERDTreeIgnore=['tags', '\.swp$', '\.o', '\.log', '\~$']

nmap <silent> <F4>      :set nu <CR>
imap <silent> <F4>      <C-O>:set nu <CR>
nmap <silent> <F4><F4>  :set nonu <CR>
imap <silent> <F4><F4>  <C-O>:set nonu <CR>

map <F5> :silent! nohlsearch<CR>

map  <F6>       :set paste<CR>
imap <F6>       <Esc>:set paste<CR>
map  <F6><F6>   :set nopaste<CR>
imap <F6><F6>   <Esc>:set nopaste<CR>

map <F7> <C-W><
map <F8> <C-W>>

"Doxygen
let g:DoxygenToolkit_licenseTag="Tencent Inc."
let g:DoxygenToolkit_authorName=""
"let g:DoxygenToolkit_briefTag_funcName="yes"

map  <F9><F9>   :set syntax=cpp.doxygen<CR>
imap <F9><F9>   <C-O>:set syntax=cpp.doxygen<CR>
map  <F9>a      :DoxAuthor<CR>
imap <F9>a      <C-O>:DoxAuthor<CR>
map  <F9>l      :DoxLic<CR>
imap <F9>l      <C-O>:DoxLic<CR>
map  <F9>f      :Dox<CR>
imap <F9>f      <C-O>:Dox<CR>
map  <F9>b      :DoxBlock<CR>
imap <F9>b      <C-O>:DoxBlock<CR>
map  <F9>c      O/** */<Left><Left>
imap <F9>c      <Esc>O/** */<Left><Left>

map  <F10>      :set wrap<CR>
imap <F10>      <C-O>:set wrap<CR>
map  <F10><F10> :set nowrap<CR>
imap <F10><F10> <C-O>:set nowrap<CR>

map  <F10>u     :call SetEncodingUTF8() <CR>
imap <F10>u     <Esc>:call SetEncodingUTF8() <CR>
map  <F10>g        :call SetEncodingGBK() <CR>
imap <F10>g     <ESC>:call SetEncodingGBK() <CR>

"Make Quickfix
nmap <F11>    :cp<CR>
imap <F11>    <C-O>:cp<CR>
nmap <F12>    :cn<CR>
imap <F12>    <C-O>:cn<CR>

let mapleader=','
let g:C_MapLeader=','

"cscope
nmap <leader>ss :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <leader>sg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <leader>sc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <leader>st :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <leader>se :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <leader>sf :cs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <leader>si :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <leader>si :cs find i <C-R>=expand("%:t")<CR><CR>
nmap <leader>sd :cs find d <C-R>=expand("<cword>")<CR><CR>

"hlsearch
nmap <leader>hl      :nohlsearch<CR>
imap <leader>hl      <C-O>:nohlsearch<CR>

"save & quit
nmap <leader>a  :confirm qa<CR>
nmap <leader>d  :confirm bd<CR>
nmap <leader>q  :confirm q<CR>
nmap <leader>w  :w<CR>
imap <leader>w  <C-O>:w<CR>

"make
nmap <leader>m :update<CR>:make<CR>
imap <leader>m <Esc>:update<CR>:make<CR>
nmap <leader>o :copen<CR>
nmap <leader>k :cclose<CR>

" Key mappings to ease browsing long lines
noremap  <Down>      gj
noremap  <Up>        gk
inoremap <Down> <C-O>gj
inoremap <Up>   <C-O>gk

"虏鹿脠芦路陆脢陆
imap <leader>f <C-X><C-F>
inoremap <C-]>             <C-X><C-]>

nmap <leader>tt <ESC>:silent !ct ..<CR> :redraw!<CR>
imap <leader>tt :silent !ct ..<CR> :redraw!<CR>

"Smart way to move btw. windows
"nmap <C-o> <C-W>o
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

"buffer
nmap <leader>,  :bn<CR>
nmap <leader>.  :bp<CR>

"nmap <leader>bb  ma :%s/\([^\^ ]\){$/\1\r{/g <CR> gg=G `a
"imap <leader>bb  <ESC>ma :%s/\([^\^ ]\){$/\1\r{/g <CR> gg=G `a
nmap <leader>bb  ma gg=G `a
imap <leader>bb  <ESC>ma gg=G `a

function! SetFileEncodings(encodings)
  let b:my_fileencodings_bak=&fileencodings
  let &fileencodings=a:encodings
endfunction

function! RestoreFileEncodings()
  let &fileencodings=b:my_fileencodings_bak
  unlet b:my_fileencodings_bak
endfunction

function! CheckFileEncoding()
  if &modified && &fileencoding != ''
    exec 'e! ++enc=' . &fileencoding
  endif
endfunction

function! ConvertHtmlEncoding(encoding)
  if a:encoding ==? 'gb2312'
    return 'gbk'              " GB2312 imprecisely means GBK in HTML
  elseif a:encoding ==? 'iso-8859-1'
    return 'latin1'           " The canonical encoding name in Vim
  elseif a:encoding ==? 'utf8'
    return 'utf-8'            " Other encoding aliases should follow here
  else
    return a:encoding
  endif
endfunction

function! DetectHtmlEncoding()
  if &filetype != 'html'
    return
  endif
  normal m`
  normal gg
  if search('\c<meta http-equiv=\("\?\)Content-Type\1 content="text/html; charset=[-A-Za-z0-9_]\+">') != 0
    let reg_bak=@"
    normal y$
    let charset=matchstr(@", 'text/html; charset=\zs[-A-Za-z0-9_]\+')
    let charset=ConvertHtmlEncoding(charset)
    normal ``
    let @"=reg_bak
    if &fileencodings == ''
      let auto_encodings=',' . &encoding . ','
    else
      let auto_encodings=',' . &fileencodings . ','
    endif
    if charset !=? &fileencoding &&
          \(auto_encodings =~ ',' . &fileencoding . ',' || &fileencoding == '')
      silent! exec 'e ++enc=' . charset
    endif
  else
    normal ``
  endif
endfunction

function! GnuIndent()
  setlocal cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
  setlocal shiftwidth=2
  setlocal tabstop=8
endfunction

function! RemoveTrailingSpace()
  if $VIM_HATE_SPACE_ERRORS != '0' &&
        \(&filetype == 'c' || &filetype == 'cpp' || &filetype == 'vim' || &filetype == 'docbk')
    normal m`
    silent! :%s/\s\+$//e
    normal ``
  endif
endfunction

"function UpdateTitle()
"  normal m'
"  execute 'echo '.'/# *Last modified:/s@:.*$@\=strftime(":\t%Y-%m-%d %H:%M")@'
"  normal ''
"  normal mk
"  execute '/ * \@file/s@:.*$@\=.expand("%:t")@'
"  execute "noh"
"  normal 'k
"  echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
"endfunction
"map <leader>u :call UpdateTitle()<cr>


" Highlight space errors in C/C++ source files (Vim tip #935)
if $VIM_HATE_SPACE_ERRORS != '0'
  let c_space_errors=1
endif

" visual search
function! VisualSearch(direction) range
  let l:saved_reg = @"
  execute "normal! vgvy"
  let l:pattern = escape(@", '\\/.*$^~[]')
  let l:pattern = substitute(l:pattern, "\n$", "", "")
  if a:direction == 'b'
    execute "normal ?" . l:pattern . "^M"
  else
    execute "normal /" . l:pattern . "^M"
  endif
  let @/ = l:pattern
  let @" = l:saved_reg
endfunction

"Basically you press * or # to search for the current selection !! Really useful
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>


".vimrci auto reload
"  au BufWritePost .vimrc source ~/.vimrc

if has('autocmd')
  au FileType cxx setf cpp
  au FileType hpp setf cpp
  au BufEnter /usr/include/c++/*    setf cpp
  au BufEnter /usr/include/g++-3/*  setf cpp

  au FileType cpp setlocal syntax=cpp.doxygen
  au FileType c setlocal syntax=c.doxygen

  au FileType python set et |setlocal shiftwidth=2| setlocal softtabstop=2| setlocal ts=2

  " stl tags
  au FileType cpp,c set tags+=$HOME/.vim/tags/stl_tags

  " add cmake dict
  au FileType cmake call AddCMakeFuncList()
  function AddCMakeFuncList()
    set dictionary+=~/.vim/dict/cmake.dict
    imap <leader>k <C-X><C-K>
    "  set complete-=k complete+=k
  endfunction

  " Automatically find scripts in the autoload directory
  "  au FuncUndefined * exec 'runtime autoload/' . expand('<afile>') . '.vim'

  " Detect charset encoding in an HTML file
  au BufReadPost *.htm* nested      call DetectHtmlEncoding()

  " Recognize standard C++ headers

  " Setting for files following the GNU coding standard
  au BufEnter /usr/*                call GnuIndent()

  " Remove trailing spaces for C/C++ and Vim files
  au BufWritePre *                  call RemoveTrailingSpace()


"  set path+=/usr/include/c++/4.1.2,include/,inc/,../inc/,../include,
  set path+=include/,inc/,../inc/,../include,

"  au BufEnter ~/workspaces/novel/* setlocal path+= ~/workspaces/novel/build
  au BufEnter ~/workspace/* setlocal makeprg=blade
  au BufEnter ~/workspace/infra/trunk/src/* setlocal path+=~/workspace/infra/trunk/src,~/workspace/infra/trunk/src/blade-bin,~/workspace/infra/trunk/src/build64_debug,~/workspace/infra/trunk/src/thirdparty,~/workspace/infra/trunk/release

  au BufEnter ~/workspace/infra/branches/mapreduce/* setlocal path+=~/workspace/infra/branches/mapreduce/,~/workspace/infra/trunk/src/blade-bin,~/workspace/infra/trunk/src/build64_debug,~/workspace/infra/trunk/src/thirdparty,~/workspace/infra/trunk/release

  let g:proj_flags="imstn"

  "code complete
  imap <leader>... ".g:rs."...".g:re."
  "docbook
  imap <leader>docbk <?xml version="1.0"?><CR><!DOCTYPE book PUBLIC "-//OASIS//DTD DocBook XML V4.2//EN">
  au BufEnter *.sgm    setf docbk
  au BufEnter *.xml    setf docbk


  " http://vim.wikia.com/wiki/VimTip80
  " Tell vim to remember certain things when we exit
  "  '10 : marks will be remembered for up to 10 previously edited files
  "  "100 : will save up to 100 lines for each register
  "  :20 : up to 20 lines of command-line history will be remembered
  "  % : saves and restores the buffer list
  "  n... : where to save the viminfo files
  set viminfo='10,\"100,:20,%,n~/.viminfo

  " when we reload, tell vim to restore the cursor to the saved position
  augroup JumpCursorOnEdit
    au!
    autocmd BufReadPost *
          \ if expand("<afile>:p:h") !=? $TEMP |
          \ if line("'\"") > 1 && line("'\"") <= line("$") |
          \ let JumpCursorOnEdit_foo = line("'\"") |
          \ let b:doopenfold = 1 |
          \ if (foldlevel(JumpCursorOnEdit_foo) > foldlevel(JumpCursorOnEdit_foo - 1)) |
          \ let JumpCursorOnEdit_foo = JumpCursorOnEdit_foo - 1 |
          \ let b:doopenfold = 2 |
          \ endif |
          \ exe JumpCursorOnEdit_foo |
          \ endif |
          \ endif
    " Need to postpone using "zv" until after reading the modelines.
    autocmd BufWinEnter *
          \ if exists("b:doopenfold") |
          \ exe "normal zv" |
          \ if(b:doopenfold > 1) |
          \ exe "+".1 |
          \ endif |
          \ unlet b:doopenfold |
          \ endif
  augroup END

  function! GET_UP_PATH(dir)
    let pos=len(a:dir)-1
    while pos>0
      if (a:dir[pos]=="/" )
        return  strpart(a:dir,0,pos)
      endif
      let pos=pos-1
    endwhile
    return  ""
  endfunction

"  function! s:SET_TAGS()
"    let dir = expand("%:p:h")

"    while dir!=""
"      if findfile("tags",dir ) !=""
"        exec "set tags+=" . dir . "/tags"
"      endif
"      let dir=GET_UP_PATH(dir)
"    endwhile
"  endfunction

"  autocmd BufEnter * call s:SET_TAGS()

  "cscope
  set cscopequickfix=s-,c-,d-,i-,t-,e-

"  function! s:SET_CSCOPES()
"    let dir = expand("%:p:h")
"    if findfile("cscope.out",dir ) !=""
"      return
"    endif

"    while dir!=""
"      if findfile("cscope.out",dir ) !=""
"        exec "cs add " . dir . "/cscope.out " . dir
"        break
"      endif
"      let dir=GET_UP_PATH(dir)
"    endwhile
"  endfunction

"  autocmd BufEnter * call s:SET_CSCOPES()



endif

"OmniComplet
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
let OmniCpp_DefaultNamespaces = ["std"]
"let OmniCpp_ShowPrototypeInAbbr = 1
"
let g:miniBufExplMapCTabSwitchBufs = 1
function! Blade(...)
    let l:old_makeprg = &makeprg
    setlocal makeprg=blade
    execute "make " . join(a:000)
    let &makeprg=old_makeprg
endfunction

command! -complete=dir -nargs=* Blade call Blade('<args>')

"call pathogen#infect()
syntax on
filetype plugin indent on

let g:erlangManPath="/usr/local/lib/erlang/man"

"map <F7> :ErlangEnableShowErrors<CR>
"map <F8> :ErlangDisableShowErrors<CR>
let g:miniBufExplMapCTabSwitchBufs=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" neocomplcache settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neocomplcache_enable_at_startup = 1

let g:acp_enableAtStartup = 0

" Use smartcase
let g:neocomplcache_enable_smart_case = 1

" Use camel case completion
let g:neocomplcache_enable_camel_case_completion = 1

" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1

" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'"

" AutoComplPop like behavior.
let g:neocomplcache_enable_auto_select = 0

" When you input 'ho-a',neocomplcache will select candidate 'a'.
let g:neocomplcache_enable_quick_match = 1

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
            \ 'default' : '',
            \ 'vimshell' : $HOME.'/.vimshell_hist',
            \ 'scheme' : $HOME.'/.gosh_completions',
            \ 'css' : $VIMFILES.'/dict/css.dic',
            \ 'php' : $VIMFILES.'/dict/php.dic',
            \ 'javascript' : $VIMFILES.'/dict/javascript.dic'
            \ }

let g:neocomplcache_snippets_dir=$VIMFILES."/snippets"
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<TAB>"
inoremap <expr><C-TAB>  pumvisible() ? "\<C-p>" : "\<TAB>"

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'"

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-z>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()"

" SuperTab like snippets behavior.
imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Recommended key-mappings.
" <CR>: close popup and save indent.
" inoremap <expr><CR>  neocomplcache#close_popup() . "\<CR>"
inoremap <expr><CR> pumvisible() ? neocomplcache#close_popup() : "\<CR>"

" <TAB>: completion. THIS HAS NO USE WHEN WITH SNIPMATE
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" <SPACE>: completion.
inoremap <expr><space>  pumvisible() ? neocomplcache#close_popup() . "\<SPACE>" : "\<SPACE>"

inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
return neocomplcache#smart_close_popup() . "\<CR>"
" For no inserting <CR> key.
  "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplcache_enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplcache_enable_insert_char_pre = 1

" AutoComplPop like behavior.
let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
"inoremap <expr><CR>  neocomplcache#close_popup() . "\<CR>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
    let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'"8: autocmd FileType html
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


set tags=tags;    "   其中 ; 不能没有
set autochdir
