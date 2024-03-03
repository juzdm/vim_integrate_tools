
call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

"" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'
"
"" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
"" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
"" On-demand loading
"Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"
"" Using a non-default branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
"
"" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }
"
"" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"
"" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"
"" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'
"
" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
"
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'rakr/vim-one'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'mileszs/ack.vim'
Plug 'tamago324/LeaderF-filer'
Plug 'lambdalisue/fern.vim'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 't9md/vim-choosewin'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'skywind3000/vim-terminal-help'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
"Plug '~/code/vim/wineasy'
Plug 'weilbith/nerdtree_choosewin-plugin'
Plug 'kevinoid/vim-jsonc'
Plug 'szw/vim-maximizer'
"p Plug 'fholgado/minibufexpl.vim'
" Plug 'roblillack/vim-bufferlist'

call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting
"


"common
set rnu
set nu
let mapleader="\<Space>" 
nmap <F3> :cp<cr>
nmap <F4> :cn<cr>
nmap <F2> :cw 10<cr> 
"" map <C-A> ggVGY " 映射全选+复制 ctrl+a
"map <C-A> gg"+yG " 映射全选+复制 ctrl+a
"map! <C-A> <Esc>ggVGY
"" map <F12> gg=G
"vmap <C-c> "+y " 选中状态下 Ctrl+c 复制
set autoread " 设置当文件被改动时自动载入
set nobackup " 设置不需要备份
set syntax=on
set noeb " 去掉输入错误的提示声音
set confirm " 在处理未保存或只读文件的时候，弹出确认
set autoindent " 自动缩进
set ignorecase
set hlsearch
set incsearch
set wildmenu
set report=0 " 通过使用: commands命令，告诉我们文件的哪一行被改变过
set fillchars=vert:\ ,stl:\ ,stlnc:\ " 在被分割的窗口间显示空白，便于阅读
set showmatch " 高亮显示匹配的括号
set matchtime=1 " 匹配括号高亮的时间（单位是十分之一秒）
set scrolloff=3 " 光标移动到buffer的顶部和底部时保持3行距离
set smartindent " 为C程序提供自动缩进
au BufRead,BufNewFile *  setfiletype txt " 高亮显示普通txt文件（需要txt.vim脚本）

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 通用设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible         " 设置不兼容原始vi模式
filetype on              " 设置开启文件类型侦测
filetype plugin on       " 设置加载对应文件类型的插件
set noeb                 " 关闭错误的提示
syntax enable            " 开启语法高亮功能
syntax on                " 自动语法高亮
set t_Co=256             " 开启256色支持
set cmdheight=2          " 设置命令行的高度
set showcmd              " select模式下显示选中的行数
set ruler                " 总是显示光标位置
set laststatus=2         " 总是显示状态栏
set number               " 开启行号显示
set cursorline           " 高亮显示当前行
set whichwrap+=<,>,h,l   " 设置光标键跨行
set virtualedit=block,onemore   " 允许光标出现在最后一个字符的后面

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码缩进和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent           " 设置自动缩进
set cindent              " 设置使用C/C++语言的自动缩进方式
set cinoptions=g0,:0,N-s,(0    " 设置C/C++语言的具体缩进方式
set smartindent          " 智能的选择对其方式
filetype indent on       " 自适应不同语言的智能缩进
set expandtab            " 将制表符扩展为空格
set tabstop=4            " 设置编辑时制表符占用空格数
set shiftwidth=4         " 设置格式化时制表符占用空格数
set softtabstop=4        " 设置4个空格为制表符
set smarttab             " 在行和段开始处使用制表符
set nowrap               " 禁止折行
set backspace=2          " 使用回车键正常处理indent,eol,start等


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码补全
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu             " vim自身命名行模式智能补全
set completeopt-=preview " 补全时不显示窗口，只显示补全列表

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch            " 高亮显示搜索结果
set incsearch           " 开启实时搜索功能
set ignorecase          " 搜索时大小写不敏感

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 代码折叠
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldmethod=syntax   " 设置基于语法进行代码折叠
set nofoldenable        " 关闭折叠代码

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup            " 设置不备份
set noswapfile          " 禁止生成临时文件
set autoread            " 文件在vim之外修改过，自动重新读入
set autowrite           " 设置自动保存
set confirm             " 在处理未保存或只读文件的时候，弹出确认

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 其他设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>n :bp<CR>
nnoremap <leader>b :bn<CR>
nnoremap <leader>qw :wqall<CR> " close all windows

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdtree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>t :NERDTreeToggle<cr>
inoremap <leader>t <esc> :NERDTreeToggle<cr>
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1         
let g:NERDTreeHighlightFoldersFullName = 1 
let g:NERDTreeDirArrowExpandable='▷'
let g:NERDTreeDirArrowCollapsible='▼'

" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
" Start NERDTree, unless a file or session is specified, eg. vim -S session_file.vim.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif
" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if winnr() == winnr('h') && bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

 map <leader>r :NERDTreeFind<cr>
" returns true iff is NERDTree open/active
function! s:isNTOpen()        
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" calls NERDTreeFind iff NERDTree is active, current window contains a modifiable file, and we're not in vimdiff
function! s:syncTree()
  if &modifiable && s:isNTOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

autocmd BufEnter * call s:syncTree()



" nerdtree-git-plugin
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

set mouse=a

function! ToggleMouse()
    " check if mouse is enabled
    if &mouse == 'a'
        set mouse=
    else
        set mouse=a
    endif
endfunc
map <leader>ms :call ToggleMouse()<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" for Android
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! -complete=shellcmd -nargs=+ Shell call s:RunShellCommand(<q-args>)
function! s:RunShellCommand(cmdline) abort
    :cexpr system(a:cmdline)
    :copen
endfunction

command! -complete=shellcmd -nargs=+ Ggrep call s:GgrepCommand(<q-args>)
function! s:GgrepCommand(cmdline) abort
    let ggrepcmdstr = 'find . -name .repo -prune -o -name .git -prune -o -name out -prune -o -type f -name "*\.gradle" -exec grep --color -n ' .  a:cmdline . ' {} +'
    :cexpr system(ggrepcmdstr)
    :copen
endfunction

command! -complete=shellcmd -nargs=+ Jgrep call s:JgrepCommand(<q-args>)
function! s:JgrepCommand(cmdline) abort
    let jgrepcmdstr = ' find . -name .repo -prune -o -name .git -prune -o -name out -prune -o -type f -name "*\.java" -exec grep --color -n ' .  a:cmdline . ' {} +'
    :cexpr system(jgrepcmdstr)
    :copen
    call clearmatches()
    silent call matchadd('Search', a:cmdline) " Hi group / pattern
endfunction

command! -complete=shellcmd -nargs=+ Gogrep call s:GogrepCommand(<q-args>)
function! s:GogrepCommand(cmdline) abort
    let gogrepcmdstr = ' find . -name .repo -prune -o -name .git -prune -o -name out -prune -o -type f -name "*\.go" -exec grep --color -n  ' .  a:cmdline . ' {} +'
    :cexpr system(gogrepcmdstr)
    :copen
    call clearmatches()
    silent call matchadd('Search', a:cmdline) " Hi group / pattern
endfunction

command! -complete=shellcmd -nargs=+ Rsgrep call s:RsgrepCommand(<q-args>)
function! s:RsgrepCommand(cmdline) abort
    let rsgrepcmdstr = ' find . -name .repo -prune -o -name .git -prune -o -name out -prune -o -type f -name "*\.rs" -exec grep --color -n  ' .  a:cmdline . ' {} +'
    :cexpr system(rsgrepcmdstr)
    :copen
    call clearmatches()
    silent call matchadd('Search', a:cmdline) " Hi group / pattern
endfunction

command! -complete=shellcmd -nargs=+ Ktgrep call s:KtgrepCommand(<q-args>)
function! s:KtgrepCommand(cmdline) abort
    let ktgrepcmdstr = ' find . -name .repo -prune -o -name .git -prune -o -name out -prune -o -type f -name "*\.kt" -exec grep --color -n  ' .  a:cmdline . ' {} +'
    :cexpr system(ktgrepcmdstr)
    :copen
    call clearmatches()
    silent call matchadd('Search', a:cmdline) " Hi group / pattern
endfunction


""++++++++this is for atom one theme+++++
let g:airline_theme='onedark'
"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

set background=dark " for the dark version
"set background=light " for the light version
colorscheme one
"colorscheme solarized
let g:one_allow_italics = 1 "I love italic for comments
let g:solarized_termcolors=256

""++++++++this is for airline ++++
let g:airline#extensions#tabline#enabled = 1
function! WindowNumber(...)
    let builder = a:1
    let context = a:2
    call builder.add_section('airline_b', '%{tabpagewinnr(tabpagenr())}')
    return 0
endfunction

call airline#add_statusline_func('WindowNumber')
call airline#add_inactive_statusline_func('WindowNumber')

""++++++++this is for ListToggle++++
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'
let g:lt_height = 10


"=================================="
" this is leaderf setting          "
"=================================="
" see this https://retzzz.github.io/dc9af5aa/
"let g:Lf_Ctags="ctags"
" let g:Lf_WindowPosition = 'popup'
let g:Lf_WorkingDirectoryMode = 'AF'
let g:Lf_RootMarkers = ['.git', '.svn', '.hg', '.project', '.root']
let g:Lf_UseVersionControlTool=1 "default value, can ignore
let g:Lf_DefaultExternalTool='rg'
let g:Lf_PreviewInPopup = 1
let g:Lf_WindowHeight = 0.30
"let g:Lf_CacheDirectory = '~/.vim/cache'
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {
        \ 'File': 1,
        \ 'Buffer': 1,
        \ 'Mru': 1,
        \ 'Tag': 0,
        \ 'BufTag': 1,
        \ 'Function': 1,
        \ 'Line': 1,
        \ 'Colorscheme': 0,
        \ 'Rg': 0,
        \ 'Gtags': 0
        \}
"let g:Lf_GtagsAutoGenerate = 0
"let g:Lf_GtagsGutentags = 1
"let g:Lf_GtagsAutoGenerate = 1
"let g:Lf_Gtagslabel = 'native-pygments'
"let g:Lf_GtagsSource = 1

let g:Lf_ShortcutF = '<c-p>'
let g:Lf_ShortcutB = '<c-l>'
noremap <leader>lf :LeaderfSelf<cr>
noremap <leader>lfm :LeaderfMru<cr>
noremap <leader>lff :LeaderfFunction<cr>
noremap <leader>lffa :LeaderfFunctionAll<cr>
noremap <leader>lfb :LeaderfBuffer<cr>
noremap <leader>lft :LeaderfBufTag<cr>
noremap <leader>lfta :LeaderfBufTagAll<cr>
noremap <leader>lfl :LeaderfLine<cr>
noremap <leader>lfw :LeaderfWindow<cr>
noremap <leader>lfrr :LeaderfRgRecall<cr>

nmap <unique> <leader>lfr <Plug>LeaderfRgPrompt
nmap <unique> <leader>lfra <Plug>LeaderfRgCwordLiteralNoBoundary
nmap <unique> <leader>lfrb <Plug>LeaderfRgCwordLiteralBoundary
nmap <unique> <leader>lfrc <Plug>LeaderfRgCwordRegexNoBoundary
nmap <unique> <leader>lfrd <Plug>LeaderfRgCwordRegexBoundary

vmap <unique> <leader>lfra <Plug>LeaderfRgVisualLiteralNoBoundary
vmap <unique> <leader>lfrb <Plug>LeaderfRgVisualLiteralBoundary
vmap <unique> <leader>lfrc <Plug>LeaderfRgVisualRegexNoBoundary
vmap <unique> <leader>lfrd <Plug>LeaderfRgVisualRegexBoundary

nmap <unique> <leader>lfgd <Plug>LeaderfGtagsDefinition
nmap <unique> <leader>lfgr <Plug>LeaderfGtagsReference
nmap <unique> <leader>lfgs <Plug>LeaderfGtagsSymbol
nmap <unique> <leader>lfgg <Plug>LeaderfGtagsGrep

vmap <unique> <leader>lfgd <Plug>LeaderfGtagsDefinition
vmap <unique> <leader>lfgr <Plug>LeaderfGtagsReference
vmap <unique> <leader>lfgs <Plug>LeaderfGtagsSymbol
vmap <unique> <leader>lfgg <Plug>LeaderfGtagsGrep

noremap <leader>lfgo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
noremap <leader>lfgn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
noremap <leader>lfgp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>

noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
noremap <leader>lff :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
" search visually selected text literally
noremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
noremap go :<C-U>Leaderf! rg --recall<CR>

let g:Lf_CommandMap = {'<C-K>': ['<Up>'], '<C-J>': ['<Down>']}
" Show icons, icons are shown by default
let g:Lf_ShowDevIcons = 1
" For GUI vim, the icon font can be specify like this, for example
let g:Lf_DevIconsFont = "DroidSansMono Nerd Font Mono"
" If needs
set ambiwidth=double

" easymontion
map <Leader> <Plug>(easymotion-prefix)
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
" nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)=

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" inline-search
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" :h g:incsearch#auto_nohlsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)



map z/ <Plug>(incsearch-easymotion-/)
map z? <Plug>(incsearch-easymotion-?)
map zg/ <Plug>(incsearch-easymotion-stay)

" fzf
" FZF key bindings

nnoremap <C-f> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-i': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:fzf_buffers_jump = 1

command! -bang ProjectFiles call fzf#vim#files('.', <bang>0)

function! GitFZF()
  let gitPath = trim(system('cd '.shellescape(expand('%:p:h')).' && git rev-parse --show-toplevel'))
  if !isdirectory(gitPath)
    let gitPath = expand('%:p:h')
  endif
  exe 'FZF ' . gitPath
endfunction

command! GitFZF call GitFZF()
nnoremap <leader>fg :GitFZF<CR>

function! REPOFZF()
  let path = trim(finddir('.repo', ';'))
  if !isdirectory(path)
    let path = expand('%:p:h')
  endif
  let path = fnamemodify(path, ':h')
  exe 'FZF ' . path
endfunction

command! REPOFZF call REPOFZF()
nnoremap <leader>fr :REPOFZF<CR>

" color
set t_Co=256



" choosewin
let s:keymap = {
      \ '0':     'tab_first',
      \ '[':     'tab_prev',
      \ ']':     'tab_next',
      \ '$':     'tab_last',
      \ 'x':     'tab_close',
      \ ';':     'win_land',
      \ '-':     'previous',
      \ 's':     'swap',
      \ 'S':     'swap_stay',
      \ "\<CR>": 'win_land',
      \ }    

nmap - <Plug>(choosewin)
let g:choosewin_overlay_enable = 1


" nnoremap  <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
" nnoremap  <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

"nnoremap <S-Down>  :exe "resize " . (winheight(0) * 10/9) <CR>
" nnoremap <S-Up>  :exe "resize " . (winheight(0) * 9/10) <CR>
nnoremap <S-Down> :resize +2<CR>
nnoremap <S-Up> :resize -2<CR>
nnoremap <S-Left>  :vertical resize -2<CR>
nnoremap <S-Right> :vertical resize +2<CR>



" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"


nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" zoom windows
nmap <C-w>z ::MaximizerToggle <CR>

set clipboard=unnamed
set clipboard=unnamedplus

""vmap <C-c> "+yi
""vmap <C-x> "+c
""vmap <C-v> c<ESC>"+p
"""imap <C-v> <C-r><C-o>+
""
""
""vnoremap <C-c> "*y
""
""
" vnoremap <C-c> y: call system("xclip -i", getreg("\""))<CR>
"""noremap <C-V> :r !xclip -o <CR>
" vnoremap <C-c> :'<,'>w !xclip -selection clipboard<Cr><Cr>

function! RangeToClipboard() range
  let [line1, col1] = getpos("'<")[1:2]
  let [line2, col2] = getpos("'>")[1:2]
  let lines = getline(line1, line2)
  " handle incl/excl last char
  let lines[-1] = lines[-1][: col2 - (&sel == 'inclusive' ? 1 : 2)]
  let lines[0] = lines[0][col1 - 1:]
  silent exec system('xclip -sel c', lines)
endfunction

function! CopyFullFile() range
    execute ':w !xclip -sel c'
endfunction

vnoremap <C-c> :call RangeToClipboard() <CR>
map <C-A> :call CopyFullFile() <CR>


autocmd BufEnter * if expand("%:p:h") !~ '^/tmp' | silent! lcd %:p:h | endif
