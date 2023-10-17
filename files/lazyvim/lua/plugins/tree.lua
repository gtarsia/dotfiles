-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- open_on_setup unnamed
local function open_nvim_tree()
  -- open the tree
  require("nvim-tree.api").tree.toggle({
    focus = false,
  })
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
-- OR setup with some options
return {
  "nvim-tree/nvim-tree.lua",
  keys = {
    { "<C-n>", "<cmd>NvimTreeFindFile<cr>", desc = "Tree reveal" },
  },
  config = function()
    require("nvim-tree").setup({
      filters = {
        git_ignored = false,
        dotfiles = false,
        git_clean = false,
        no_buffer = false,
        custom = {},
        exclude = {},
      },
    })
  end,
}
