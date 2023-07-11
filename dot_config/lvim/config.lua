-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- Options
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true

lvim.leader = ","

lvim.colorscheme = 'enfocado'
vim.g.enfocado_style = 'nature'

-- Packages
lvim.plugins = {
    {'embark-theme/vim', lazy = false},
    'akinsho/toggleterm.nvim',
    {'wuelnerdotexe/vim-enfocado', lazy = false}
}

lvim.builtin.bufferline.active = false

-- Keybinds
lvim.builtin.terminal.open_mapping = '<leader>t'

-- Treesitter
lvim.builtin.treesitter.ensure_installed = {
    'python',
    'lua',
    'javascript',
    'rust',
    'cpp'
}

-- Formatters
local formatters = require('lvim.lsp.null-ls.formatters')
formatters.setup {{name = 'black'}}
lvim.format_on_save.enabled = true
lvim.format_on_save.pattern = { "*.py" }

-- Linters
local linters = require('lvim.lsp.null-ls.linters')
linters.setup {{command = 'flake8', args = {"--ignore=E203"}, filetypes={"python"}}}

-- Neovide
if vim.g.neovide then
    vim.o.guifont = "monospace,Noto Emoji:h8.5"
    vim.o.linespace = 0
end
