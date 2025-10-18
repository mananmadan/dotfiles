-- Basic Options                                                                                                                                                                                                                      
vim.opt.scrolloff = 4                                                                                                                                                                                                                 
vim.opt.ruler = true                                                                                                                                                                                                                  
vim.opt.tabstop = 2                                                                                                                                                                                                                   
vim.opt.shiftwidth = 2                                                                                                                                                                                                                
vim.opt.expandtab = true                                                                                                                                                                                                              
vim.opt.smarttab = true                                                                                                                                                                                                               
vim.opt.textwidth = 85                                                                                                                                                                                                                
vim.opt.autoindent = true                                                                                                                                                                                                             
vim.opt.cindent = true                                                                                                                                                                                                                
vim.opt.ic = true                                                                                                                                                                                                                     
vim.opt.wrapscan = false                                                                                                                                                                                                              
vim.opt.terse = false                                                                                                                                                                                                                 
vim.opt.showmode = true                                                                                                                                                                                                               
vim.opt.compatible = false                                                                                                                                                                                                            
vim.opt.filetype = 'on'                                                                                                                                                                                                               
vim.opt.tags = "tags,../tags,../../tags,../../../tags"                                                                                                                                                                                
--vim.diagnostic.disable()                                                                                                                                                                                                            
                                                                                                                                                                                                                                      
                                                                                                                                                                                                                                      
-- Vim basic settings                                                                                                                                                                                                                 
vim.cmd('set number')                                                                                                                                                                                                                 
                                                                                                                                                                                                                                      
-- Clipboard and background settings                                                                                                                                                                                                  
vim.opt.clipboard = 'unnamedplus'                                                                                                                                                                                                     
vim.opt.background = 'dark'                                                                                                                                                                                                           
                                                                                                                                                                                                                                      
-- Mappings                                                                                                                                                                                                                           
vim.keymap.set('n', '<F1>', ':highlight normal guifg=black guibg=white<CR>')                                                                                                                                                          
vim.keymap.set('n', '<F2>', ':n<CR>')                                                                                                                                                                                                 
vim.keymap.set('n', '<F3>', ':browse confirm e<CR>')
vim.keymap.set('n', '<F4>', ':1,$ s!<CR>')
vim.keymap.set('n', '<F5>', ':1<CR>')
vim.keymap.set('n', '<F6>', ':$<CR>')
vim.keymap.set('n', '<F7>', ':if exists("syntax_on") | syntax off | else | syntax on | endif<CR>')
vim.keymap.set('n', '<F8>', ':n<CR>')
vim.keymap.set('n', '<F9>', ':%s!  !    !g<CR>')
vim.keymap.set('n', '<F10>', ':. !fmt -65<CR>')
vim.keymap.set('n', '<F11>', 'O<Esc>Sx...x...<CR>')
vim.keymap.set('n', '<F12>', 'O<Esc>S....5...<CR>')
vim.keymap.set('n', 'e', ':Explore<CR>')
vim.keymap.set('n', '<C-Right>', 'gt')
vim.keymap.set('n', '<C-Left>', 'gT')

-- Plugin Management (Vundle equivalent with packer.nvim)
vim.cmd [[packadd packer.nvim]]
-- Run `:PackerSync` to install plugins
local packer = require('packer')
  packer.startup(function()
    use 'wbthomason/packer.nvim'
    use 'preservim/nerdtree'
    use 'morhetz/gruvbox'
    use 'kien/ctrlp.vim'
    use 'ms-jpq/coq_nvim'
    use 'ervandew/supertab'
    use 'nvim-lua/plenary.nvim'  
    use 'nvim-telescope/telescope.nvim'    
    use 'nvim-treesitter/nvim-treesitter'
    use 'catppuccin/nvim'
    use 'projekt0n/github-nvim-theme'
    use 'ellisonleao/gruvbox.nvim'
    use 'EdenEast/nightfox.nvim'
    use 'nvim-lualine/lualine.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use 'akinsho/bufferline.nvim'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    use 'ray-x/cmp-treesitter'
    use 'akinsho/bufferline.nvim'
    use 'akinsho/bufferline.nvim'
    use 'SmiteshP/nvim-navic'
    use 'williamboman/mason-lspconfig.nvim'
    use 'williamboman/mason.nvim'
    use 'lewis6991/gitsigns.nvim'
    use 'tpope/vim-fugitive'
    use 'akinsho/toggleterm.nvim'
end)

-- Additional settings
vim.cmd([[
  set showtabline=2
  highlight TabModified ctermbg=green guibg=green
  highlight TabLineFill ctermbg=black guibg=dark
  colorscheme gruvbox
]])


-- Function to execute shell commands and handle errors
local function execute(command)
    print("Executing command:", command)
    local result = vim.fn.system(command)
    if result ~= 0 then
        print("Command failed with exit code:", result)
    end
    return result
end

-- Expand the tilde (~) to the home directory path
local config_path = vim.fn.expand("~/.config/nvim/")

vim.opt.termguicolors = true
-- Function to source Lua files
local function source_lua(file)
    local ok, err = pcall(dofile, vim.fn.expand(file))
    if not ok then
        print('Error sourcing ' .. file .. ': ' .. err)
    end
end

-- Source multiple Lua files
local lua_files = {
    --'~/.config/nvim/lua/catppuccin-config.lua',
    --'~/.config/nvim/lua/gruvbox-config.lua',
    '~/.config/nvim/lua/treesitter-config.lua',
    '~/.config/nvim/lua/telescope-config.lua',
    '~/.config/nvim/lua/nightfox-config.lua',
    '~/.config/nvim/lua/lualine-config.lua',
    '~/.config/nvim/lua/cmp-config.lua',
    '~/.config/nvim/lua/buffline-config.lua',
    '~/.config/nvim/lua/mason-config.lua',
    '~/.config/nvim/lua/navic-config.lua',
    '~/.config/nvim/lua/lsconfig.lua',
    '~/.config/nvim/lua/toggle-term.lua',
    -- Add more Lua files as needed
}

for _, file in ipairs(lua_files) do
    source_lua(file)
end

--[[ Terminal Settings
vim.api.nvim_set_keymap('t','<Esc>','<C-\\><C-n>',{noremap = true, silent = true})
-- Function to toggle terminal in a split window
function ToggleTerm()
  -- Check if the terminal buffer exists
  if vim.t.term_bufnr then
    -- Check if the terminal buffer is visible in a window
    local term_win = vim.fn.bufwinnr(vim.t.term_bufnr)
    if term_win ~= -1 then
      -- Terminal is visible, close it
      vim.cmd(term_win .. 'wincmd c')
    else
      -- Terminal is hidden, show it
      vim.cmd('belowright split | buffer ' .. vim.t.term_bufnr)
    end
  else
    -- Terminal does not exist, create it
    vim.cmd('belowright split | terminal')
    vim.t.term_bufnr = vim.fn.bufnr('')
  end
end

-- Map <C-'> to toggle terminal
vim.api.nvim_set_keymap('n', '<C-x>', ':lua ToggleTerm()<CR>', { noremap = true, silent = true })
]]

vim.o.background = "dark" -- or "light" for light mode
-- init.lua
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")


