-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/nvimdev/dashboard-nvim
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return {
  'glepnir/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup({
  theme = 'doom',
  config = {
    header = {
      '',
      '',
      '',
      '      ⢸⣦⡈⠻⣿⣿⣿⣶⣄      ',
      '      ⢸⣿⣿⣦⡈⠻⣿⣿⣿⣷⣄    ',
      '⣀⣀⣀⣀⣀⣀⣼⣿⣿⣿⣿ ⠈⠻⣿⣿⣿⣷⣄  ',
      '⠈⠻⣿⣿⣿⣿⣿⡿⠿⠛⠁   ⠈⠻⢿⣿⣿⣷⣄',
      '',
      '',
    },
    center = {
      { icon = '  ', desc = 'New file', action = 'enew' },
      { icon = '  ', desc = 'Find file               ', key = '<leader>f', action = 'Telescope find_files' },
      { icon = '󰈙  ', desc = 'Recent files            ', key = '<leader>h', action = 'Telescope oldfiles' },
      { icon = '󰈭  ', desc = 'Find Word               ', key = '<leader>g', action = 'Telescope live_grep' },
    },
    footer = { '' }
  },
  hide = {
    statusline = false,
    tabline = false,
    winbar = false,
  }
})

vim.api.nvim_set_hl(0, 'DashboardHeader', { fg = '#6272a4' })
vim.api.nvim_set_hl(0, 'DashboardDesc', { fg = '#f8f8f2' })
vim.api.nvim_set_hl(0, 'DashboardIcon', { fg = '#bd93f9' })
vim.api.nvim_set_hl(0, 'DashboardKey', { fg = '#6272a4' })
vim.api.nvim_set_hl(0, 'DashboardFooter', { fg = '#6272a4' })
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
