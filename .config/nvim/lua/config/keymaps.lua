-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Harpoon Keymaps
local wk = require("which-key")
local hm = require("harpoon.mark")
local hui = require("harpoon.ui")

require("telescope").load_extension("harpoon")

wk.register({
  h = {
    name = "Harpoon",
    a = {
      function()
        hm.add_file()
      end,
      "Add Mark",
    },
    l = {
      function()
        hui.toggle_quick_menu()
      end,
      "List Marks",
    },
    n = {
      function()
        hui.nav_next()()
      end,
      "Next Mark",
    },
    p = {
      function()
        hui.nav_prev()()
      end,
      "Previous Mark",
    },
    ["1"] = {
      function()
        hui.nav_file(1)
      end,
      "Jump Mark 1",
    },
    ["2"] = {
      function()
        hui.nav_file(2)
      end,
      "Jump Mark 2",
    },
    ["3"] = {
      function()
        hui.nav_file(3)
      end,
      "Jump Mark 3",
    },
    t = { "<cmd>Telescope harpoon marks<cr>", "Telescope Marks" },
  },
}, { prefix = "<leader>" })
