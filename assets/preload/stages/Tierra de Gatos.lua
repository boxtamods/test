function onCreate()
	-- background shit
	makeLuaSprite('sky0', 'Waifu/sky0', -650, -250);
     setLuaSpriteScrollFactor('sky0', 0.6, 0.6);
	scaleObject('sky0', 2, 2);

	makeLuaSprite('ground0', 'Waifu/ground0', -724, -470);
	scaleObject('ground0', 2.4, 2.4);

	makeLuaSprite('rock0', 'Waifu/rock0', -590, -220);
	scaleObject('rock0', 2, 2);

	
	if not lowQuality then
	makeLuaSprite('city0', 'Waifu/city0', -605, -280);
     setLuaSpriteScrollFactor('city0', 0.4, 0.4);
	scaleObject('city0', 2, 2);

     makeAnimatedLuaSprite('UFCATS', 'Waifu/UFCATS', 60, 70);
     setLuaSpriteScrollFactor('UFCATS', 0.4, 0.4);		
     scaleObject('UFCATS', 1.8, 1.8);

	
	end
addLuaSprite('sky0', false);
addLuaSprite('city0', false);
addLuaSprite('UFCATS', false);
addLuaSprite('rock0', false); 
addLuaSprite('ground0', false);
addAnimationByPrefix('UFCATS', 'idle', 'UFCAT idle dance00', 24, true);

end
