function onCreate()
	-- background shit
	makeLuaSprite('bankspazzmatica-back', 'bankspazzmatica-back', -600, -300);
	setScrollFactor('bankspazzmatica-back', 0.9, 0.9);
	
	makeLuaSprite('bankspazzmatica-front', 'bankspazzmatica-front', -650, 600);
	setScrollFactor('bankspazzmatica-front', 0.9, 0.9);
	scaleObject('bankspazzmatica-front', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('bankspazzmatica-light', 'bankspazzmatica-light', -125, -100);
		setScrollFactor('bankspazzmatica-light', 0.9, 0.9);
		scaleObject('bankspazzmatica-light', 1.1, 1.1);
		
		makeLuaSprite('bankspazzmatica-light', 'bankspazzmatica-light', 1225, -100);
		setScrollFactor('bankspazzmatica-light', 0.9, 0.9);
		scaleObject('bankspazzmatica-light', 1.1, 1.1);
		setProperty('bankspazzmatica-light.flipX', false); --mirror sprite horizontally

		makeLuaSprite('bankspazzmatica-curtains', 'bankspazzmatica-curtains', -500, -300);
		setScrollFactor('bankspazzmatica-curtains', 1.3, 1.3);
		scaleObject('bankspazzmatica-curtains', 0.9, 0.9);
	end

	addLuaSprite('bankspazzmatica-back', false);
	addLuaSprite('bankspazzmatica-front', false);
	addLuaSprite('bankspazzmatica-light', false);
	addLuaSprite('bankspazzmatica-light', false);
	addLuaSprite('bankspazzmatica-curtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end