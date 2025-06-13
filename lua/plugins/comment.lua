-- Easily comment visual regions/lines
return {
	"numToStr/Comment.nvim",
	opts = {},
	config = function()
		-- Opções padrão para os mapeamentos de tecla (não recursivo, silencioso)
		local opts = { noremap = true, silent = true }

		-- Mapeamentos para o modo normal (n)
		-- Cada mapeamento agora inclui uma descrição específica para o which-key
		vim.keymap.set(
			"n",
			"<C-_>",
			require("Comment.api").toggle.linewise.current,
			vim.tbl_extend("force", opts, { desc = "Toggle Line Comment" })
		)
		vim.keymap.set(
			"n",
			"<C-c>",
			require("Comment.api").toggle.linewise.current,
			vim.tbl_extend("force", opts, { desc = "Toggle Line Comment" })
		)
		vim.keymap.set(
			"n",
			"<C-/>",
			require("Comment.api").toggle.linewise.current,
			vim.tbl_extend("force", opts, { desc = "Toggle Line Comment" })
		)

		-- Mapeamentos para o modo visual (v)
		-- Para o modo visual, a descrição é ligeiramente diferente para refletir que afeta uma seleção
		vim.keymap.set(
			"v",
			"<C-_>",
			"<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
			vim.tbl_extend("force", opts, { desc = "Toggle Selection Comment" })
		)
		vim.keymap.set(
			"v",
			"<C-c>",
			"<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
			vim.tbl_extend("force", opts, { desc = "Toggle Selection Comment" })
		)
		vim.keymap.set(
			"v",
			"<C-/>",
			"<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
			vim.tbl_extend("force", opts, { desc = "Toggle Selection Comment" })
		)
	end,
}
