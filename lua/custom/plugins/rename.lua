return {
  {
    'smjonas/inc-rename.nvim',
    config = function()
      require('inc_rename').setup()
    end,
  },
  -- {
  --   'saecki/live-rename.nvim',
  --   config = function()
  --     -- default config
  --     require('live-rename').setup {
  --
  --       vim.keymap.set('n', '<leader>rn', require('live-rename').rename, { desc = 'Rename' }),
  --       -- Send a `textDocument/prepareRename` request to the server to
  --       -- determine the word to be renamed, can be slow on some servers.
  --       -- Otherwise fallback to using `<cword>`.
  --       prepare_rename = true,
  --       request_timeout = 1500,
  --       keys = {
  --         submit = {
  --           { 'n', '<c-y>' },
  --           { 'v', '<c-y>' },
  --           { 'i', '<c-y>' },
  --         },
  --         cancel = {
  --           { 'n', '<esc>' },
  --           { 'n', 'q' },
  --         },
  --       },
  --       hl = {
  --         current = 'CurSearch',
  --         others = 'Search',
  --       },
  --     }
  --   end,
  -- },
}
