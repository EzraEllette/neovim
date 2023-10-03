-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/akinsho/nvim-toggleterm.lua
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return {
  "akinsho/nvim-toggleterm.lua",
  version = "*",
  config = true,
  keys = {
      {
         "<leader>tt", "<CMD>ToggleTerm  direction=float dir=$(PWD)<CR>", desc = "Open a floating terminal at the current directory",
      },
      {
         "<leader>tb", "<CMD>ToggleTerm  direction=horizontal dir=$(PWD)<CR>", desc = "Open a bottom terminal at the current directory"
      },
  },
}
