return { -- Neotree for file tree
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  opts = {
    window = {
      mappings = {
        ["<cr>"] = "open_tabnew",
        ["<2-LeftMouse>"] = "open_tabnew",
        ["t"] = "open_tabnew",
        ["<C-c>"] = "open",
        ["s"] = "open_split",
        ["v"] = "open_vsplit",
      },
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  lazy = false,
}
