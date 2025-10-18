require 'nvim-treesitter.install'.compilers = { "/med/build/gcc/gcc-11.1.0/rhel7/bin/gcc" }
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "cpp", "c", "lua" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (or "all")
  --ignore_install = { "javascript" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!
  ensure_installed = "maintained", -- Only use parsers that are maintained
  highlight = {
      enable = true,              -- false will disable the whole extension
      additional_vim_regex_highlighting = false,
  },
  indent = {
      enable = true,
  }
 
}
                                   
