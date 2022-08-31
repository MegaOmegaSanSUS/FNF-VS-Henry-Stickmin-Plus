function onCreate()
	-- background shit
	makeLuaSprite('ellie', 'ellie', -800, -300);
	setScrollFactor('ellie', 0.9, 0.9);
	
	
	
	addLuaSprite('ellie', false);
	
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end