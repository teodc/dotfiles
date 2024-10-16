-- Install by running: ya pack -a yazi-rs/plugins:full-border
require("full-border"):setup {
	-- Available values: ui.Border.PLAIN, ui.Border.ROUNDED
	type = ui.Border.ROUNDED,
}

-- Show user/group of files in status bar
Status:children_add(function()
	local h = cx.active.current.hovered
	if h == nil or ya.target_family() ~= "unix" then
		return ui.Line {}
	end

	return ui.Line {
		ui.Span(ya.user_name(h.cha.uid) or tostring(h.cha.uid)):fg("magenta"),
		ui.Span(":"),
		ui.Span(ya.group_name(h.cha.gid) or tostring(h.cha.gid)):fg("magenta"),
		ui.Span(" "),
	}
end, 500, Status.RIGHT)

-- Custom linemode
function Linemode:readable_mtime()
	local time = math.floor(self._file.cha.modified or 0)
	if time == 0 then
		time = ""
	else
		time = os.date("%x %X", time)
	end

	return ui.Line(string.format("%s", time))
end
