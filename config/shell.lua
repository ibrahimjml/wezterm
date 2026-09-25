local platform = require("config.platform")

local M = {}
if platform.is_windows then
	M.shells = {
		cmder = { "cmd.exe", "/k", "C:\\cmder\\vendor\\init.bat" },
		cmd = { "cmd.exe", "/s", "/k" },
		powershell = { "powershell.exe", "-NoLogo" },
		pwsh = { "pwsh.exe", "-NoLogo" },
		bash = { "bash.exe" },
		zsh = { "wsl.exe", "~", "-e", "zsh" },
	}

	M.default_shell = "cmd"
elseif platform.is_macos then
	M.shells = {
		bash = { "bash", "-l" },
		zsh = { "zsh", "-l" },
		fish = { "/opt/homebrew/bin/fish", "-l" },
	}
	M.default_shell = "zsh"
elseif platform.is_linux then
	M.shells = {
		bash = { "bash", "-l" },
		zsh = { "zsh", "-l" },
		fish = { "fish", "-l" },
	}
	M.default_shell = "bash"
end

function M.apply_shell_config(config)
	local prog = M.shells[M.default_shell]

	if prog then
		config.default_prog = prog
	end
end

return M
