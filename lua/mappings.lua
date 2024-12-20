require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
map("n", "<leader>ch", "<cmd>NvCheatsheet<CR>", { desc = "Toggle nvcheatsheet" })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<C-t>", function()
  require("nvchad.themes").open()
end, {})
map("n", "<leader>re", function()
  require("nvchad.lsp.renamer")()
end, { desc = "rename variable under cursor" })
map("n", "<leader>cx", function()
  require("nvchad.tabufline").closeAllBufs()
end, { desc = "Buffers Close all" })
map("n", "<leader>gf", "<cmd>Telescope git_files<CR>", { desc = "Telescope git files" })
-- NOTE Diagnostic window
map("n", "g?", function()
  vim.diagnostic.open_float()
end, { desc = "Show Diagnostics under the cursor" })
map("n", "<leader>gs", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
