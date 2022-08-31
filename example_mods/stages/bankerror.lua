function onCreate()
	-- background shit
	makeLuaSprite('error-back', 'error-back', -600, -300);
	setScrollFactor('error-back', 0.9, 0.9);
	
	makeLuaSprite('error-front', 'error-front', -650, 600);
	setScrollFactor('error-front', 0.9, 0.9);
	scaleObject('error-front', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('error-light', 'error-light', -125, -100);
		setScrollFactor('error-light', 0.9, 0.9);
		scaleObject('error-light', 1.1, 1.1);
		
		makeLuaSprite('error-light', 'error-light', 1225, -100);
		setScrollFactor('error-light', 0.9, 0.9);
		scaleObject('error-light', 1.1, 1.1);
		setProperty('error-light.flipX', false); --mirror sprite horizontally

		makeLuaSprite('error-curtains', 'stagecurtains', -500, -300);
		setScrollFactor('error-curtains', 1.3, 1.3);
		scaleObject('error-curtains', 0.9, 0.9);
	end

	addLuaSprite('error-back', false);
	addLuaSprite('error-front', false);
	addLuaSprite('error-light', false);
	addLuaSprite('error-light', false);
	addLuaSprite('error-curtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end