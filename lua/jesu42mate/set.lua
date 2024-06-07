vim.g.mapleader = " ";
vim.opt.nu = true;
vim.opt.relativenumber = false;
vim.opt.hidden = true;
vim.opt.spell = false;
vim.opt.cursorline = true
--vim.opt.shiftwidth = 2;
--vim.opt.softtabstop = 2;
vim.expandtap = true
vim.cmd(":set expandtab")
--vim.opt.smarttab = false;
vim.opt.tabstop = 2;
--vim.opt.smartindent = true;
--vim.opt.autoindent = true;
--vim.opt.wrap = false;
vim.opt.termguicolors = true;
vim.opt.scrolloff = 3;
vim.opt.signcolumn = "no";
vim.opt.isfname:append("@-@");
vim.opt.updatetime = 50;
vim.opt.colorcolumn = "80";
-- COPILOT 
vim.g.copilot_assume_mapped = true;

--vim.cmd("colorscheme ayu")
--vim.cmd("set guicursor=n-v-c:block-Cursor/lCursor")
vim.api.nvim_set_option("clipboard","unnamed")
