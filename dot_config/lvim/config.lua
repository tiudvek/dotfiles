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

lvim.colorscheme = 'embark'

-- Packages
lvim.plugins = {
    {'embark-theme/vim', lazy = false},
    'akinsho/toggleterm.nvim'
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
formatters.setup {{name = 'blue'}, {name = 'prettier'}}

-- Linters
local linters = require('lvim.lsp.null-ls.linters')
linters.setup {{command = 'flake8', args = {"--ignore=E203"}}, {command = 'eslint'}}
