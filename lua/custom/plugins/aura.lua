return {
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  {
    'baliestri/aura-theme',
    lazy = false,
    priority = 1000,
    config = function(plugin)
      vim.opt.rtp:append(plugin.dir .. '/packages/neovim')
      vim.cmd [[colorscheme aura-dark]]

      -- configuring float border color
      -- local cmp = require 'blink-compat'
      -- if cmp then
      --   cmp.setup {
      --     window = {
      --       completion = cmp.config.window.bordered {
      --         border = 'rounded',
      --         winhighlight = 'Normal:Normal,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:None',
      --       },
      --       documentation = cmp.config.window.bordered {
      --         border = 'rounded',
      --         winhighlight = 'Normal:Normal,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:None',
      --       },
      --     },
      --   }
      -- end

      local _border = 'rounded'

      vim.diagnostic.config {
        float = { border = _border },
      }
      vim.api.nvim_set_hl(0, 'NormalFloat', {
        link = 'Normal',
      })
      vim.api.nvim_set_hl(0, 'FloatBorder', {
        fg = '#a277ff',
        bg = 'none',
      })
      vim.api.nvim_set_hl(0, 'BlinkCmpMenuBorder', {
        fg = '#a277ff',
        bg = 'none',
      })
      vim.api.nvim_set_hl(0, 'BlinkCmpDocBorder', {
        fg = '#a277ff',
        bg = 'none',
      })
      vim.api.nvim_set_hl(0, 'BlinkCmpSignatureHelpBorder', {
        fg = '#a277ff',
        bg = 'none',
      })
      vim.api.nvim_set_hl(0, 'BlinkCmpGhostText', {
        fg = '#29263c',
        bg = 'none',
      })
    end,
  },
}
