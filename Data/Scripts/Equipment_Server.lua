local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local mines = {

	script:GetCustomProperty("mine_1"),
	script:GetCustomProperty("mine_2"),
	script:GetCustomProperty("mine_3"),
	script:GetCustomProperty("mine_4")

}

local weapons = {

	script:GetCustomProperty("weapon_1"),
	script:GetCustomProperty("weapon_2"),
	script:GetCustomProperty("weapon_3"),
	script:GetCustomProperty("weapon_4"),
	script:GetCustomProperty("weapon_5")

}

local big_boom = script:GetCustomProperty("big_boom")

local players = {}

Game.playerJoinedEvent:Connect(function(player)
	players[player.id] = {
		
		mine = World.SpawnAsset(mines[1]),
		boom = World.SpawnAsset(big_boom),
		shoot_boom = nil,
		player = player

	}

	players[player.id].boom.currentAmmo = 0

	players[player.id].mine:Equip(player)
	players[player.id].boom:Equip(player)
	players[player.id].shoot_boom = players[player.id].boom:GetAbilities()[1]

	local laser = World.SpawnAsset(weapons[math.random(5)])

	laser:Equip(player)

	laser.targetImpactedEvent:Connect(function(w, d)
		if(Object.IsValid(d.targetObject) and players[d.targetObject.name]) then
			local damage = Damage.New()

			damage.amount = 50
			damage.sourcePlayer = player
			
			players[d.targetObject.name].player:ApplyDamage(damage)
		end
	end)

	player.diedEvent:Connect(function(p, damage)
		players[p.id].mine:Destroy()
	end)
	
	players[player.id].shoot_boom.executeEvent:Connect(function()
		players[player.id].boom.currentAmmo = 0
		player:SetResource("boom_percent", 0)
	end)

	player.respawnedEvent:Connect(function(p)
		players[player.id].mine = World.SpawnAsset(mines[1])
		players[player.id].mine:Equip(player)
	end)
end)

Events.Connect("check_player_equipment", function(player)
	local streak = player:GetResource("streak")
	local equipment = nil

	if(streak == 2) then
		equipment = World.SpawnAsset(mines[2])
	elseif(streak == 3) then
		equipment = World.SpawnAsset(mines[3])
	elseif(streak >= 5) then
		equipment = World.SpawnAsset(mines[4])
	end

	if(equipment ~= nil) then
		if(streak < 5) then
			players[player.id].mine:Destroy()
		end

		players[player.id].mine = equipment
		players[player.id].mine:Equip(player)
	end

	local boom_percent = player:GetResource("boom_percent")

	if(boom_percent < 100) then
		boom_percent = boom_percent + math.random(5, 20)

		if(boom_percent >= 100) then
			players[player.id].boom.currentAmmo = 1
		end

		player:SetResource("boom_percent", math.min(100, boom_percent))
	end
end)