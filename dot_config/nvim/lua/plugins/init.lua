return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
{
  'RRethy/base16-nvim',
  lazy = false,
  priority = 1000, -- Загружаем тему раньше всего остального UI
  config = function()
    -- Вызываем matugen сразу при инициализации плагина тем
    local status, matugen = pcall(require, "matugen")
    if status then
      matugen.setup()
    end
  end,
},

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
