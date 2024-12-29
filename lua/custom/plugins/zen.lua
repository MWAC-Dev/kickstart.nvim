return {
  -- "folke/zen-mode.nvim",
  -- config = function()
  --   require("zen-mode").setup({
  --     window = {
  --       width = 0.45,
  --       backdrop = 1,
  --     },
  --   })
  --   vim.cmd("autocmd VimEnter * hi ZenBg ctermbg=NONE guibg=NONE")
  -- end,
  'shortcuts/no-neck-pain.nvim',
  config = function()
    require('no-neck-pain').setup {
      fallbackOnBufferDelete = true,
      { 'shortcuts/no-neck-pain.nvim', version = '*' },
      width = 150,
      buffers = {
        scratchPad = {
          -- set to `false` to
          enabled = false,
          -- disable auto-saving
          -- set to `nil` to default
          -- to current working directory
          location = 'E:\\nvim-scratchpad',
        },
        bo = {
          filetype = 'md',
        },
        wo = {
          fillchars = 'eob: ',
        },
        colors = {
          background = nil,
        },
      },
    }
  end,
}
