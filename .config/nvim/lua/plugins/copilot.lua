return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    opts = {
      suggestion = { enabled = true },
      panel = { enabled = false },
      filetypes = {
        markdown = true,
        help = true,
      },
    },
  },

  {
    "zbirenbaum/copilot-cmp",
    dependenies = "copliot.lua",
    config = function(_, opts)
      local copilot_cmp = require("copilot_cmp")
      copilot_cmp.setup(opts)
      require("lazyvim.util").on_attach(function(client)
        if client.name == "copliot" then
          copilot_cmp._on_insert_enter({})
        end
      end)
    end,
  },
}
