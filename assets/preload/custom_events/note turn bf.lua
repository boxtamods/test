function onUpdate(elapsed)
	ogposx0 = getPropertyFromGroup('playerStrums', 3, 'x');
	ogposy0 = getPropertyFromGroup('playerStrums', 3, 'y');
	ogposx1 = getPropertyFromGroup('playerStrums', 2, 'x');
	ogposy1 = getPropertyFromGroup('playerStrums', 2, 'y');
	ogposx2 = getPropertyFromGroup('playerStrums', 1, 'x');
	ogposy2 = getPropertyFromGroup('playerStrums', 1, 'y');
	ogposx3 = getPropertyFromGroup('playerStrums', 0, 'x');
	ogposy3 = getPropertyFromGroup('playerStrums', 0, 'y');
	ogposx4 = getPropertyFromGroup('playerStrums', 0, 'x');
	ogposy4 = getPropertyFromGroup('playerStrums', 0, 'y');
	ogposx5 = getPropertyFromGroup('playerStrums', 1, 'x');
	ogposy5 = getPropertyFromGroup('playerStrums', 1, 'y');
	ogposx6 = getPropertyFromGroup('playerStrums', 2, 'x');
	ogposy6 = getPropertyFromGroup('playerStrums', 2, 'y');
	ogposx7 = getPropertyFromGroup('playerStrums', 3, 'x');
	ogposy7 = getPropertyFromGroup('playerStrums', 3, 'y');	
end

function onEvent(name, value1, value2)
	if name == 'note turn bf' then
			noteTweenX("1", 4, ogposx0 + 0, 0.01, "linear")
			noteTweenX("2", 5, ogposx1 + 0, 0.01, "linear")
			noteTweenX("3", 6, ogposx2 + 0, 0.01, "linear")
			noteTweenX("4", 7, ogposx3 + 0, 0.01, "linear")
	end
end