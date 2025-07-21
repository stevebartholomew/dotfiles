vim.g.neo_tree_remove_legacy_commands = 1

require("neo-tree").setup({
  filesystem = {
    filtered_items = {
      visible = true,
      hide_dotfiles = false,
      hide_gitignored = false,
    },
  },
  window = {
    mappings = {
      ["<space>"] = "none",
      ["o"] = "open",
    },
  },
})
