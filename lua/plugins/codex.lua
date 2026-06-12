return {
  "kkrampis/codex.nvim",
  lazy = true,
  cmd = { "Codex", "CodexToggle" }, -- Optional: Load only on command execution
  keys = {
    {
      "<leader>ao",
      function()
        require("dg .").toggle()
      end,
      desc = "Toggle Codex panel",
      mode = { "n", "t" },
    },
  },
  opts = {
    keymaps = {
      toggle = "<Leader>ao", -- Keybind to toggle Codex window (Disabled by default, watch out for conflicts)
      quit = "<C-q>", -- Keybind to close the Codex window (default: Ctrl + q)
    }, -- Disable internal default keymap (<leader>cc -> :CodexToggle)
    border = "rounded", -- Options: 'single', 'double', or 'rounded'
    width = 0.4, -- Width of the floating window (0.0 to 1.0)
    height = 0.8, -- Height of the floating window (0.0 to 1.0)
    model = nil, -- Optional: pass a string to use a specific model (e.g., 'o3-mini')
    autoinstall = true, -- Automatically install the Codex CLI if not found
    panel = true, -- Open Codex in a side-panel (vertical split) instead of floating window
    use_buffer = false, -- Capture Codex stdout into a normal buffer instead of a terminal buffer
  },
}

-- ### Usage:
-- - Call `:Codex` (or `:CodexToggle`) to open or close the Codex popup or side-panel.
-- - Map your own keybindings via the `keymaps.toggle` setting.
-- - To choose floating popup vs side-panel, set `panel = false` (popup) or `panel = true` (panel) in your setup options.
-- - To capture Codex output in an editable buffer instead of a terminal, set `use_buffer = true` (or `false` to keep terminal) in your setup options.
