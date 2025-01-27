function onUpdate(elapsed)
	ogposx0 = getPropertyFromGroup('opponentStrums', 3, 'x');
	ogposy0 = getPropertyFromGroup('opponentStrums', 3, 'y');
	ogposx1 = getPropertyFromGroup('opponentStrums', 2, 'x');
	ogposy1 = getPropertyFromGroup('opponentStrums', 2, 'y');
	ogposx2 = getPropertyFromGroup('opponentStrums', 1, 'x');
	ogposy2 = getPropertyFromGroup('opponentStrums', 1, 'y');
	ogposx3 = getPropertyFromGroup('opponentStrums', 0, 'x');
	ogposy3 = getPropertyFromGroup('opponentStrums', 0, 'y');
	ogposx4 = getPropertyFromGroup('opponentStrums', 0, 'x');
	ogposy4 = getPropertyFromGroup('opponentStrums', 0, 'y');
	ogposx5 = getPropertyFromGroup('opponentStrums', 1, 'x');
	ogposy5 = getPropertyFromGroup('opponentStrums', 1, 'y');
	ogposx6 = getPropertyFromGroup('opponentStrums', 2, 'x');
	ogposy6 = getPropertyFromGroup('opponentStrums', 2, 'y');
	ogposx7 = getPropertyFromGroup('opponentStrums', 3, 'x');
	ogposy7 = getPropertyFromGroup('opponentStrums', 3, 'y');	
end

function onEvent(name, value1, value2)
	if name == 'note turn dad' then
			noteTweenX("1", 0, ogposx0 + 0, 0.01, "linear")
			noteTweenX("2", 1, ogposx1 + 0, 0.01, "linear")
			noteTweenX("3", 2, ogposx2 + 0, 0.01, "linear")
			noteTweenX("4", 3, ogposx3 + 0, 0.01, "linear")
	end
end