
local player_ships = {

	script:GetCustomProperty("player_ship_1"),
	script:GetCustomProperty("player_ship_2"),
	script:GetCustomProperty("player_ship_3"),
	script:GetCustomProperty("player_ship_4"),
	script:GetCustomProperty("player_ship_5"),
	script:GetCustomProperty("player_ship_6"),
	script:GetCustomProperty("player_ship_7"),
	script:GetCustomProperty("player_ship_8")

}

local collider = script:GetCustomProperty("collider")

local players = {}

Game.playerJoinedEvent:Connect(function(player)
	local index = math.random(8)
	local ship = World.SpawnAsset(player_ships[index])

	ship.visibility = Visibility.FORCE_OFF
	ship:AttachToPlayer(player, "camera")

	local collider = World.SpawnAsset(collider)

	collider.name = player.id
	collider:SetWorldScale(Vector3.New(2, 2, 4))
	collider:AttachToPlayer(player, "pelvis")
	collider.visibility = Visibility.FORCE_OFF

	players[player.id] = {

		ship = ship

	}

	player:SetVisibility(false, false)

	player.diedEvent:Connect(function()
		ship.visibility = Visibility.FORCE_OFF
	end)

	player.respawnedEvent:Connect(function()
		ship.visibility = Visibility.FORCE_ON
	end)
end)

Game.playerLeftEvent:Connect(function(player)
	if(players[player.id] ~= nil) then
		players[player.id].ship:Destroy()
		players[player.id] = nil
	end
end)

Events.ConnectForPlayer("ready", function(player)
	if(players[player.id]) then
		players[player.id].ship.visibility = Visibility.FORCE_ON
	end
end)