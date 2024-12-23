-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
--
--
require 'custom.config.autocmds'
require 'custom.config.keymaps'
vim.cmd 'set nolist'

-- configuring float border color
local cmp = require 'cmp'
if cmp then
  cmp.setup {
    window = {
      completion = cmp.config.window.bordered {
        border = 'rounded',
        winhighlight = 'Normal:Normal,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:None',
      },
      documentation = cmp.config.window.bordered {
        border = 'rounded',
        winhighlight = 'Normal:Normal,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:None',
      },
    },
  }
end

-- Set the FloatBorder highlight group
vim.api.nvim_set_hl(0, 'FloatBorder', { fg = '#a277ff', bg = '#15141b' }) -- fg is the border color, bg matches the window background

-- Set FloatBorder highlight group for custom border styling
vim.api.nvim_set_hl(0, 'FloatBorder', { fg = '#a277ff', bg = '#15141b' })

-- Override vim.ui.input and vim.ui.select for custom floating windows
local function custom_border_ui_input(...)
  local input_opts = select(2, ...)
  input_opts.border = 'rounded'
  input_opts.winhighlight = 'Normal:Normal,FloatBorder:FloatBorder'
  return vim.ui.input(...)
end

local function custom_border_ui_select(...)
  local select_opts = select(3, ...)
  select_opts.border = 'rounded'
  select_opts.winhighlight = 'Normal:Normal,FloatBorder:FloatBorder'
  return vim.ui.select(...)
end

-- Replace Neovim's built-in UI components with custom bordered versions
vim.ui.input = custom_border_ui_input
vim.ui.select = custom_border_ui_select

return {}
