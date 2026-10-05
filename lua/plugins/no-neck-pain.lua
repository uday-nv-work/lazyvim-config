return {
  "shortcuts/no-neck-pain.nvim",
  version = "*",
  keys = {
    {
      "<leader>uN",
      function()
        require("no-neck-pain").toggle()
      end,
      desc = "Toggle centered reading layout",
    },
  },
  opts = {
    -- Keep a comfortable code width on wide displays without changing normal layouts.
    width = 105,
    minSideBufferWidth = 12,
    autocmds = {
      enabled = false,
    },
    mappings = {
      enabled = false,
    },
    buffers = {
      wo = {
        number = false,
        relativenumber = false,
        signcolumn = "no",
      },
    },
  },
  config = function(_, opts)
    require("no-neck-pain").setup(opts)
  end,
}
