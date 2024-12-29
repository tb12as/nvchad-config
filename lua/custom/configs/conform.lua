--type conform.options
local options = {
  lsp_fallback = true,

  formatters_by_ft = {
    lua = { "stylua" },

    javascript = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    vue = { "prettier" },

    sh = { "shfmt" },
    php = { "php_cs_fixer" },
    ["*.balde.php"] = { "blade_formater" },
  },

  formatters = {
    php_cs_fixer = {
      -- find a way to increase the timeout for this formater
      -- command = "php-cs-fixer",
      command = "/usr/local/bin/php8-cs-fixer",
      -- args = { "fix", "$FILENAME", "--using-cache=no", "--config=/home/tb12as/.php_cs_fixer.php" }
      args = { "fix", "$FILENAME", "--using-cache=no", "--config=/home/tb12as/.pint_fixer_config.php" },
    },
    blade_formater = {
      command = "/home/tb12as/.local/share/nvim/mason/packages/blade-formatter/node_modules/.bin/blade-formatter",
      args = { "$FILENAME", "--write" },
    },
  },

  -- adding same formatter for multiple filetypes can look too much work for some
  -- instead of the above code you could just use a loop! the config is just a table after all!

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

require("conform").setup(options)

