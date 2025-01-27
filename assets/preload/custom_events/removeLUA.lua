function onEvent(name, value1, value2)
	if name == 'removeLUA' then
			function onCreate()
				removeLuaScript("modchart")
			end
	end
end