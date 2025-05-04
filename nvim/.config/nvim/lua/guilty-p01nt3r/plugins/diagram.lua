return {
	"3rd/diagram.nvim",
  lazy = true,
  ft = "markdown",
  branch = "feature/toggle",
	dependencies = {
		{
			"3rd/image.nvim",
			config = function()
				require("image").setup()
				package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?/init.lua"
				package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?.lua"
			end,
		},
	},
	opts = {
		-- integrations = {
		-- 	require("diagram.integrations.markdown"),
		-- },
		renderer_options = {
			mermaid = {
				background = nil, -- nil | "transparent" | "white" | "#hex"
				theme = nil, -- nil | "default" | "dark" | "forest" | "neutral"
				scale = 1, -- nil | 1 (default) | 2  | 3 | ...
			},
			plantuml = {
				charset = nil,
			},
			d2 = {
				theme_id = nil,
				dark_theme_id = nil,
				scale = nil,
				layout = nil,
				sketch = nil,
			},
		},
	},
}
