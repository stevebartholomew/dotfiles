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
    },
  },
})

if vim.fn.argc() == 1 then
  local arg = vim.fn.argv(0)
  local stat = vim.loop.fs_stat(arg)
  if stat and stat.type == "directory" then
    vim.cmd("Neotree reveal")
  end
end
