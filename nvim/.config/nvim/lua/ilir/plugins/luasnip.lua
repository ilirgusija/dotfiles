return {
	"L3MON4D3/LuaSnip",
	dependencies = { "rafamadriz/friendly-snippets" },
	event = "InsertEnter",
	config = function()
		local luasnip = require("luasnip")
		luasnip.config.set_config({
			history = true,
			updateevents = "TextChanged,TextChangedI",
			enable_autosnippets = true,
              -- Use Tab (or some other key if you prefer) to trigger visual selection
            store_selection_keys = "<Tab>",
		})
		-- add vscode exported completions
        require("luasnip.loaders.from_vscode").lazy_load()
        require("luasnip.loaders.from_lua").lazy_load({paths = "~/.config/nvim/lua/luasnippets"})
		local r = require("utils.remaps")

		r.map({ "i", "s" }, "<Tab>", function()
			if luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			end
		end, "Expand current snippet or jump to next", { silent = true })

		r.map({ "i", "s" }, "<S-Tab>", function()
			if luasnip.jumpable(-1) then
				luasnip.jump(-1)
			end
		end, "Go to previous snippet", { silent = true })

		r.map("i", "<c-l>", function()
			if luasnip.choice_active() then
				luasnip.change_choice(1)
			end
		end, "Show list of options")

	end,
}
