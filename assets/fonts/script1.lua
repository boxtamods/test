local defaultNotePos = {};
local move = 50; -- how much it moves before going the other direction

function onSongStart()
    for i = 0,7 do 
    
        y = getPropertyFromGroup('strumLineNotes', i, 'y')
 
        table.insert(defaultNotePos, {y})
    end
end -- get the property of the note
function onUpdate(elapsed)
 
    songPos = getPropertyFromClass('Conductor', 'songPosition');
 
    currentBeat = (songPos / 1000) * (bpm / 160) --this is basically speed, idk how to adjust it

    if curStep >= 960 and curStep < 1126 then
        for i = 0,7 do --the amount of notes like 0,7 is all, 0.3 is all opponent and 4,7 is all player. to do single just 0,0
            setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][1] + move * math.sin((currentBeat + i*4) * math.pi))
        end                                                          --this number is to determine how the arrows move ^
    end                                                              --odd numbers (ex. 1, 3) are for zig zag and even numbers (ex. 2, 4) are for the whole thing, 0.3 and under is waving
    if curStep == 50 then --this is to revert back to original position
        for i = 0,7 do 
            setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][1])
        end
    end
end