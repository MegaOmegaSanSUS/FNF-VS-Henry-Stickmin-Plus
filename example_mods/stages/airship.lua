function onCreate()
	-- background shit
	makeLuaSprite('nyeh-bgWalls', 'nyeh-bgWalls', -600, -300);
	setScrollFactor('nyeh-bgWalls', 0.9, 0.9);
	
	makeLuaSprite('nyeh-fgSnow', 'nyeh-fgSnow', -650, 600);
	setScrollFactor('nyeh-fgSnow', 0.9, 0.9);
	scaleObject('nyeh-fgSnow', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeAnimatedLuaSprite('nyeh-bottomBop','nyeh-bottomBop',100,100)addAnimationByPrefix('nyeh-bottomBop','nyeh-bottomBop','',24,true)
objectPlayAnimation('nyeh-bottomBop','nyeh-bottomBop',false)
setScrollFactor('nyeh-bottomBop', 0.9, 0.9);
		
		
				makeAnimatedLuaSprite('nyeh-santa','nyeh-santa',-500,100)addAnimationByPrefix('nyeh-santa','nyeh-santa','',24,true)
objectPlayAnimation('nyeh-santa','nyeh-santa',false)
setScrollFactor('nyeh-santa', 0.9, 0.9);

		makeLuaSprite('', '', -500, -300);
		setScrollFactor('', 1.3, 1.3);
		scaleObject('', 0.9, 0.9);
	end

	addLuaSprite('nyeh-bgWalls', false);
	addLuaSprite('nyeh-fgSnow', false);
	addLuaSprite('nyeh-bottomBop', false);
	addLuaSprite('nyeh-santa', false);
	addLuaSprite('', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end