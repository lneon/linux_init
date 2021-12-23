"한글깨짐 방지
set encoding=utf-8
set fileencodings=utf-8,cp949

set autoindent     " auto indent 
set cindent         " c source code auto indent
set smartindent     " more smart indent
set textwidth=79     
set nowrapscan     "don't search to top again
set nobackup         " don't create backup file
set ruler             " 상태표시줄에 커서의 위치 표시
set tabstop=4         " user spaces instead of tab
set expandtab
set shiftwidth=4     " auto indent - 4 space
set nu                 "set line number
set nowrap         "don't auto linebreak
set mouse=a                  "마우스 사용 가능

set ignorecase  "검색 시 대소문자 구별하지 않음
set hlsearch "검색 시 하이라이트 (색상강조)

syntax on "구문강조
filetype on "파일종류에 따른 구문강조


" vim window change
nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l


" 마우스 사용 On/Off
map <F7> <ESC>:set mouse=a<CR>
map <F8> <ESC>:set mouse-=a<CR>

colo molokai


"Vundle 세팅
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" 여기에 필요한 플러그인 추가

Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'

Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'

Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'gtags.vim'

Plugin 'valloric/youcompleteme'

call vundle#end()

"airline
set laststatus=2


"NERD Tree Option
silent! nmap <F2> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>
let g:NERDTreeMapActivateNode="<F3>"    " Let current page focus on NERDTree
let g:NERDTreeMapPreview="<F4>"            " preview mode
let NERDTreeWinPos = "left" "NERD Tree  = left
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '-'
" 파일없이 vim만 켤 경우 자동으로 NERD Tree 실행.
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" :Files (file search)

map <F5> :Files<CR>
let g:fzf_layout = { 'left': '~50%' } " down, up, left, right


" vim cpp enhanced highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1

" set tags+=/home/lneon/trunk/src/ctags

"gtags

"현재 cursor가 위치한 string을 tag에서 검색(definition등)
nmap <Leader>gd :Gtags <C-R>=expand("<cword>")<CR><CR>
"현재 cursor가 위치한 string으로 reference검색.사용하는 곳의 위치를 보여줌.
nmap <Leader>gr :Gtags -r <C-R>=expand("<cword>")<CR><CR>
"현재 cursor가 위치한 string으로 symbol 검색.(variable등)
nmap <Leader>gs :Gtags -s <C-R>=expand("<cword>")<CR><CR>
"--grep pattern 검색, 모든 파일에서 검색, (h, c, txt 등)
nmap <Leader>gg :Gtags -go <C-R>=expand("<cword>")<CR><CR>
"파일명 검색
nmap <Leader>gp :Gtags -Po <C-R>=expand("<cword>")<CR><CR>
"--regexp 검색.
nmap <Leader>ge :Gtags -ge <C-R>=expand("<cword>")<CR><CR>
     
" 위의 사용법과 동일하며, case sensitivity를 ignore
nmap <Leader>igd :Gtags -i <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>igr :Gtags -ir <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>igs :Gtags -is <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>igg :Gtags -igo <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>igp :Gtags -iPo <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>ige :Gtags -ige <C-R>=expand("<cword>")<CR><CR>a

" gtags 사용법
"코드가 있는 디렉토리만 선택 (옵션)
"$ find folder1 folder2 folder3 -type f -print >gtags.files
"$ gtags // 데이터생성

