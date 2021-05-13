local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

Game.playerJoinedEvent:Connect(function(player)
	local data = Storage.GetPlayerData(player)

	if(not data.seen_welcome) then
		YOOTIL.Events.broadcast_to_player(player, "show_welcome")
	end
end)

Game.playerLeftEvent:Connect(function(player)
	Storage.SetPlayerData(player, { seen_welcome = 1 })
end)