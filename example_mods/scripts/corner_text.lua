function onCreatePost() --script made by sussy impostor, credit me now or i will do an unfunny
    makeLuaText("engineText", "Psych Engine, Song - " + songName, 500, 30, 30)
    setTextAlignment("engineText", "left")
    addLuaText("engineText")

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('engineText.y', 660)
    end
end