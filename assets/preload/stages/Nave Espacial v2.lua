function onCreate()
	-- background setup
	makeLuaSprite('wall', 'Nave/wall', -600, -500)
    setScrollFactor('wall', 1.0, 1.0)
    scaleObject('wall', 2, 2)

	makeLuaSprite('front', 'Nave/front', -250, -180)
    setScrollFactor('front', 1.0, 1.0)
    scaleObject('front', 1.8, 1.8)

	makeAnimatedLuaSprite('planets', 'Nave/planets', -600, -270)
    setLuaSpriteScrollFactor('planets', 0.5, 0.5)
    scaleObject('planets', 1.8, 1.8)

	makeAnimatedLuaSprite('Star', 'Nave/Star', -600, -270)
    setScrollFactor('Star', 0.9, 0.9)
    scaleObject('Star', 2, 2)

	makeLuaSprite('space', 'Nave/space', -600, -500)
    setScrollFactor('space', 0.6, 0.6)
    scaleObject('space', 2, 2)

	-- add background elements to the screen
	addLuaSprite('space', false)
	addLuaSprite('Star', false)
	addLuaSprite('planets', false) 
	addLuaSprite('wall', false)
	addLuaSprite('front', false)

	-- add animations to the 'planets' sprite
	addAnimationByPrefix('planets', 'idle', 'earth bump00', 33, true)
	addAnimationByPrefix('planets', 'idle', 'Star idle dance', 2, true)
end