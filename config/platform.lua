local wezterm = require("wezterm")

local function find(str, pattern)
	return string.find(str, pattern) ~= nil
end

local function platform()
	local is_windows = find(wezterm.target_triple, "windows")
	local is_macos = find(wezterm.target_triple, "apple")
	local is_linux = find(wezterm.target_triple, "linux")
	local os

	if is_windows then
		os = "windows"
	elseif is_macos then
		os = "mac"
	elseif is_linux then
		os = "linux"
	else
		error("unsupported platform: " .. wezterm.target_triple)
	end

	return {
		is_windows = is_windows,
		is_macos = is_macos,
		is_linux = is_linux,
		os = os,
	}
end

return platform()
