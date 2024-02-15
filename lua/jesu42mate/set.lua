vim.g.mapleader = " ";
vim.opt.nu = true;
vim.opt.relativenumber = true;
vim.opt.hidden = true;

vim.opt.spell = false;


--vim.opt.shiftwidth = 2;
--vim.opt.softtabstop = 2;
vim.expandtap = true
vim.cmd(":set expandtab")
--
--vim.opt.smarttab = false;
vim.opt.tabstop = 2;
--
--local function e()
--	print("Hello")
--end
--
--vim.opt.smartindent = true;
--vim.opt.autoindent = true;

--vim.opt.wrap = false;

vim.opt.termguicolors = true;

vim.opt.scrolloff = 10;
vim.opt.signcolumn = "no";
vim.opt.isfname:append("@-@");

vim.opt.updatetime = 50;

--vim.opt.colorcolumn = "80";
