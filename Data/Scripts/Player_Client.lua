local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local player_indicator = script:GetCustomProperty("player_indicator")
local ui_container = script:GetCustomProperty("ui_container"):WaitForObject()
local stat_board = script:GetCustomProperty("stat_board"):WaitForObject()
local stat_rows = script:GetCustomProperty("stat_rows"):WaitForObject()
local row = script:GetCustomProperty("row")
local player_explosion = script:GetCustomProperty("player_explosion")
local welcome = script:GetCustomProperty("welcome"):WaitForObject()
local leaderboards = script:GetCustomProperty("leaderboards"):WaitForObject()

local big_boom = script:GetCustomProperty("big_boom"):WaitForObject()
local big_boom_progress = script:GetCustomProperty("big_boom_progress"):WaitForObject()

local colors = {

	{
		
		color = script:GetCustomProperty("color_1"),
		used = false

	},

	{
		
		color = script:GetCustomProperty("color_2"),
		used = false

	},

	{
		
		color = script:GetCustomProperty("color_3"),
		used = false

	},

	{
		
		color = script:GetCustomProperty("color_4"),
		used = false

	},

	{
		
		color = script:GetCustomProperty("color_5"),
		used = false

	},

	{
		
		color = script:GetCustomProperty("color_6"),
		used = false

	},

	{
		
		color = script:GetCustomProperty("color_7"),
		used = false

	},

	{
		
		color = script:GetCustomProperty("color_8"),
		used = false

	}

}

local local_player = Game.GetLocalPlayer()
local players = {}

local y_offset = 40
local x_offset = 100

function get_unused_color()
	for _, c in pairs(colors) do
		if(not c.used) then
			return c
		end
	end
end

function refresh_stat_board()
	for _, r in pairs(stat_rows:GetChildren()) do
		r:Destroy()
	end

	local list = {}

	for _, p in ipairs(Game.GetPlayers()) do
		list[#list + 1] = {

			player = p,
			score = p:GetResource("score"),
			kills = p:GetResource("kills")

		}
	end

	table.sort(list, function(a, b)
		return a.score > b.score
	end)

	local offset = 0

	for i, e in ipairs(list) do
		local r = World.SpawnAsset(row, { parent = stat_rows })

		local pos_txt = r:FindDescendantByName("Position Text")
		local name_txt = r:FindDescendantByName("Name Text")
		local score_txt = r:FindDescendantByName("Score Text")
		local kill_txt = r:FindDescendantByName("Kills Text")

		pos_txt.text = tostring(i)	
		name_txt.text = YOOTIL.Utils.truncate(e.player.name, 16, "...")
		score_txt.text = YOOTIL.Utils.number_format(e.score)
		kill_txt.text = YOOTIL.Utils.number_format(e.kills)

		if(players[e.player.id]) then
			pos_txt:SetColor(players[e.player.id].c.color)
			kill_txt:SetColor(players[e.player.id].c.color)
			score_txt:SetColor(players[e.player.id].c.color)
			name_txt:SetColor(players[e.player.id].c.color)
		end

		r.y = offset
		offset = offset + 42
	end
end

Game.playerJoinedEvent:Connect(function(player)
	if(player.id ~= local_player.id) then
		if(not players[player.id]) then
			local ui_item = World.SpawnAsset(player_indicator, { parent = ui_container })
			local txt = ui_item:FindDescendantByType("UIText")
			
			if(txt ~= nil) then
				local c = get_unused_color()

				txt.text = player.name
				txt:SetColor(c.color)
				
				c.used = true
	
				local size = txt:ComputeApproximateSize()

				while(size == nil) do
					Task.Wait()
					size = txt:ComputeApproximateSize()
				end

				ui_item.width = size.x + 15

				players[player.id] = {
					
					player = player,
					ui_item = ui_item,
					c = c

				}
			end
		end
	else
		player.diedEvent:Connect(function()
			if(players[player.id]) then
				players[player.id].ui_item.visibility = Visibility.FORCE_OFF
			end
		end)

		player.respawnedEvent:Connect(function()
			if(players[player.id]) then
				players[player.id].ui_item.visibility = Visibility.FORCE_ON
			end
		end)
	end

	refresh_stat_board()
end)

Game.playerLeftEvent:Connect(function(player)
	if(players[player.id]) then
		players[player.id].c.used = false
		players[player.id].ui_item:Destroy()
		players[player.id] = nil

		refresh_stat_board()
	end
end)

local_player.resourceChangedEvent:Connect(function(player, prop, amount)
	if(prop == "score" or prop == "kills") then
		refresh_stat_board()
	elseif(prop == "boom_percent") then
		big_boom_progress.text = tostring(amount) .. "%"

		if(amount == 100) then
			big_boom:SetColor(Color.New(1, 1, 1, 1))
		else
			big_boom:SetColor(Color.New(1, 1, 1, .2))
		end
	end
end)

function Tick(dt)
	local screen = UI.GetScreenSize()

	for k, v in pairs(players) do
		local target_pos = v.player:GetWorldPosition()
		local screen_pos = UI.GetScreenPosition(target_pos)

		if(screen_pos ~= nil) then
			screen_pos.x = screen_pos.x - screen.x / 2
			screen_pos.y = screen_pos.y - screen.y / 2

			v.ui_item.x = CoreMath.Clamp(screen_pos.x, -screen.x / 2 + x_offset, screen.x / 2 - x_offset)
			v.ui_item.y = CoreMath.Clamp(screen_pos.y, -screen.y / 2 + y_offset, screen.y / 2 - y_offset)
		else
			local player_pos = local_player:GetWorldPosition()
			local point = (target_pos - player_pos)
			local dist = point.sizeSquared

			local view_rot = local_player:GetViewWorldRotation()
			local view_right = Quaternion.New(view_rot):GetRightVector()
			local dir = point:GetNormalized()

			v.ui_item.x = (view_right .. dir) * (screen.x - 110) / 2
			v.ui_item.y = screen.y / 2 - y_offset
		end
	end
end

local_player.bindingPressedEvent:Connect(function(o, binding)
	if(binding == YOOTIL.Input.h) then
		if(welcome.visibility == Visibility.FORCE_ON) then
			welcome.visibility = Visibility.FORCE_OFF
		else
			if(leaderboards.visibility == Visibility.FORCE_ON) then
				leaderboards.visibility = Visibility.FORCE_OFF
			end

			welcome.visibility = Visibility.FORCE_ON
		end
	end
end)

Events.Connect("player_died", function(player)
	local vfx = World.SpawnAsset(player_explosion)

	vfx:SetWorldPosition(player:GetWorldPosition())
end)

Events.Connect("show_welcome", function()
	welcome.visibility = Visibility.FORCE_ON
end)

Task.Wait()
YOOTIL.Events.broadcast_to_server("ready")