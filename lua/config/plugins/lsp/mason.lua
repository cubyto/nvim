local mason_status, mason = pcall(require, "mason")
if not mason_status then
    return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
    return
end

local mason_tool_installer = require("mason-tool-installer")
if not mason_tool_installer then
    return
end

require("mason").setup({
	ui = {
		icons = {
			--package_installed = "",
      package_pending = "➜",
			--package_uninstalled = ""
		}
	}
})

mason_lspconfig.setup({
	ensure_installed = {
		"lua_ls",
		"tailwindcss",
		"tsserver",
		"arduino_language_server",
		"dockerls",
		"jsonls",
		"ltex",
		"kotlin_language_server",
		"intelephense",
		"vtsls",
		"vuels",
		"cssls",
		"html",
		"pyright",
		"prismals",
		"emmet_ls",
	},
	-- Auto install configured servers (whit lspconfig)
	automatic_installation = true, --< not the same ensure_installed

})

mason_tool_installer.setup({
  ensure_installed = {
    "prettier", -- prettier formatter
    "stylua", -- lua formatter
    "isort", -- python formatter
    "black", -- python formatter
    "pylint", -- python linter
    "eslint_d", -- js linter
  }
})
