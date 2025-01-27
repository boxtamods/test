function onCreate()
     precacheImage('hexagono')
	-- background shit
	makeLuaSprite('city', 'Waifu/city', -605, -280);
     setLuaSpriteScrollFactor('city', 0.4, 0.4);
	scaleObject('city', 2, 2);

	makeLuaSprite('ground', 'Waifu/ground', -724, -470);
	scaleObject('ground', 2.4, 2.4);

	makeLuaSprite('rock', 'Waifu/rock', -590, -220);
	scaleObject('rock', 2, 2);
     
     makeAnimatedLuaSprite('hexagono', 'Waifu/hexagono',-350, -240);
     setLuaSpriteScrollFactor('hexagono', 1, 0.9);		
     scaleObject('hexagono', 4, 4);
	
	-- those are only loaded if you have Low quality turned off, to decrease loading times and memory
	if not lowQuality then
 
	makeLuaSprite('sky', 'Waifu/sky', -650, -250);
     setLuaSpriteScrollFactor('sky', 0.6, 0.6);
	scaleObject('sky', 2, 2);

     makeAnimatedLuaSprite('UFCATS', 'Waifu/UFCATS', 60, 70);
     setLuaSpriteScrollFactor('UFCATS', 0.4, 0.4);		
     scaleObject('UFCATS', 1.8, 1.8);




	
	end
addLuaSprite('hexagono', false);
addLuaSprite('sky', false);
addLuaSprite('city', false);
addLuaSprite('UFCATS', false);
addLuaSprite('rock', false); 
addLuaSprite('ground', false); 
addAnimationByPrefix('hexagono', 'idle', 'Hexagono idle dance00', 17, true);
addAnimationByPrefix('UFCATS', 'idle', 'UFCAT idle dance00', 24, true);

setProperty('hexagono.visible', false);


end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
	

		if value1 == '2' then
    setProperty('hexagono.visible', true);
 	setProperty('sky.visible', false);
	setProperty('city.visible', false);
	setProperty('ground.visible', false);
    setProperty('rock.visible', false);
    setProperty('UFCATS.visible', false);


	
		end

		if value1 == '1' then
	setProperty('hexagono.visible', false);
 	setProperty('sky.visible', true);
	setProperty('city.visible', true);
	setProperty('ground.visible', true);
    setProperty('rock.visible', true);
    setProperty('UFCATS.visible', true);

		end
		
	end
end