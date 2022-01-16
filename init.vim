call plug#begin()    

Plug 'rafi/awesome-vim-colorschemes'
Plug 'godlygeek/tabular'
Plug 'preservim/nerdtree'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
Plug 'tpope/vim-fugitive'
Plug 'junegunn/goyo.vim'
Plug 'alvan/vim-closetag'
Plug 'mhinz/vim-startify'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'neoclide/coc.nvim'
Plug 'glacambre/firenvim'

call plug#end()

let mapleader = "," 
set clipboard+=unnamedplus
colorscheme OceanicNextLight
colorscheme spacecamp_lite
colorscheme angr
colorscheme gruvbox
set ignorecase
set cursorline
set cursorcolumn
set colorcolumn=80
set scrolloff=5
set nu 
set tabstop=8
set shiftwidth=8
set wrap
set emoji

 let g:startify_custom_header = [
	\'',]

 lua << END
 require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'auto',
    component_separators = { left = '|', right = '|'},
    section_separators = { left = '|-', right = '-|'},
    disabled_filetypes = {BINARY},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
	lualine_c = {'filename', 'filesize', 'buffers'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
END

nnoremap <leader>ft <cmd>Telescope<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fb <cmd>Telescope file_browser<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>a <cmd>bp<cr>
nnoremap <leader>d <cmd>bn<cr>
nnoremap <leader>n <cmd>NERDTreeToggle<cr>
nnoremap <leader>g <cmd>Goyo<cr>
nnoremap <leader>q <cmd>@q<cr>
nnoremap <F9>	<cmd>bp<cr>
nnoremap <F10>  <cmd>bn<cr>

