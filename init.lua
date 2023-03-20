function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = false, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

require("plugins.packer");
require("plugins.ToggleTerm");
require("plugins.Coc");
require("plugins.NVimTree");
require("plugins.LuaLine");
require("plugins.Comment");

vim.cmd [[colorscheme moonfly]]
nmap('<C-f>', ':NvimTreeToggle<CR>');
nmap('<S-n>', ':bprev<CR>');
nmap('<S-m>', ':bnext<CR>');
