--save and quit
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'save file', silent = true })
vim.keymap.set('n', '<leader>W', ':wa<CR>', { desc = 'save all', silent = true })
vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = 'quit', silent = true })
vim.keymap.set('n', '<leader>Q', ':q!<CR>', { desc = 'force quit', silent = true })
--oil
vim.keymap.set('n', '<leader>o', ':Oil<CR>', { desc = 'Open Oil', silent = true })
--move between buffers quickly
vim.keymap.set('n', 'H', ':bp<CR>', { desc = 'go to prev buffer', silent = true })
vim.keymap.set('n', 'L', ':bn<CR>', { desc = 'go to next buffer', silent = true })
vim.keymap.set('n', 'bd', ':bdelete<CR>', { desc = 'close buffer', silent = true })
vim.keymap.set('n', '<leader>n', '<C-o>', { desc = 'go back', silent = true })
vim.keymap.set('n', '<leader>.', '<C-i>', { desc = 'go forward', silent = true })
--
vim.keymap.set('n', '<leader>rn', ':IncRename ', { desc = 'Rename' })
vim.keymap.set('n', '<leader>sd', vim.lsp.buf.hover, { silent = true, desc = 'Hover Hints' })
-- vim.keymap.set("n", "<leader>fa", conditional_format, { desc = "Format Code" })
vim.keymap.set('n', '<leader>er', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic', silent = true })
vim.keymap.set('n', '<leader>ew', vim.diagnostic.goto_prev, { desc = 'Go to prev diagnostic', silent = true })
-- close other buffers utility
CloseAllOtherBuffers = function()
  -- Save all buffers
  vim.cmd 'wa'

  local bufs = vim.api.nvim_list_bufs()
  local current_buf = vim.api.nvim_get_current_buf()
  local found_and_removed_buffers = false
  local num_of_loaded_bufs = 0

  for _, buf in ipairs(bufs) do
    if vim.api.nvim_buf_is_loaded(buf) then
      num_of_loaded_bufs = num_of_loaded_bufs + 1
      local buf_name = vim.api.nvim_buf_get_name(buf)

      -- Check if buffer has a name and is not the current buffer
      if buf_name ~= '' and buf ~= current_buf then
        if found_and_removed_buffers == false then
          found_and_removed_buffers = true
        end
        -- Use :silent! bdelete to delete the buffer
        vim.cmd('silent! bdelete ' .. buf)
      end
    end
  end

  if found_and_removed_buffers == false then
    require('no-neck-pain').toggle()
    require('noice').notify("I don't see any other buffers 🔍", 'info')
  else
    require('noice').notify('We killed all the other buffers 🗡️', 'info')
  end
end

vim.keymap.set('n', '<leader>bo', CloseAllOtherBuffers, { desc = 'Close all other buffers' })
