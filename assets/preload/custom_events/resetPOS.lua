function onUpdate(elapsed)
	ogposx0 = getPropertyFromGroup('opponentStrums', 0, 'x');
	ogposy0 = getPropertyFromGroup('opponentStrums', 0, 'y');
	ogposx1 = getPropertyFromGroup('opponentStrums', 1, 'x');
	ogposy1 = getPropertyFromGroup('opponentStrums', 1, 'y');
	ogposx2 = getPropertyFromGroup('opponentStrums', 2, 'x');
	ogposy2 = getPropertyFromGroup('opponentStrums', 2, 'y');
	ogposx3 = getPropertyFromGroup('opponentStrums', 3, 'x');
	ogposy3 = getPropertyFromGroup('opponentStrums', 3, 'y');
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
	if name == 'resetPOS' then
			noteTweenX("1", 0, ogposx0 + 0, 0.5, "linear")
			noteTweenX("2", 1, ogposx1 + 0, 0.5, "linear")
			noteTweenX("3", 2, ogposx2 + 0, 0.5, "linear")
			noteTweenX("4", 3, ogposx3 + 0, 0.5, "linear")
			noteTweenX("5", 4, ogposx4 + 0, 0.5, "linear")
			noteTweenX("6", 5, ogposx5 + 0, 0.5, "linear")
			noteTweenX("7", 6, ogposx6 + 0, 0.5, "linear")
			noteTweenX("8", 7, ogposx7 + 0, 0.5, "linear")
			noteTweenY("9", 0, ogposy0 + 0, 0.5, "linear")
			noteTweenY("10", 1, ogposy1 + 0, 0.5, "linear")
			noteTweenY("11", 2, ogposy2 + 0, 0.5, "linear")
			noteTweenY("12", 3, ogposy3 + 0, 0.5, "linear")
			noteTweenY("13", 4, ogposy4 + 0, 0.5, "linear")
			noteTweenY("14", 5, ogposy5 + 0, 0.5, "linear")
			noteTweenY("15", 6, ogposy6 + 0, 0.5, "linear")
			noteTweenY("16", 7, ogposy7 + 0, 0.5, "linear")
	end
end