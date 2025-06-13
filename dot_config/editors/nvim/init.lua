-- Ensure Lazy.nvim is installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- ✅ Performance Tweaks
vim.opt.updatetime = 300  -- Faster completion
vim.opt.timeoutlen = 500   -- Reduce timeout for mapped sequences

-- ✅ UI Enhancements
vim.opt.syntax = "on"
vim.opt.termguicolors = true -- Ensure 24-bit colors
vim.opt.background = "dark"  -- Ensure dark mode
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true   -- Highlight current line
vim.opt.mouse = "a"         -- Enable mouse support
vim.opt.signcolumn = "yes"  -- Always show sign column

-- ✅ System Clipboard Support
vim.opt.clipboard = "unnamedplus" -- Use system clipboard for copy-paste

-- ✅ Indentation Settings
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- ✅ Install and Configure Lazy.nvim
require("lazy").setup({
    { "neovim/nvim-lspconfig" },  -- LSP support
    { "folke/tokyonight.nvim" },  -- TokyoNight Colorscheme
    { "ellisonleao/gruvbox.nvim", priority = 1000, config = function()
        require("gruvbox").setup({
            terminal_colors = true, 
            contrast = "hard", -- Options: "hard", "soft", "medium"
            transparent_mode = false,
            overrides = {
		CursorLine = { bg = "#32302f" }, -- Make current line more visible
	    },
        })
        vim.cmd("set background=dark") -- 🔥 Ensure dark mode
        vim.cmd("colorscheme gruvbox") -- ✅ Apply Gruvbox
    end },
})

-- ✅ Ensure Gruvbox Loads on Startup
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        vim.cmd("set background=dark")
        vim.cmd("colorscheme gruvbox")
    end
})

-- ✅ Load LSP Configurations
local lspconfig = require("lspconfig")
lspconfig.pyright.setup{}  -- Python LSP
lspconfig.tsserver.setup{} -- JavaScript/TypeScript LSP
lspconfig.clangd.setup{}   -- C/C++ LSP

-- ✅ Autocommands for Better UX
vim.api.nvim_create_autocmd("FileType", {
    pattern = "qf,help,man",
    command = "nnoremap <silent> <buffer> q :close<CR>"
})

-- ✅ Key Mappings
vim.g.mapleader = " " -- Set Space as leader key
vim.keymap.set("n", "<leader>e", ":Lexplore<CR>", { noremap = true, silent = true }) -- Open file explorer
vim.keymap.set("n", "<leader>q", ":q<CR>", { noremap = true, silent = true }) -- Quit Neovim
vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true }) -- Save file
vim.keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true }) -- Copy to clipboard
vim.keymap.set("n", "<leader>p", '"+p', { noremap = true, silent = true }) -- Paste from clipboard

