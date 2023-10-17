return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.2",
  config = function()
    require("telescope").setup({

      defaults = {
        -- Default configuration for telescope goes here:
        -- config_key = value,
        mappings = {
          i = {
            -- map actions.which_key to <C-h> (default: <C-/>)
            -- actions.which_key shows the mappings for your picker,
            -- e.g. git_{create, delete, ...}_branch for the git_branches picker
            ["<C-h>"] = "which_key",
          },
        },
      },
      pickers = {
        -- Default configuration for builtin pickers goes here:
        -- picker_name = {
        --   picker_config_key = value,
        --   ...
        -- }
        -- Now the picker_config_key will be applied every time you call this
        -- builtin picker
      },
      extensions = {
        -- Your extension configuration goes here:
        -- extension_name = {
        --   extension_config_key = value,
        -- }
        -- please take a look at the readme of the extension you want to configure
      },
    })
  end,
  keys = {
    { "<leader>fh", "<cmd>Telescope find_files no_ignore=true<cr>", desc = "Telescope Files Hidden" },
    { "<leader>hi", "<cmd>Telescope oldfiles<cr>", desc = "Telescope Old" },
    { "<leader>ag", "<cmd>Telescope live_grep<cr>", desc = "Telescope Grep" },
    {
      "<leader>ah",
      function()
        require("telescope.builtin").live_grep({ additional_args = { "-u" } })
      end,
      desc = "Telescope Grep Hidden",
    },
  },
}
