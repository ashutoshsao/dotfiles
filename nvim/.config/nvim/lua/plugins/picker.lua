return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      win = {
        input = {
          keys = {
            ["<a-.>"] = { "toggle_hidden", mode = { "i", "n" } },
            ["<a-,>"] = { "toggle_ignored", mode = { "i", "n" } },
          },
        },
      },
    },
  },
}
