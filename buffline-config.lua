require("bufferline").setup{
  options = {
    mode = "buffers",
    separator_style = "thick", -- or "thick" | "thin" | "slope"
    diagnostics = "nvim_lsp",
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "center",
        separator = true,
      }
    }
  }
}

