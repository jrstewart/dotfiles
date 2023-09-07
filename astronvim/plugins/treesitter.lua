return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
      "css",
      "dockerfile",
      "eex",
      "elixir",
      "erlang",
      "fish",
      "gitignore",
      "graphql",
      "heex",
      "html",
      "javascript",
      "json",
      "lua",
      "markdown",
      "python",
      "ruby",
      "rust",
      "sql",
      "typescript",
      "yaml",
    })
  end,
}
