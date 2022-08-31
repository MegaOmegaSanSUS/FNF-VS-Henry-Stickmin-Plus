function onCreate()
	-- background shit
	makeLuaSprite('banktwo-back', 'banktwo-back', -600, -300);
	setScrollFactor('stageback', 0.9, 0.9);
	
	makeLuaSprite('banktwo-front', 'banktwo-front', -650, 600);
	setScrollFactor('banktwo-front', 0.9, 0.9);
	scaleObject('banktwo-front', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('banktwo-light', 'banktwo-light', -125, -100);
		setScrollFactor('banktwo-light', 0.9, 0.9);
		scaleObject('banktwo-light', 1.1, 1.1);
		
		makeLuaSprite('banktwo-light', 'banktwo-light', 1225, -100);
		setScrollFactor('banktwo-light', 0.9, 0.9);
		scaleObject('banktwo-light', 1.1, 1.1);
		setProperty('banktwo-.flipX', false); --mirror sprite horizontally

		makeLuaSprite('stagecurtains', 'stagecurtains', -500, -300);
		setScrollFactor('stagecurtains', 1.3, 1.3);
		scaleObject('stagecurtains', 0.9, 0.9);
	end

	addLuaSprite('banktwo-back', false);
	addLuaSprite('banktwo-front', false);
	addLuaSprite('banktwo-light', false);
	addLuaSprite('banktwo-light', false);
	addLuaSprite('banktwo-curtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end