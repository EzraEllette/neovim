-- Handle plugins with lazy.nvim
vim.g.riscv_asm_all_enable = true
require("core.lazy")

-- General Neovim keymaps
require("core.keymaps")

-- Other options
require("core.options")

vim.keymap.set('n', '<leader>e', '<Cmd>Neotree toggle position=right<CR>')

require("mason").setup()
require("mason-lspconfig").setup()

local cmp_nvim_lsp = require "cmp_nvim_lsp"

require("lspconfig").clangd.setup {
  capabilities = cmp_nvim_lsp.default_capabilities(),
  cmd = {
    "clangd",
    "--offset-encoding=utf-16",
  },
}

require("lspconfig").rust_analyzer.setup {
  capabilities = cmp_nvim_lsp.default_capabilities(),
}

require("lspconfig").tsserver.setup {
  virtual_text = true,
}

require("lspconfig").graphql.setup {
  capabilities = cmp_nvim_lsp.default_capabilities(),
}

vim.diagnostic.config({
  virtual_text = {
    -- source = "always",  -- Or "if_many"
    prefix = '●', -- Could be '■', '▎', 'x'
  },
  severity_sort = true,
  float = {
    source = "always", -- Or "if_many"
  },
})
require 'xbase'.setup()

vim.api.nvim_set_keymap('n', '<leader>r', 'Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>do', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>d[', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>d]', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true })
-- The following command requires plug-ins "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", and optionally "kyazdani42/nvim-web-devicons" for icon support
vim.api.nvim_set_keymap('n', '<leader>dd', '<cmd>Telescope diagnostics<CR>', { noremap = true, silent = true })
-- If you don't want to use the telescope plug-in but still want to see all the errors/warnings, comment out the telescope line and uncomment this:
-- vim.api.nvim_set_keymap('n', '<leader>dd', '<cmd>lua vim.diagnostic.setloclist()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>a', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })
vim.g.copilot_assume_mapped = true
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-e>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.api.nvim_set_keymap("n", "<Esc><Esc>", '<Esc>:noh<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<Esc>', "<C-\\><C-N>", { noremap = true, silent = true })
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  command = "lua vim.lsp.buf.format()",
})
vim.g.riscv_asm_all_enable = true
