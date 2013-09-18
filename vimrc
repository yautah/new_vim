"==========================================
" Author:  Yang Quan
" Version: 1
" Email: feza@163.net
" Last_modify: 2013-08-04
" Sections:
"     ->General ��������
"     ->Show չʾ/�Ű�Ƚ����ʽ����
"     ->file encode, �ļ�����,��ʽ
"     ->others ������������
"     ->hot key  �Զ����ݼ�
"     ->bundle ��������������
"     ->colortheme ����,��һЩչʾ����ɫ���޸�
"==========================================


"==========================================
" General ��������
"==========================================

"set guifont=Monaco:h10          " ���� && �ֺ�

" history�洢���ȡ�
set history=2000

"����ļ�����
filetype on
"��Բ�ͬ���ļ����Ͳ��ò�ͬ��������ʽ
filetype indent on
"������
filetype plugin on
"�����Զ���ȫ
filetype plugin indent on

"�Ǽ���viģʽ��ȥ��������й�viһ����ģʽ��������ǰ�汾��һЩbug�;���
set nocompatible
set autoread          " �ļ��޸�֮���Զ����롣
set shortmess=atI       " ������ʱ����ʾ�Ǹ�Ԯ���������ͯ����ʾ

" ����,����һ��λ��. ��ֹ��ɾ, Ŀǰ��ȡ������
"set backup
"set backupext=.bak



"set backupext=.bak
"set backupdir=~/bak/vimbk/

" ȡ�����ݡ� ������Լ���
set nobackup
set noswapfile

" ͻ����ʾ��ǰ�е� ��ϲ�����ֶ�λ��ע��
set cursorcolumn
set cursorline              " ͻ����ʾ��ǰ��

"���� �˳�vim��������ʾ���ն���Ļ, �������ڲ鿴�͸���
"�ô�����ɾʲô�ģ������ǰ��Ļ�򿪣������һ�
set t_ti= t_te=

"- ������겻�ỻ,���ڸ���
set mouse-=a           " ����ݲ�����, ���̵�....
set selection=exclusive
set selectmode=mouse,key

" No annoying sound on errors
" ȥ������������ʾ����
set title                " change the terminal's title
set novisualbell           " don't beep
set noerrorbells         " don't beep
set t_vb=
set tm=500

"==========================================
" Show չʾ/�Ű�Ƚ����ʽ����
"==========================================
"����givm��ʱ�����ز˵���
set guioptions-=m
set guioptions-=T
set guioptions-=L
set guioptions-=r

"��ʾ�кţ�
set number
set nowrap                    " ȡ�����С�

"����������
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

"������������������ʾ
" ����search���е��ı���
set hlsearch
" ����ʱ���Դ�Сд
set ignorecase
" ���ż��뼴ʱ����
set incsearch
" ��һ�������ϴ�д��ĸʱ�Դ�Сд����
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise

" �����۵�
set foldenable
" �۵�����
" manual    �ֹ��۵�
" indent    ʹ��������ʾ�۵�
" expr      ʹ�ñ��ʽ�����۵�
" syntax    ʹ���﷨�����۵�
" diff      ��û�и��ĵ��ı������۵�
" marker    ʹ�ñ�ǽ����۵�, Ĭ�ϱ���� {{{ �� }}}
set foldmethod=indent
set foldlevel=99

"Smart indent
set smartindent
set autoindent    " always set autoindenting on
" never add copyindent, case error   " copy the previous indentation on autoindenting

set tabstop=2                " ����Tab���Ŀ��        [��ͬ�Ŀո����]
set shiftwidth=2  " number of spaces to use for autoindenting
set softtabstop=2             " ���˸��ʱ����һ��ɾ�� 4 ���ո�
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop ���˸��ʱ����һ��ɾ�� 4 ���ո�

set expandtab                " ��Tab�Զ�ת���ɿո�    [��Ҫ����������Tab��ʱ��ʹ�� Ctrl+V + Tab]

