return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },

  opts = {
    options = {
      theme = "auto",
      globalstatus = true,

      -- disable start page
      disabled_filetypes = {
        statusline = {
          "dashboard",
          "alpha",
          "starter",
          "snacks_dashboard",
        },
      },
    },
  },
}
