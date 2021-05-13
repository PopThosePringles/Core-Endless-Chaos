local coin = script:GetCustomProperty("coin")

Game.playerJoinedEvent:Connect(function(player)
	player.diedEvent:Connect(function(p)
		local c = World.SpawnAsset(coin)

		c:SetWorldPosition(p:GetWorldPosition())
	end)
end)