require("bufferline").setup{
    options = {
        mode = "buffers",
        numbers = "ordinal",
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                text_align = "left"
            }
        }
    }
}
