return {
	"neovim/nvim-lspconfig",
	dependecies = {
		"williamboman/mason.nvim",
		"saghen/blink.cmp",
	},
	config = function()
		local capabilities = require("blink.cmp").get_lsp_capabilities()

		vim.lsp.config("clangd", {
			cmd = {
				"clangd",
				"--header-insertion=never",
			},
			filetypes = { "c", "h", "cpp" },
			capabilities = capabilities,
			on_attach = on_attach,
		})
		vim.lsp.config("ts_ls", {
			cmd = {
				"typescript-language-server",
				"--stdio"
			},
			filetypes = { "typescript", "javascript" },
			capabilities = capabilities,
			on_attach = on_attach,
		})
		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function(args)
				local opts = { buffer = args.buf }
				vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
				vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
				vim.keymap.set('n', 'gh', vim.lsp.buf.hover, opts)
				vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, opts)
				vim.keymap.set('n', '<C-.>', vim.lsp.buf.code_action, opts)
				-- Clangd Formatter
				vim.keymap.set('n', '<leader>cf', vim.lsp.buf.format, opts)
				-- Diagnostics Mappings
				vim.keymap.set('n', '[d', vim.diagnostic.goto_next, opts)
				vim.keymap.set('n', ']d', vim.diagnostic.goto_prev, opts)
			end,	
		})
		vim.lsp.enable("clangd")
		vim.lsp.enable("ts_ls")
	end
}
