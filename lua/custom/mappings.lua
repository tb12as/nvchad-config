---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },
  },
  i = {
    ["<C-s>"] = { "<Esc>:w<CR>a", "Save file in insert mode" },
    ["<C-z>"] = { "<ESC> <C-r> i", "Redo file in insert mode" },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
