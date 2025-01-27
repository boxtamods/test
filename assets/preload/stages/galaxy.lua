local xx = 400
local yy = 100
local xx2 = 1000
local yy2 = 50
local ofs = 0;
local followchars = true;
local del = 0;
local del2 = 0;

function onCreate()
	-- background shit
	makeLuaSprite('BG1', 'somewhere/bg1', -500, -700);
	setScrollFactor('BG1', 1.2, 0.9);
	scaleLuaSprite("BG1", 2, 2)

	makeLuaSprite('BG2', 'somewhere/bg2', -500, -700);
	setScrollFactor('BG2', 1.1, 1);
   scaleLuaSprite("BG2", 2, 2)

	makeLuaSprite('BG3', 'somewhere/bg3', -500, -700);
	setScrollFactor('BG3', 1.11, 1);
   scaleLuaSprite("BG3", 2, 2)

	makeLuaSprite('BG4', 'somewhere/bg4', -500, -700);
	setScrollFactor('BG4', 1.12, 1);
   scaleLuaSprite("BG4", 2, 2)

	makeLuaSprite('BG5', 'somewhere/bg5', -500, -700);
	setScrollFactor('BG5', 1.13, 1);
   scaleLuaSprite("BG4", 2, 2)

	makeLuaSprite('BG6', 'somewhere/bg6', -500, -700);
	setScrollFactor('BG6', 1.14, 1);
   scaleLuaSprite("BG6", 2, 2)

	makeLuaSprite('BG7', 'somewhere/bg7', -500, -700);
	setScrollFactor('BG7', 1.15, 1);
   scaleLuaSprite("BG7", 2, 2)

	addLuaSprite('BG1', false);
	addLuaSprite('BG2', false);
	addLuaSprite('BG3', false);
	addLuaSprite('BG4', false);
	addLuaSprite('BG5', false);
	addLuaSprite('BG6', false);
	addLuaSprite('BG7', false);
end
function onUpdate(elapsed)
	if curStep >= 0 then
		
	  songPos = getSongPosition()
	  local currentBeat = (songPos/1000)*(bpm/80)
	  --doTweenY('dadTweenY', 'dad', -20-10*math.sin((currentBeat*0.25)*math.pi),0.001)
	  --doTweenY('bfTweenY', 'bf', 0-30*math.sin((currentBeat*0.25)*math.pi),0.001)
	  --doTweenY('gfTweenY', 'gf', -400-10*math.cos((currentBeat*0.25)*math.pi),0.001)
	end
end
function onStepHit()
end
function onUpdate(elapsed)
	if curStep >= 0 then
		
		songPos = getSongPosition()
		local currentBeat = (songPos/1000)*(bpm/80)
		doTweenY('dadTweenY', 'dad', -20-10*math.sin((currentBeat*0.25)*math.pi),0.001)
		doTweenY('gfTweenY', 'gf', -400-10*math.cos((currentBeat*0.25)*math.pi),0.001)
	  end
		if followchars == true then
			if mustHitSection == false then
				if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
					triggerEvent('Camera Follow Pos',xx-ofs,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
					triggerEvent('Camera Follow Pos',xx+ofs,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'singUP' then
					triggerEvent('Camera Follow Pos',xx,yy-ofs)
				end
				if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
					triggerEvent('Camera Follow Pos',xx,yy+ofs)
				end
				if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
					triggerEvent('Camera Follow Pos',xx-ofs,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
					triggerEvent('Camera Follow Pos',xx+ofs,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
					triggerEvent('Camera Follow Pos',xx,yy-ofs)
				end
				if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
					triggerEvent('Camera Follow Pos',xx,yy+ofs)
				end
				if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
					triggerEvent('Camera Follow Pos',xx,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'idle' then
					triggerEvent('Camera Follow Pos',xx,yy)
				end
			else
	
				if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
					triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
					triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
					triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
					triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
				end
			if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
					triggerEvent('Camera Follow Pos',xx2,yy2)
				end
			end
		else
			triggerEvent('Camera Follow Pos','','')
	end
end