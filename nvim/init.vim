" Author: Carlos Lezama

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

set nu
set mouse=a
set tabstop=4       
set softtabstop=4  
set shiftwidth=4
set guicursor=a:blinkon100
set conceallevel=0

call plug#begin('~/.local/share/nvim/plugged')

Plug 'SirVer/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

Plug 'lervag/vimtex'
    let g:tex_flavor = 'latex'
    let g:vimtex_view_method = 'zathura'
    let g:vimtex_quickfix_mode = 0
	let g:tex_conceal = ""
	let g:vimtex_toc_enabled = 1
	map <C-c> :VimtexCompile<CR>
	map <C-d> :VimtexClean<CR>
	map <C-e> :VimtexErrors<CR>
	map <C-t> :VimtexTocToggle<CR>

Plug 'arcticicestudio/nord-vim'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'
	let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#tabline#left_sep = ''
	let g:airline#extensions#tabline#left_alt_sep = ''
	let g:airline#extensions#tabline#right_sep = ''
	let g:airline#extensions#tabline#right_alt_sep = ''
	let g:airline_powerline_fonts = 1
	let g:airline_left_sep = ''
	let g:airline_right_sep = ''
	let g:airline_theme = 'base16_nord'
	set showtabline=2
	set noshowmode

Plug 'Yggdroot/indentLine'

Plug 'preservim/nerdtree'
	map <S-t> :NERDTreeToggle<CR>
	map <C-w> :bd<CR>

Plug 'airblade/vim-gitgutter'
	set updatetime=250
	let g:gitgutter_set_sign_backgrounds = 1

Plug 'haya14busa/incsearch.vim'
	map <C-f>  <Plug>(incsearch-forward)
	map ?  <Plug>(incsearch-backward)
	map g/ <Plug>(incsearch-stay)
	map <Tab> <Over>(incsearch-next)
	map <S-Tab> <Over>(incsearch-prev)
	nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	let g:deoplete#enable_at_startup = 1

call plug#end()

colorscheme nord

au BufEnter *.tex :set conceallevel=0

