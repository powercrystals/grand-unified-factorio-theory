local debug = {}

function debug.log(message, level)
	if level == nil then
		level = 1
	end

	if settings.startup["guft-debug-logging"].value >= level then
		log("DEBUG [" .. level .. "]: " .. message)
	end
end

return debug