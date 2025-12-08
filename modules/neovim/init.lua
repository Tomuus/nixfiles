-- Basic settings
vim.o.number = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.cmd("syntax on")
vim.o.completeopt = "menuone,noinsert,noselect"

require("nvim-autopairs").setup{}

-- LSP keybindings
local function on_attach(client, bufnr)
  local opts = { noremap=true, silent=true, buffer=bufnr }
  local keymap = vim.keymap.set
  keymap("n", "gd", vim.lsp.buf.definition, opts)
  keymap("n", "K", vim.lsp.buf.hover, opts)
  keymap("n", "<leader>rn", vim.lsp.buf.rename, opts)
  keymap("n", "gr", vim.lsp.buf.references, opts)
end

-- Capabilities for nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

-- LSP servers
vim.lsp.config("clangd", { cmd = {"clangd"}, on_attach = on_attach, capabilities = capabilities })
vim.lsp.enable("clangd")

vim.lsp.config("nil", {
  cmd = {"nil"},
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"nix"},
 -- settings = { [ nil ] = { nixpkgs = { expr = "import <nixpkgs> { }" } } }
})
vim.lsp.enable("nil")

-- Completion
local cmp = require("cmp")
cmp.setup({
  mapping = { ['<CR>'] = cmp.mapping.confirm({ select = true }) },
  sources = { { name = "nvim_lsp" } },
})

-- Catppuccin theme
vim.g.catppuccin_flavour = "mocha"
require("catppuccin").setup({
    integrations = { lsp_trouble = true, treesitter = true, telescope = true }
})
vim.cmd("colorscheme catppuccin")

