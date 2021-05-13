local YOOTIL = require(script:GetCustomProperty("YOOTIL"))

local notification = script:GetCustomProperty("notification"):WaitForObject()
local message_1 = script:GetCustomProperty("message_1"):WaitForObject()
local message_2 = script:GetCustomProperty("message_2"):WaitForObject()

local tween = nil
local queue = YOOTIL.Utils.Queue:new()
local current_item = nil

function Tick(dt)
	if(queue:length() > 0 and current_item == nil) then
		current_item = queue:pop()

		local bounty = 0

		if(current_item.streak >= 5) then
			bounty = 250
		elseif(current_item.streak >= 10) then
			bounty = 500
		elseif(current_item.streak >= 15) then
			bounty = 750
		end

		message_1.text = YOOTIL.Utils.truncate(current_item.name, 17, "...") .. " is on a " .. tostring(current_item.streak) .. " kill streak."
		message_2.text = "Dogecoin Bounty: " .. tostring(bounty)

		tween = YOOTIL.Tween:new(.6, { x = 400 }, { x = 0 })

		tween:on_start(function()
			notification.visibility = Visibility.FORCE_ON
		end)

		tween:set_easing("outBack")
		tween:on_change(function(c)
			notification.x = c.x
		end)
		
		tween:on_complete(function()
			tween = nil
			tween = YOOTIL.Tween:new(.6, { x = 0 }, { x = 400 })

			tween:set_easing("inBack")
			tween:on_change(function(c)
				notification.x = c.x
			end)

			tween:set_delay(2)
			tween:on_complete(function()
				current_item = nil
				tween = nil
				notification.visibility = Visibility.FORCE_OFF
			end)
		end)
	end

	if(current_item ~= nil and tween ~= nil) then
		tween:tween(dt)
	end
end

Events.Connect("player_streak", function(name, streak)
	queue:push({

		name = name,
		streak = streak

	})
end)