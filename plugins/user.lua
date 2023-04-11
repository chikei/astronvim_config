return {
  {
    "kylechui/nvim-surround",
    config = function() require("nvim-surround").setup {} end,
  },
  {
    "ggandor/leap.nvim",
    config = function() require("leap").set_default_keymaps() end,
  },
}
