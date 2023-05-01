"----------Custom Build In Config----------"
set number			"enable line number
set clipboard=unnamedplus	"allow system clipboard
set shiftwidth=4 		"set tab size
set mouse=a 			"allow mouse navigation

" Mapping Default keybinds
" save
nnoremap <c-s> :w<cr>	
" quit
nnoremap <c-d> :q<cr>
" quit without save/force quit
nnoremap <c-b> :q!<cr>
"----------Plugins----------"
call plug#begin() 

Plug 'https://github.com/vim-airline/vim-airline.git' 		"Airline - Status Bar
Plug 'https://github.com/rafi/awesome-vim-colorschemes.git' 	"Vim Theme - Usage: :colorscheme <theme>
Plug 'https://github.com/preservim/nerdtree.git' 		"NerdTree - Vim File Manager
Plug 'https://github.com/tpope/vim-commentary.git'		"Comment shortcut - key: gcc / gc

call plug#end()


"---------Airline Configuration---------"
" Airline symbol config
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Remove tab bar arrow
" let g:airline_left_sep = ''
" let g:airline_right_sep = ''

" Show tabs at the top
set showtabline=2
let g:airline#extension#tabline#enable=1


"--------Vim Awesome Color Scheme--------"
colorscheme happy_hacking 

"----------NERD Tree Configuration----------"
let g:NERDTreeDirArrowExpandable="+"	"Show expand sign
let g:NERDTreeDirArrowCollapsible="~"	"Show collapse 
let NERDTreeShowHidden=1		"Show hidden folders

" Mapping NERDTree keybind
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