set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'

set showcmd
" A buffer becomes hidden when it is abandoned
set hidden
set wildmode=list:longest
set ttyfast


"�кű����ԣ������� nj  nk   ������ת 5j   5k ������5��
set relativenumber
au FocusLost * :set number
au FocusGained * :set relativenumber
" ����ģʽ���þ����к�, ��ͨģʽ�������
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>

"create undo file
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo
if v:version >= 730
  set undofile                " keep a persistent backup file
  set undodir=~/bak/vimundo/
endif

set wildignore=*.swp,*.bak,*.pyc,*.class

"��ʾ��ǰ���к��кţ�
set ruler
""��״̬����ʾ�������������
set showcmd
" Show current mode
set showmode

" Set 7 lines to the cursor - when moving vertically using j/k ���¹���,ʼ�����м�
set scrolloff=7

"set winwidth=79

" �����У���״̬���£��ĸ߶ȣ�Ĭ��Ϊ1��������2
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
" Always show the status line
set laststatus=2

"==========================================
" file encode, �ļ�����,��ʽ
"==========================================
" �������ļ��ı���Ϊ UTF-8
"set fileencodings=ucs-bom,utf-8,gb2312,big5,latin1

set encoding=utf-8
" �Զ��жϱ���ʱ�����γ������±��룺
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn
language message zh_CN.UTF-8
set langmenu=zh_CN.UTF-8
"set enc=2byte-gb18030
" �������ֻӰ����ͨģʽ (��ͼ�ν���) �µ� Vim��
set termencoding=utf-8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" ����Unicodeֵ����255���ı������صȵ��ո������С�
set formatoptions+=m
" �ϲ���������ʱ�������м�ӿո�
set formatoptions+=B

"==========================================
" others ��������
"==========================================
autocmd! bufwritepost _vimrc source % " vimrc�ļ��޸�֮���Զ����ء� windows��
autocmd! bufwritepost .vimrc source % " vimrc�ļ��޸�֮���Զ����ء� linux��

" �Զ���ȫ����
"��Vim�Ĳ�ȫ�˵���Ϊ��һ��IDEһ��(�ο�VimTip1228)
"set completeopt+=longest
set completeopt=longest,menu

"�뿪����ģʽ���Զ��ر�Ԥ������
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"�س���ѡ�е�ǰ��
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"

"�������Ҽ�����Ϊ ����ʾ������Ϣ
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

" ��ǿģʽ�е��������Զ���ɲ���
set wildmenu
" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*.class

" Python �ļ���һ�����ã����粻Ҫ tab ��
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab ai

" if this not work ,make sure .viminfo is writable for you
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"ɾ������ո�
" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()

" Remember info about open buffers on close"
set viminfo^=%

" For regular expressions turn magic on
set magic

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

"==========================================
"hot key  �Զ����ݼ�
"==========================================
let mapleader = ','
let g:mapleader = ','

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"ǿ���Լ��� hjkl
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

"Treat long lines as break lines (useful when moving around in them)
"se swap֮��ͬ����������ֱ����
map j gj
map k gk

" better command line editing
cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

"Smart way to move between windows ���������ƶ�
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Go to home and end using capitalized directions
noremap H 0
noremap L $

" Remap VIM 0 to first non-blank character
map 0 ^

" Speed up scrolling of the viewport slightly
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>

""Ϊ���㸴�ƣ���<F2>����/�ر��к���ʾ:
nnoremap <F2> :set nonumber! number?<CR>
nnoremap <F3> :set list! list?<CR>
nnoremap <F4> :set wrap! wrap?<CR>
"set paste
set pastetoggle=<F5>            " when in insert mode, press <F2> to go to
"    paste mode, where you can paste mass data
"    that won't be autoindented

" disbale paste mode when leaving insert mode
au InsertLeave * set nopaste

nnoremap <F6> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
"map <c-space> ?"

