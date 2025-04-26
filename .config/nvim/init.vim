call plug#begin('/home/chris/.neovim-plugins')

Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'numToStr/Comment.nvim'
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
Plug 'neovim/nvim-lsp'
Plug 'mhinz/vim-signify'

call plug#end()

set shiftwidth=4 smarttab
set expandtab
set tabstop=4
set mouse=
set nu
set updatetime=100

colorscheme catppuccin-frappe

let g:mapleader=" "
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <silent> bp :BufferLinePick<CR>
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a

lua << END
require('lualine').setup {
    options = {
        theme = 'jellybeans',
        section_separators = { left = '', right = ''},
    }
}
require('Comment').setup()
-- require('nvim_lsp').pyls.setup() -- can't require until language servers are installed
--require('bufferline').setup {
--    options = {
--        mode = 'buffers',
        -- diagnostics = "nvim_lsp"
        -- numbers = 'ordinal'
--    }
--}
END
