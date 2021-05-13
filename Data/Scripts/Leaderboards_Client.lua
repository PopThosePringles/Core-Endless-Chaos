local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local score = script:GetCustomProperty("score")
local kills = script:GetCustomProperty("kills")
local score_leaderboards = script:GetCustomProperty("score_leaderboards"):WaitForObject()
local kills_leaderboards = script:GetCustomProperty("kills_leaderboards"):WaitForObject()
local leaderboards = script:GetCustomProperty("leaderboards"):WaitForObject()
local weclome = script:GetCustomProperty("weclome"):WaitForObject()

local updater = Task.Spawn(function()
	if(Leaderboards.HasLeaderboards()) then
		local kills_lb = Leaderboards.GetLeaderboard(kills, LeaderboardType.GLOBAL)
		local kills_index = 1

		if(kills_lb ~= nil) then
			for k, v in pairs(kills_lb) do
				local entry = kills_leaderboards:GetChildren()[kills_index]

				entry:FindDescendantByName("Name Text").text = YOOTIL.Utils.truncate(v.name, 16)
				
				local p_score = v.score
				local txt = "0"
				
				if(p_score > 0) then
					txt = YOOTIL.Utils.number_format(string.format("%.0u", p_score))
				end

				entry:FindDescendantByName("Kills Text").text = txt

				if(kills_index == 10) then
					break
				end

				kills_index = kills_index + 1
			end
		end

		local score_lb = Leaderboards.GetLeaderboard(score, LeaderboardType.GLOBAL)
		local score_index = 1

		if(score_lb ~= nil) then
			for k, v in pairs(score_lb) do
				local entry = score_leaderboards:GetChildren()[score_index]

				entry:FindDescendantByName("Name Text").text = YOOTIL.Utils.truncate(v.name, 16)
			
				local p_score = v.score
				local txt = "0"
				
				if(p_score > 0) then
					txt = YOOTIL.Utils.number_format(string.format("%.0u", p_score))
				end

				entry:FindDescendantByName("Score Text").text = txt

				if(score_index == 10) then
					break
				end

				score_index = score_index + 1
			end
		end
	end
end)

updater.repeatCount = -1
updater.repeatInterval = 30

Game.GetLocalPlayer().bindingPressedEvent:Connect(function(o, binding)
	if(binding == YOOTIL.Input.q) then
		if(leaderboards.visibility == Visibility.FORCE_OFF) then
			if(weclome.visibility == Visibility.FORCE_ON) then
				weclome.visibility = Visibility.FORCE_OFF
			end

			leaderboards.visibility = Visibility.FORCE_ON
		else
			leaderboards.visibility = Visibility.FORCE_OFF
		end
	end	
end)