map Y y$
"cmap w!! %!sudo tee > /dev/null %
" w!! to sudo & write a file
cmap w!! w !sudo tee >/dev/null %
noremap <silent><leader>/ :nohls<CR>

inoremap kj <Esc>
" I can type :help on my own, thanks.
noremap <F1> <Esc>"

nnoremap ; :

nnoremap <leader>v V`}

"Use sane regexes"
nnoremap / /\v
vnoremap / /\v

"Keep search pattern at the center of the screen."
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

"Use arrow key to change buffer"
noremap <left> :bp<CR>
noremap <right> :bn<CR>

""Jump to start and end of line using the home row keys
""
nmap t o<ESC>k
nmap T O<ESC>j

" ctrl +jk to move lines   �����ô�����...һ��û������ĸ�ӳ��
"noremap <C-k> :m+<CR>
"noremap <C-j> :m-2<CR>
"inoremap <C-j> <Esc>:m+<CR>
"inoremap <C-k> <Esc>:m-2<CR>

" Quickly close the current window
nnoremap <leader>q :q<CR>

" Swap implementations of ` and ' jump to markers
" By default, ' jumps to the marked line, ` jumps to the marked line and
" column, so swap them
nnoremap ' `
nnoremap ` '

" Use ,d (or ,dd or ,dj or 20,dd) to delete a line without adding it to the
" yanked stack (also, in visual mode)
"nnoremap <silent> <leader>d "_d
"vnoremap <silent> <leader>d "_d

" remap U to <C-r> for easier redo
nnoremap U <C-r>

"au VimResized * exe "normal! \<c-w>=""

" select all
map <Leader>sa ggVG"

" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

" Close the current buffer
"map <leader>bd :Bclose<cr>
"" " Close all the buffers
"map <leader>ba :1,1000 bd!<cr>

map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" tabnext  tabpreviouse

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/


"################### ������� ###################"
filetype off " required! turn off
"set rtp+=~/.vim/bundle/vundle/
set rtp+=d:/github/new_vim/bundle/vundle/
call vundle#rc()

"ʹ��Vundle������Vundle
Bundle 'gmarik/vundle'
" vim plugin bundle control, command model
" :BundleInstall     install
" :BundleInstall!    update
" :BundleClean       remove plugin not in list

"################### ���� ###################"

"nerdtree��״�ļ�����
" ------------ nerdtree
Bundle 'scrooloose/nerdtree'
map <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$', '^\.hg$' ]
let g:netrw_home='~/bak'
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end

"buffer����
" ------------ minibufferexpl
Bundle 'fholgado/minibufexpl.vim'
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
"���FileExplorer���ڱ�С����
let g:miniBufExplForceSyntaxEnable = 1
let g:miniBufExplorerMoreThanOne=2
let g:miniBufExplCycleArround=1

" Ĭ�Ϸ�������ҿ����л�buffer
nnoremap <TAB> :MBEbn<CR>
noremap <leader>bn :MBEbn<CR>
noremap <leader>bp :MBEbp<CR>
noremap <leader>bd :MBEbd<CR>

"tag�б��taglistά�Ȳ�ͬ
" ------------ tagbar
Bundle 'majutsushi/tagbar'
nmap <F9> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

"tag�б�
" ------------ taglist (need ctags)
Bundle 'vim-scripts/taglist.vim'
set tags=tags;/
let Tlist_Ctags_Cmd="ctags"
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Open = 0
let Tlist_Auto_Update = 1
let Tlist_Close_On_Select = 0
let Tlist_Compact_Format = 0
let Tlist_Display_Prototype = 0
let Tlist_Display_Tag_Scope = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close = 0
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Max_Submenu_Items = 1
let Tlist_Max_Tag_Length = 30
let Tlist_Process_File_Always = 0
let Tlist_Show_Menu = 0
let Tlist_Show_One_File = 1
let Tlist_Sort_Type = "order"
let Tlist_Use_Horiz_Window = 0
let Tlist_Use_Right_Window = 0
let Tlist_WinWidth = 25


"�ļ�����
" ------------ ctrlp
Bundle 'kien/ctrlp.vim'
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
map <leader>f :CtrlPMRU<CR>
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux"
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
      \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz)$',
      \ }
"\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

"################### ��ʾ��ǿ ###################"
"
"������ʾ��ǿ
Bundle 'kien/rainbow_parentheses.vim'
let g:rbpt_colorpairs = [
      \ ['brown',       'RoyalBlue3'],
      \ ['Darkblue',    'SeaGreen3'],
      \ ['darkgray',    'DarkOrchid3'],
      \ ['darkgreen',   'firebrick3'],
      \ ['darkcyan',    'RoyalBlue3'],
      \ ['darkred',     'SeaGreen3'],
      \ ['darkmagenta', 'DarkOrchid3'],
      \ ['brown',       'firebrick3'],
      \ ['gray',        'RoyalBlue3'],
      \ ['black',       'SeaGreen3'],
      \ ['darkmagenta', 'DarkOrchid3'],
      \ ['Darkblue',    'firebrick3'],
      \ ['darkgreen',   'RoyalBlue3'],
      \ ['darkcyan',    'SeaGreen3'],
      \ ['darkred',     'DarkOrchid3'],
      \ ['red',         'firebrick3'],
      \ ]
let g:rbpt_max = 40
let g:rbpt_loadcmd_toggle = 0

"���� solarized
Bundle 'altercation/vim-colors-solarized'
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"

"���� molokai
"Bundle 'tomasr/molokai'

"���� railscasts
Bundle 'vim-scripts/railscasts'
"

"################### �����ƶ� ###################"

"����Ч���ƶ� ,, + w/fx
Bundle 'Lokaltog/vim-easymotion'

Bundle 'vim-scripts/matchit.zip'
"

"################### ��ȫ�����ٱ༭ ###################"
" ���ٲ������Ƭ��
"Bundle 'vim-scripts/UltiSnips'
Bundle 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
"�����Ŵ���Ƭ�ε��ļ��� .vim/snippets�£�ʹ���Զ����Ĭ�ϵģ�����ĵ�ȫ�֣��г�ͻ�Ļ���ʾ
"let g:UltiSnipsSnippetDirectories=["snippets", "bundle/UltiSnips/UltiSnips"]

"���� �Ӽ�ע��
Bundle 'scrooloose/nerdcommenter'
" ���ټ����޸Ļ����ַ�
Bundle 'tpope/vim-surround'
"�ԡ�=,:'���Զ�����
Bundle 'godlygeek/tabular'
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
"
" end turn on
filetype plugin indent on
"
"========================== config for plugins end ======================================

"==========================================
" ����,��һЩչʾ����ɫ���޸�
"==========================================
"�����﷨����
syntax enable
syntax on

" Set extra options when running in GUI mode
if has("gui_running")
  au GUIEnter * simalt ~x   "win�´��Զ�ȫ��
  set guifont=Monaco:h10
  "set guifont=Droid\ Sans\ Mono:h12
  "set guifont=Inconsolata:h14
  "set guifont=YaHei\ Consolas\ Hybrid:h16
  set guioptions-=T
  set guioptions+=e
  set guioptions-=r
  set guioptions-=L
  set guitablabel=%M\ %t
  set showtabline=1
  set linespace=2
  set noimd
  set t_Co=256
endif


" �޸��������ɫչʾ
colorscheme solarized
"set background=dark
set t_Co=256

"colorscheme molokai
"colorscheme desert
"colorscheme railscasts

"���ñ��һ�еı�����ɫ������һ����ɫһ��
hi! link SignColumn   LineNr
hi! link ShowMarksHLl DiffAdd
hi! link ShowMarksHLu DiffChange

"" for error highlight����ֹ�������б�쵼�¿�����
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

" settings for kien/rainbow_parentheses.vim
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
