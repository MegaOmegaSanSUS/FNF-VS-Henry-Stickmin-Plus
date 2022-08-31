function onCreate()
	-- background shit
	makeLuaSprite('banknight-back', 'banknight-back', -600, -300);
	setScrollFactor('stageback', 0.9, 0.9);
	
	makeLuaSprite('banknight-front', 'banknight-front', -650, 600);
	setScrollFactor('banknight-front', 0.9, 0.9);
	scaleObject('banknight-front', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('banknight-light', 'banknight-light', -125, -100);
		setScrollFactor('banknight-light', 0.9, 0.9);
		scaleObject('banknight-light', 1.1, 1.1);
		
		makeLuaSprite('banknight-light', 'banknight-light', 1225, -100);
		setScrollFactor('banknight-light', 0.9, 0.9);
		scaleObject('banknight-light', 1.1, 1.1);
		setProperty('banknight-light.flipX', false); --mirror sprite horizontally

		makeLuaSprite('stagecurtains', 'stagecurtains', -500, -300);
		setScrollFactor('stagecurtains', 1.3, 1.3);
		scaleObject('stagecurtains', 0.9, 0.9);
	end

	addLuaSprite('banknight-back', false);
	addLuaSprite('banknight-front', false);
	addLuaSprite('banknight-light', false);
	addLuaSprite('banknight-light', false);
	addLuaSprite('banknight-curtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end