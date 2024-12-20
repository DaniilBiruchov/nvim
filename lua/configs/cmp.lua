local cmp = require "cmp"
local default = require "nvchad.configs.cmp"

local options = {
  mapping = {
    ["<C-c>"] = cmp.mapping.complete(),
  },
  experimental = { ghost_text = true },
}

return vim.tbl_deep_extend("force", default, options)
