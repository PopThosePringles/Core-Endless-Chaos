local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

Game.playerJoinedEvent:Connect(function(player)
	player.diedEvent:Connect(function(p, damage)
		local streak = player:GetResource("streak")
		local bounty = 0

		if(streak >= 5) then
			bounty = 250
		elseif(streak >= 10) then
			bounty = 500
		elseif(streak >= 15) then
			bounty = 750
		end

		player:AddResource("deaths", 1)
		player:SetResource("streak", 0)
		player:RemoveResource("score", 25)

		YOOTIL.Events.broadcast_to_all_players("player_died", player)

		if(damage.sourcePlayer and damage.sourcePlayer.id ~= player.id) then
			damage.sourcePlayer:AddResource("kills", 1)
			damage.sourcePlayer:AddResource("streak", 1)
			damage.sourcePlayer:AddResource("total_kills", 1)

			local score = 50
			local streak = damage.sourcePlayer:GetResource("streak")
			
			if(streak > 15) then
				score = 500
			elseif(streak > 10) then
				score = 300
			elseif(streak > 5) then
				score = 200
			elseif(streak > 3) then
				score = 150
			end

			damage.sourcePlayer:AddResource("total_score", score)
			
			if(streak == 5 or streak == 10 or streak == 15 or streak == 20) then
				YOOTIL.Events.broadcast_to_all_players("player_streak", damage.sourcePlayer.name, streak)
			end

			damage.sourcePlayer:AddResource("score", score + bounty)

			Events.Broadcast("check_player_equipment", damage.sourcePlayer)
		end
	end)
end)