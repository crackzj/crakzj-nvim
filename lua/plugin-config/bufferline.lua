vim.opt.termguicolors = true
local bufferline = require("bufferline")
bufferline.setup{
    options = {
        mode = "buffers",
        numbers = "ordinal",
        style_preset = bufferline.style_preset.default, -- or bufferline.style_preset.minimal,
        themable = true, -- allows highlight groups to be overriden i.e. sets highlights as default
        close_command = "bdelete! %d",       -- can be a string | function, | false see "Mouse actions"
        --
        -- 鼠标
        --
        right_mouse_command = "bdelete! %d", -- can be a string | function | false, see "Mouse actions"
        left_mouse_command = "buffer %d",    -- can be a string | function, | false see "Mouse actions"
        middle_mouse_command = nil,          -- can be a string | function, | false see "Mouse actions"

        indicator = {
            icon = '▎', -- this should be omitted if indicator style is not 'icon'
            style = 'icon',  -- | 'underline' | 'none',
        },


        buffer_close_icon = '󰅖',

        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',

        max_name_length = 18,
        max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
        truncate_names = true, -- whether or not tab names should be truncated
        tab_size = 18,
        diagnostics =  "nvim_lsp",--false | "nvim_lsp" | "coc",
        diagnostics_update_in_insert = false,
        -- The diagnostics indicator can be set to nil to keep the buffer name highlight but delete the highlighting
        --diagnostics_indicator = function(count, level, diagnostics_dict, context)
         --   return "("..count..")"
       -- end,

        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          local icon = level:match("error") and " " or " "
            return " " .. icon .. count
        end,
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer", --| function ,
                text_align = "left", --| "center" | "right"
                separator = true
            }
        },
         color_icons = true, --| false, -- whether or not to add the filetype icon highlights
         show_buffer_icons = true, --| false, -- disable filetype icons for buffers
         show_buffer_close_icons = true, --| false,
         show_close_icon = true, --| false,
         show_tab_indicators = true, --| false,
         show_duplicate_prefix = true, --| false, -- whether to show duplicate buffer prefix
         persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
         -- can also be a table containing 2 custom separators
         -- [focused and unfocused]. eg: { '|', '|' }
         separator_style = "thin",  --"slant"| "slope" | "thick" | "thin" | { 'any', 'any' },
         enforce_regular_tabs = false, --| true,
         always_show_bufferline = true, --| false,
          hover = {
             enabled = true,
             delay = 200,
             reveal = {'close'}
         }

    }
}

-- rest of config ...

--- count is an integer representing total count of errors
--- level is a string "error" | "warning"
--- diagnostics_dict is a dictionary from error level ("error", "warning" or "info")to number of errors for each level.
--- this should return a string
--- Don't get too fancy as this function will be executed a lot



