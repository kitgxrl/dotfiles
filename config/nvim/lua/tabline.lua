require('bufferline').setup {
    options = {
        show_close_icon = false,
        offsets = {
            { 
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center"
            }
        }
    },

    highlights = {
        fill = {
            guibg = '#3B4252'
        }
    }
}
