

local opts = require("config").options
local cmd = vim.cmd


local function setup_commands()

	if (opts.true_false_commands == true) then
		cmd("command! TZBottomT lua require'tz_main'.main(0, 1)")
		cmd("command! TZBottomF lua require'tz_main'.main(0, 2)")
	else
		-- do nothing
	end
end

function setup(custom_opts)
	require("config").set_options(custom_opts)
	setup_commands()
end




return {
	setup = setup
}
