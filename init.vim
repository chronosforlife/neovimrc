" Don't forget to do pluginstall and cocinstall.
" And install a nerd font.

call plug#begin()    

Plug 'rafi/awesome-vim-colorschemes'
Plug 'godlygeek/tabular'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
Plug 'tpope/vim-fugitive'
Plug 'junegunn/goyo.vim'
Plug 'alvan/vim-closetag'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'neoclide/coc.nvim'
Plug 'Pocco81/TrueZen.nvim'
Plug 'tpope/vim-commentary'
Plug 'windwp/nvim-autopairs'
Plug 'feline-nvim/feline.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'neovim/nvim-lspconfig'
Plug 'karb94/neoscroll.nvim'

call plug#end()

let mapleader = "," 
set clipboard+=unnamedplus
colorscheme angr
colorscheme afterglow
colorscheme OceanicNextLight
colorscheme spacecamp_lite
colorscheme angr
colorscheme apprentice
colorscheme OceanicNext
colorscheme gruvbox
hi NonText guifg=bg

set termguicolors
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

lua << EOF
local true_zen = require("true-zen")

true_zen.setup({
	ui = {
		bottom = {
			laststatus = 0,
			ruler = false,
			showmode = false,
			showcmd = false,
			cmdheight = 1,
		},
		top = {
			showtabline = 0,
		},
		left = {
			number = false,
			relativenumber = false,
			signcolumn = "no",
		},
	},
	modes = {
		ataraxis = {
			left_padding = 32,
			right_padding = 32,
			top_padding = 1,
			bottom_padding = 1,
			ideal_writing_area_width = {0},
			auto_padding = true,
			keep_default_fold_fillchars = true,
			custom_bg = {"none", ""},
			bg_configuration = true,
			quit = "untoggle",
			ignore_floating_windows = true,
			affected_higroups = {
				NonText = true,
				FoldColumn = true,
				ColorColumn = true,
				VertSplit = true,
				StatusLine = true,
				StatusLineNC = true,
				SignColumn = true,
			},
		},
		focus = {
			margin_of_error = 5,
			focus_method = "experimental"
		},
	},
	integrations = {
		vim_gitgutter = false,
		galaxyline = false,
		tmux = false,
		gitsigns = false,
		nvim_bufferline = false,
		limelight = false,
		twilight = false,
		vim_airline = false,
		vim_powerline = false,
		vim_signify = false,
		express_line = false,
		lualine = false,
		lightline = false,
		feline = false
	},
	misc = {
		on_off_commands = false,
		ui_elements_commands = false,
		cursor_by_mode = false,
	}
})
EOF

lua << EOF
require('nvim-autopairs').setup{}
EOF

lua << EOF
require('feline').setup()
EOF

lua << EOF
require'nvim-tree'.setup()
EOF

lua << EOF
require'colorizer'.setup()
	  DEFAULT_OPTIONS = {
	RGB      = true;         -- #RGB hex codes
	RRGGBB   = true;         -- #RRGGBB hex codes
	names    = true;         -- "Name" codes like Blue
	RRGGBBAA = true;        -- #RRGGBBAA hex codes
	rgb_fn   = true;        -- CSS rgb() and rgba() functions
	hsl_fn   = true;        -- CSS hsl() and hsla() functions
	css      = true;        -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
	css_fn   = true;        -- Enable all CSS *functions*: rgb_fn, hsl_fn
	-- Available modes: foreground, background
	mode     = 'background'; -- Set the display mode.
  }
EOF

lua << EOF
require'lspconfig'.pyright.setup{}
EOF

nnoremap <leader>ft <cmd>Telescope<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>a <cmd>bp<cr>
nnoremap <leader>d <cmd>bn<cr>
nnoremap <leader>n <cmd>NERDTreeToggle<cr>
nnoremap <leader>g <cmd>Goyo<cr>
nnoremap <leader>q <cmd>@q<cr>
nnoremap <F9>	<cmd>bp<cr>
nnoremap <F10>  <cmd>bn<cr>
nnoremap <leader>wf <cmd>TZFocus<cr>
nnoremap <leader>n <cmd>NvimTreeToggle<cr>
set tabstop=8
set shiftwidth=8
highlight NonText guifg=bg

