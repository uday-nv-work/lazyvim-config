return {

  {
    "David-Kunz/gen.nvim",
    opts = {
      model = "claude-3-sonnet-20240229", -- or gpt-4o
      display_mode = "floating", -- split/floating
      show_prompt = true,
    },
    keys = {
      { "<leader>aG", ":Gen<CR>", desc = "AI Generate" },
      { "<leader>aE", ":Gen!<CR>", desc = "AI Edit" },
    },
  },
}
