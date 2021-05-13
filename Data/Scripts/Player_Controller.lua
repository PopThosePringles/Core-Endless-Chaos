local camera = script:GetCustomProperty("camera"):WaitForObject()
local dome = script:GetCustomProperty("dome"):WaitForObject()
local nebula = script:GetCustomProperty("nebula"):WaitForObject()

local local_player = Game.GetLocalPlayer()

UI.SetCursorVisible(true)
UI.SetCursorLockedToViewport(true)

local hit_position = nil

local move_hook = local_player.movementHook:Connect(function(p, params)
	if(hit_position ~= nil) then
		local dir = hit_position - p:GetWorldPosition()

		dir = Vector3.New(dir.x, dir.y, 0):GetNormalized()
		params.direction = dir
	else
		params.direction = Vector3.New(0, 0, 0)
	end
end)

function Tick(dt)
	local hit = UI.GetCursorHitResult()
	local pos = local_player:GetWorldPosition()
	local camera_pos = camera:GetWorldPosition()

	if(hit) then
		hit_position = hit:GetImpactPosition()

		local dome_rot = dome:GetWorldRotation()
		local nebula_rot = nebula:GetWorldRotation()
		local x_dir = 1
		local y_dir = 1
		
		if(hit_position.y < camera_pos.y) then
			x_dir = -1
		end

		if(hit_position.x < camera_pos.x) then
			y_dir = -1
		end

		dome_rot.x = dome_rot.x + 2 * x_dir * dt
		dome_rot.y = dome_rot.y + 1 * -y_dir * dt

		nebula_rot.x = nebula_rot.x + 4 * -x_dir * dt
		nebula_rot.y = nebula_rot.y + 2 * y_dir * dt

		dome:SetWorldRotation(dome_rot)
		nebula:SetWorldRotation(nebula_rot)

		if((hit_position - Vector3.New(pos.x, pos.y, 0)).size < 60) then
			hit_position = nil
		end
	end

	camera:SetWorldPosition(Vector3.New(pos.x, pos.y, camera_pos.z))
end