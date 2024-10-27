vim.cmd('source ~/.nvimrc')
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

-- Path where Vim-Plug will be installed
local plug_path = config_path .. "autoload/plug.vim"

-- Check if Vim-Plug is already installed
local stat = vim.loop.fs_stat(plug_path)
if stat then
    print("Vim-Plug is already installed:", plug_path)
else
    -- Download Vim-Plug
    local download_command = {
        "curl", "-fLo",
        plug_path,
        "--create-dirs",
        "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
    }
    local result = execute(download_command)
    if result == 0 then
        print("Vim-Plug installed successfully!")
    else
        print("Error installing Vim-Plug.")
    end
end

-- Set up plugins using Vim-Plug
vim.cmd("call plug#begin('~/.config/nvim/plugged')")
-- Define pluginse

vim.cmd("Plug 'nvim-telescope/telescope.nvim'")
vim.cmd("Plug 'catppuccin/nvim'")
vim.cmd("Plug 'nvim-lua/plenary.nvim'")
vim.cmd("Plug 'projekt0n/github-nvim-theme'")
vim.cmd("Plug 'ellisonleao/gruvbox.nvim'")
vim.cmd("Plug 'EdenEast/nightfox.nvim'")
vim.cmd("Plug 'nvim-lualine/lualine.nvim'")
vim.cmd("Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}")
vim.cmd("Plug 'nvim-tree/nvim-web-devicons' ")
vim.cmd("Plug 'akinsho/bufferline.nvim'")
vim.cmd("Plug 'neovim/nvim-lspconfig'")
vim.cmd("Plug 'hrsh7th/cmp-nvim-lsp'")
vim.cmd("Plug 'hrsh7th/cmp-buffer'")
vim.cmd("Plug 'hrsh7th/cmp-path'")
vim.cmd("Plug 'hrsh7th/cmp-cmdline'")
vim.cmd("Plug 'hrsh7th/nvim-cmp'")
vim.cmd("Plug 'hrsh7th/cmp-vsnip'")
vim.cmd("Plug 'hrsh7th/vim-vsnip'")
vim.cmd("call plug#end()")
--vim.cmd('colorscheme carbonfox')
--vim.cmd("colorscheme catppuccin")
--

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
    --'~/.config/nvim/lua/bufline-config.lua',
    -- Add more Lua files as needed
}

for _, file in ipairs(lua_files) do
    source_lua(file)
end

-- Terminal Settings
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
vim.o.background = "dark" -- or "light" for light mode
