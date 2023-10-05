local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.diagnostics.eslint,
		null_ls.builtins.completion.spell,
	},
})


-- run the command
-- :echo executable("eslint")
-- to check whether the linter is availible.
-- returns 0 or 1



-- Link to BUILTINS
-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
