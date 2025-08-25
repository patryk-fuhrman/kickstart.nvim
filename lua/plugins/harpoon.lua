return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require 'harpoon'
      harpoon.setup {}

      vim.keymap.set('n', '<leader>fl', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)
      vim.keymap.set('n', '<leader>fi', function()
        harpoon:list():add()
      end)
      vim.keymap.set('n', '<leader>fd', function()
        harpoon:list():remove()
      end)
      vim.keymap.set('n', '<leader>fn', function()
        harpoon:list():next()
      end)
      vim.keymap.set('n', '<leader>fp', function()
        harpoon:list():prev()
      end)
    end,
  },
}
