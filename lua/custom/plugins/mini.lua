return {
  {
    'echasnovski/mini.move',
    opts = {
      version = false,
      mappings = {
        -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
        left = 'H',
        right = 'L',
        down = 'J',
        up = 'K',

        -- Move current line in Normal mode
        -- line_left = 'H',
        -- line_right = 'L',
        line_down = 'J',
        line_up = 'K',
      },

      -- Options which control moving behavior
      options = {
        -- Automatically reindent selection during linewise vertical move
        reindent_linewise = true,
      },
    },
  },
  { 'echasnovski/mini.surround', version = false },
}
