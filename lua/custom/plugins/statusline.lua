return {
  'nvim-lualine/lualine.nvim',
  config = function()
-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

-- stylua: ignore
local colors = {
  blue   = '#82e2ff',
  cyan   = '#61ffca',
  black  = '#15141b',
  white  = '#edecee',
  red    = '#ff6767',
  violet = '#a277ff',
  soft_purple = '#29263c',
  grey   = '#303030',
}

    vim.api.nvim_set_hl(0, 'statusline', { bg = nil })
    local bubbles_theme = {
      normal = {
        a = { fg = colors.black, bg = colors.violet },
        b = { fg = colors.cyan, bg = colors.soft_purple },
        c = { fg = colors.black, bg = colors.black },
      },

      insert = { a = { fg = colors.cyan, bg = colors.black } },
      visual = { a = { fg = colors.black, bg = colors.red } },
      replace = { a = { fg = colors.black, bg = colors.red } },

      inactive = {
        a = { fg = colors.black, bg = colors.black },
        b = { fg = colors.black, bg = colors.black },
        c = { fg = colors.black, bg = colors.black },
      },
    }

    require('lualine').setup {
      options = {
        theme = bubbles_theme,
        component_separators = '',
        section_separators = { left = '', right = '' },
      },
      sections = {
        lualine_a = { { 'mode', separator = { left = '', right = '' }, right_padding = 2 } },
        lualine_b = { 'filename', 'branch' },
        lualine_c = {
          -- '%=', --[[ add your center compoentnts here in place of this comment ]]
        },
        lualine_x = {},
        lualine_y = { 'filetype', 'progress' },
        lualine_z = {
          { 'location', separator = { left = '', right = '' }, left_padding = 2 },
        },
      },
      inactive_sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
      },
      tabline = {},
      extensions = {},
    }
  end,
}
