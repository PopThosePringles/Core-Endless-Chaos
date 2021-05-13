local score = script:GetCustomProperty("score")
local kills = script:GetCustomProperty("kills")

local task = Task.Spawn(function()
	if(Leaderboards.HasLeaderboards()) then
		for k, p in pairs(Game.GetPlayers()) do
			Leaderboards.SubmitPlayerScore(kills, p, p:GetResource("total_kills"))
			Leaderboards.SubmitPlayerScore(score, p, p:GetResource("total_score"))
		end
	end
end)

task.repeatCount = -1
task.repeatInterval = 30