local wezterm = require("wezterm")
local act = wezterm.action

local function fish_cmd()
	if wezterm.glob("/opt/homebrew/bin/fish")[1] then
		return "/opt/homebrew/bin/fish"
  else
    return "fish"
	end
end

return {
	default_prog = { fish_cmd() },

	font = wezterm.font_with_fallback {
    { family = "Cascadia Next SC", weight="DemiBold" },
    "Noto Sans CJK SC Mono",
  },
	font_size = 13,
	line_height = 1.2,

	color_scheme = "Solarized Light (Gogh)",
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	tab_bar_at_bottom = true,
	tab_max_width = 120,

	scrollback_lines = 1000000,
	use_ime = true,

  leader = { key = "b", mods = "CTRL" },
	keys = {
		{ key = "-",  mods = "LEADER", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
		{ key = "\\", mods = "LEADER", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
		{ key = "[",  mods = "LEADER", action = act.ActivatePaneDirection("Prev") },
		{ key = "]",  mods = "LEADER", action = act.ActivatePaneDirection("Next") },
		{ key = "+",  mods = "LEADER", action = act.IncreaseFontSize },
		{ key = "+",  mods = "LEADER|SHIFT", action = act.DecreaseFontSize },
	},
}
