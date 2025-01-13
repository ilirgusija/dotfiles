local util = require 'lspconfig.util'
return function(on_attach)
	return {
		on_attach = function(client, bufnr)
			on_attach(client, bufnr)
		end,
		cmd = { "gopls" },
		filetypes = { "go", "gomod", "gowork", "gotmpl" }, 
		-- root_dir = util.find_git_ancestor,
        root_dir = util.root_pattern("go.work", "go.mod", ".git"),
		single_file_support = true,
	}
end
