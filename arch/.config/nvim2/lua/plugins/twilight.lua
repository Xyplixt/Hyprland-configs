return {
	"folke/twilight.nvim",
	config = function()
		require("twilight").setup({

			opts = {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			},
		})
	end,
}
