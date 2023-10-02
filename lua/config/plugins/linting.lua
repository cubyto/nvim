---@diagnostic disable: trailing-space
Config = function ()
  local lint require("lint")
  
  lint.linters_by_ft = {
    javascript = { "eslint_d" },
    typescript = { "eslint_d" },
    python = { "pylint" },
    markdown = { "markdownlint"},
    php = { "phpcs" },
    LaTeX = { "vale" },
    java = { "checkstyle" }
  }

  local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
  
  vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave"}, {
    group = lint_augroup,
    callback = function ()
      lint.try_lint()      
    end
  })

  vim.keymap.set("n", "<leader>l", function ()
    lint.try_lint()
  end) { desc = "Trigger linting for current file"}
end