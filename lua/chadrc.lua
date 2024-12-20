-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "bearded-arc",
  transparency = true,
  integrations = { "rainbowdelimiters", "todo" },

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}
M.ui = {
  tabufline = {
    order = { "treeOffset", "buffers", "tabs" },
  },
  cmp = {
    style = "atom_colored"
  },
}

M.lsp = { signature = true }

return M
