return {
  "voldikss/vim-floaterm",
  config = function()
    vim.g.floaterm_position = "topright"
    vim.g.floaterm_height = 0.6
    vim.g.floaterm_width = 0.5
    vim.g.floaterm_autoinsert = true

    vim.api.nvim_set_keymap("n", "<leader>tt", ":FloatermToggle<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("t", "<leader>tt", [[<C-\><C-n>:FloatermToggle<CR>]], { noremap = true, silent = true })
  end,
}
