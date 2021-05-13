local music = script:GetCustomProperty("music"):WaitForObject()

local list = music:GetChildren()
local current_song = list[math.random(#list)]

current_song:Play()

function Tick()
	if(not current_song.isPlaying) then
		current_song = list[math.random(#list)]
	end
end