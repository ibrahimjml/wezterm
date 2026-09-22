local wezterm = require("wezterm")
local helper = require("projects.helper")
local act = wezterm.action
local M = {}

function M.setup_keys()
	local keys = {}
	-- ALT: primary actions
	for _, v in ipairs({
		{ "Enter", act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
		{ "w", act.CloseCurrentPane({ confirm = true }) },
		{ "t", act.SpawnTab("CurrentPaneDomain") }, -- create new tab
		{ "q", act.QuitApplication }, -- kill all current pane
		{ "b", act.EmitEvent("toggle-tabbar") }, -- Toggle tab bar
		{ "LeftArrow", act.ActivateTabRelative(-1) },
		{ "RightArrow", act.ActivateTabRelative(1) },
		{ "c", act.CopyTo("ClipboardAndPrimarySelection") },
		{ "v", act.PasteFrom("Clipboard") },
		{ "p", helper.select_project() },
		{ "=", act.IncreaseFontSize },
		{ "-", act.DecreaseFontSize },
		{ "0", act.ResetFontSize },
	}) do
		table.insert(keys, { mods = "ALT", key = v[1], action = v[2] })
	end
	-- ALT+SHIFT: pane navigation & split management
	for _, v in ipairs({
		{ "Enter", act.SplitVertical({ domain = "CurrentPaneDomain" }) },
		{ "LeftArrow", act.ActivatePaneDirection("Left") },
		{ "RightArrow", act.ActivatePaneDirection("Right") },
		{ "z", act.TogglePaneZoomState },
		{ "=", act.PaneSelect({ mode = "SwapWithActive" }) },
	}) do
		table.insert(keys, { mods = "ALT|SHIFT", key = v[1], action = v[2] })
	end
	-- ALT+UP/DOWN: pane navigation (no conflict with tabs)
	for _, v in ipairs({
		{ "UpArrow", act.ActivatePaneDirection("Up") },
		{ "DownArrow", act.ActivatePaneDirection("Down") },
	}) do
		table.insert(keys, { mods = "ALT", key = v[1], action = v[2] })
	end
	-- Function keys Modification
	for _, v in ipairs({
		{ "F10", act.Hide },
		{ "F11", act.ToggleFullScreen },
	}) do
		table.insert(keys, { key = v[1], action = v[2] })
	end

	-- Quick Switch Tabs: ALT + 1 to 9
	for i = 1, 9 do
		table.insert(keys, {
			key = tostring(i),
			mods = "ALT",
			action = act.ActivateTab(i - 1),
		})
	end

	return keys
end

return M
