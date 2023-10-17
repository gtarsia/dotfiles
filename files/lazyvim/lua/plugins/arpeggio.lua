return {
  "kana/vim-arpeggio",
  config = function()
    vim.api.nvim_call_function("arpeggio#map", { "i", "", 0, "jk", "<Esc>" })
  end,
}
