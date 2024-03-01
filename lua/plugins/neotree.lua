return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
      },
    },
  },
  config = function()
    -- Neotree config
    vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>')
    vim.keymap.set('n', '<C-b>', ':Neotree toggle<CR>')

    require("neo-tree").setup({
      close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
    })
  end
}
