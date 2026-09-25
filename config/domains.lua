local wezterm = require("wezterm")
local M = {}

-- Custom SSH domains
M.ssh_domains = {
	{
		name = "my-server",
		remote_address = "localhost",
		username = "jaguar",
		multiplexing = "None", 
                assume_shell = "Posix",
		ssh_option = {
			identityfile = "C:\\your\\private\\key.pem",
		},
	},
}

function M.setup(config)
	config.ssh_domains = M.ssh_domains
end

return M
