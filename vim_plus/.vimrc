" this is vimrc for all platfrom

set nocompatible              " be iMproved, required
call plug#begin()
Plug '~/.vim/third_part_plus/vim-one'
Plug '~/.vim/third_part_plus/vim-airline'
Plug '~/.vim/third_part_plus/vim-airline-themes'
Plug '~/.vim/third_part_plus/LeaderF'
" Plugin '~/.vim/third_part_plus/ycm-core/YouCompleteMe'
" Plugin '~/.vim/third_part_plus/rdnetto/YCM-Generator'
" Plugin '~/.vim/third_part_plus/Valloric/ListToggle'
call plug#end()

set rnu
set nu
let mapleader="\<Space>" 
nmap <F3> :cp<cr>
nmap <F4> :cn<cr>
nmap <F2> :cw 10<cr> 
map <C-A> ggVGY " 映射全选+复制 ctrl+a
map! <C-A> <Esc>ggVGY
map <F12> gg=G
vmap <C-c> "+y " 选中状态下 Ctrl+c 复制
set autoread " 设置当文件被改动时自动载入
set nobackup " 设置不需要备份
syntax=on
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

nmap <F3> :cn<cr>
nmap <F4> :cp<cr>
nmap <F2> :cw 10<cr>

nnoremap <leader>n :bp<CR>
nnoremap <leader>b :bn<CR>
nnoremap <leader>qw :wqall<CR>

""++++++++this is for atom one theme+++++
let g:airline_theme='one'
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
" set background=light " for the light version
colorscheme one
let g:one_allow_italics = 1 "I love italic for comments

""++++++++this is for airline ++++
let g:airline#extensions#tabline#enabled = 1

""++++++++this is for YCM++++
let g:ycm_always_populate_location_list = 1
nmap <leader>ys <Plug>(YCMFindSymbolInWorkspace)
nmap <leader>yd <Plug>(YCMFindSymbolInDocument)
nmap <leader>g :YcmCompleter GoTo<cr>
nmap <leader>f :YcmCompleter GoToReferences<cr>

""++++++++this is for ListToggle++++
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'
let g:lt_height = 10

""++++++++this is for YCM Generate++++
nmap <leader>ycg :YcmGenerateConfig<cr>

"=================================="
" this is common map setting       "
"=================================="
" suport mouse 
set mouse=a
" use system clipboard as the vim default register
" set clipboard^=unnamed,unnamedplus
" ctrl+a is select all
map <C-A> ggVG                     " 映射全选 ctrl+a
map! <C-A> <Esc>ggVGY
" ctrl+c is copy
" ctrl+v is parse
map <C-c> "+y                      " 映射复制到系统剪切板
nmap <C-v> "+gp                    " 映射粘贴
imap <C-v> <Esc>"+gp               " 映射粘贴

"=================================="
" this is leaderf setting          "
"=================================="
" see this https://retzzz.github.io/dc9af5aa/
"let g:Lf_Ctags="ctags"
let g:Lf_WindowPosition = 'popup'
let g:Lf_WorkingDirectoryMode = 'AF'
let g:Lf_RootMarkers = ['.git', '.svn', '.hg', '.project', '.root']
let g:Lf_UseVersionControlTool=1 "default value, can ignore
let g:Lf_DefaultExternalTool='rg'
let g:Lf_PreviewInPopup = 1
let g:Lf_WindowHeight = 0.30
" let g:Lf_CacheDirectory = s:cachedir
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
let g:Lf_GtagsAutoGenerate = 0
"let g:Lf_GtagsGutentags = 1
"let g:Lf_GtagsAutoGenerate = 1
"let g:Lf_Gtagslabel = 'native-pygments'
"let g:Lf_GtagsSource = 1

let g:Lf_ShortcutF = '<c-p>'
let g:Lf_ShortcutB = '<c-l>'
noremap <leader>f :LeaderfSelf<cr>
noremap <leader>fm :LeaderfMru<cr>
noremap <leader>ff :LeaderfFunction<cr>
noremap <leader>ffa :LeaderfFunctionAll<cr>
noremap <leader>fb :LeaderfBuffer<cr>
noremap <leader>ft :LeaderfBufTag<cr>
noremap <leader>fta :LeaderfBufTagAll<cr>
noremap <leader>fl :LeaderfLine<cr>
noremap <leader>fw :LeaderfWindow<cr>
noremap <leader>frr :LeaderfRgRecall<cr>

nmap <unique> <leader>fr <Plug>LeaderfRgPrompt
nmap <unique> <leader>fra <Plug>LeaderfRgCwordLiteralNoBoundary
nmap <unique> <leader>frb <Plug>LeaderfRgCwordLiteralBoundary
nmap <unique> <leader>frc <Plug>LeaderfRgCwordRegexNoBoundary
nmap <unique> <leader>frd <Plug>LeaderfRgCwordRegexBoundary

vmap <unique> <leader>fra <Plug>LeaderfRgVisualLiteralNoBoundary
vmap <unique> <leader>frb <Plug>LeaderfRgVisualLiteralBoundary
vmap <unique> <leader>frc <Plug>LeaderfRgVisualRegexNoBoundary
vmap <unique> <leader>frd <Plug>LeaderfRgVisualRegexBoundary

nmap <unique> <leader>fgd <Plug>LeaderfGtagsDefinition
nmap <unique> <leader>fgr <Plug>LeaderfGtagsReference
nmap <unique> <leader>fgs <Plug>LeaderfGtagsSymbol
nmap <unique> <leader>fgg <Plug>LeaderfGtagsGrep

vmap <unique> <leader>fgd <Plug>LeaderfGtagsDefinition
vmap <unique> <leader>fgr <Plug>LeaderfGtagsReference
vmap <unique> <leader>fgs <Plug>LeaderfGtagsSymbol
vmap <unique> <leader>fgg <Plug>LeaderfGtagsGrep

noremap <leader>fgo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
noremap <leader>fgn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
noremap <leader>fgp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>

noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
" search visually selected text literally
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
noremap go :<C-U>Leaderf! rg --recall<CR>

let g:Lf_CommandMap = {'<C-K>': ['<Up>'], '<C-J>': ['<Down>']}
" Show icons, icons are shown by default
let g:Lf_ShowDevIcons = 1
" For GUI vim, the icon font can be specify like this, for example
let g:Lf_DevIconsFont = "DroidSansMono Nerd Font Mono"
" If needs
set ambiwidth=double

" this is for support android, this is from  build/envsetup.sh
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
