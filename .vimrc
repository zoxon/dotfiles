set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.


" GENERAL
" -----------------------------------------------------------------------------
Bundle 'editorconfig/editorconfig-vim'

Bundle 'rking/ag.vim'
nnoremap <leader>a :Ag -i<space>

Bundle 'matthias-guenther/hammer.vim'
nmap <leader>p :Hammer<cr>

Bundle 'junegunn/vim-easy-align'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'maxbrunsfeld/vim-yankstack'
Bundle 'tpope/vim-eunuch'

Bundle 'scrooloose/nerdtree'
" Disable the scrollbars (NERDTree)
set guioptions-=r
set guioptions-=L
" Keep NERDTree window fixed between multiple toggles
set winfixwidth

Bundle 'michaeljsmith/vim-indent-object'
let g:indentobject_meaningful_indentation = ["haml", "sass", "python", "yaml", "markdown"]

Bundle 'Spaceghost/vim-matchit'
Bundle 'kien/ctrlp.vim'
let g:ctrlp_working_path_mode = ''

Bundle 'vim-scripts/scratch.vim'

Bundle 'troydm/easybuffer.vim'
nmap <leader>be :EasyBufferToggle<cr>

Bundle 'terryma/vim-multiple-cursors'


" FANCY
" -----------------------------------------------------------------------------
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'


" INDENT
" -----------------------------------------------------------------------------
Bundle 'Yggdroot/indentLine'
set list lcs=tab:\|\
let g:indentLine_color_term = 111
let g:indentLine_color_gui = '#DADADA'
let g:indentLine_char = 'c'
"let g:indentLine_char = '∙▹¦'
let g:indentLine_char = '∙'


" CODING
" -----------------------------------------------------------------------------
Bundle 'majutsushi/tagbar'
nmap <leader>t :TagbarToggle<CR>

Bundle 'gregsexton/gitv'

Bundle 'joonty/vdebug.git'

Bundle 'scrooloose/nerdcommenter'
nmap <leader># :call NERDComment(0, "invert")<cr>
vmap <leader># :call NERDComment(0, "invert")<cr>

" - Bundle 'msanders/snipmate.vim'
Bundle 'sjl/splice.vim'

Bundle 'tpope/vim-fugitive'
nmap <leader>gs :Gstatus<CR>
nmap <leader>gc :Gcommit -v<CR>
nmap <leader>gac :Gcommit --amen -v<CR>
nmap <leader>g :Ggrep
" ,f for global git search for word under the cursor (with highlight)
nmap <leader>f :let @/="\\<<C-R><C-W>\\>"<CR>:set hls<CR>:silent Ggrep -w "<C-R><C-W>"<CR>:ccl<CR>:cw<CR><CR>
" same in visual mode
:vmap <leader>f y:let @/=escape(@", '\\[]$^*.')<CR>:set hls<CR>:silent Ggrep -F "<C-R>=escape(@", '\\"#')<CR>"<CR>:ccl<CR>:cw<CR><CR>

Bundle 'scrooloose/syntastic'
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': ['ruby', 'python', ], 'passive_filetypes': ['html', 'css', 'slim'] }

" --

Bundle 'vim-scripts/Reindent'

autocmd FileType gitcommit set tw=68 spell
autocmd FileType gitcommit setlocal foldmethod=manual

" Check API docs for current word in Zeal: http://zealdocs.org/
nnoremap <leader>d :!zeal --query "<cword>"&<CR><CR>


" HTML
" -----------------------------------------------------------------------------
Bundle 'tpope/vim-haml'
Bundle 'juvenn/mustache.vim'
Bundle 'tpope/vim-markdown'
Bundle 'digitaltoad/vim-jade'
Bundle 'slim-template/vim-slim'

au BufNewFile,BufReadPost *.jade setl shiftwidth=2 tabstop=2 softtabstop=2 expandtab
au BufNewFile,BufReadPost *.html setl shiftwidth=2 tabstop=2 softtabstop=2 expandtab
au BufNewFile,BufReadPost *.slim setl shiftwidth=2 tabstop=2 softtabstop=2 expandtab
au BufNewFile,BufReadPost *.md set filetype=markdown

let g:markdown_fenced_languages = ['coffee', 'css', 'erb=eruby', 'javascript', 'js=javascript', 'json=javascript', 'ruby', 'sass', 'xml', 'html']


" CSS
" -----------------------------------------------------------------------------
Bundle 'wavded/vim-stylus'
Bundle 'lunaru/vim-less'
nnoremap ,m :w <BAR> !lessc % > %:t:r.css<CR><space>


" JS
" -----------------------------------------------------------------------------
Bundle 'kchmck/vim-coffee-script'
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 tabstop=2 softtabstop=2 expandtab

Bundle 'alfredodeza/jacinto.vim'
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
au BufNewFile,BufReadPost *.coffee setl tabstop=2 softtabstop=2 shiftwidth=2 expandtab

Bundle 'itspriddle/vim-jquery'
Bundle 'nono/jquery.vim'



" COLORS
" -----------------------------------------------------------------------------
Bundle 'twerth/ir_black'
Bundle 'tomasr/molokai'
Bundle 'jpo/vim-railscasts-theme'


" All of your Plugins must be added before the following line
call vundle#end()            " required
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
" Put your non-Plugin stuff after this line


:set number
colorscheme ir_black
