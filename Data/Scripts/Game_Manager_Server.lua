local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

Game.playerJoinedEvent:Connect(function(player)
	local data = Storage.GetPlayerData(player)

	if(data.total_kills) then
		player:SetResource("total_kills", data.total_kills)
	end

	if(data.total_score) then
		player:SetResource("total_score", data.total_score)
	end
end)

Game.playerLeftEvent:Connect(function(player)
	Storage.SetPlayerData(player, {
		
		total_kills = player:GetResource("total_kills"),
		total_score = player:GetResource("total_score")
	
	})
end)