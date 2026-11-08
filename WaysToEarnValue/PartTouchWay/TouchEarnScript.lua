-- NEGRI0LLA
-- This script give player x count of money every part touch
-- !!! For this script needed Leaderstats or DataScript. You can find him in this repository (PlayerData)
-- !!! Put this script on ServerScriptService folder

x = 1 -- Set count of add to money

game.Players.PlayerAdded:Connect(function(plr) -- Creating function which started when player join the game
	local part = Instance.new("Part") -- Creating Part
	part.Parent = game.Workspace -- Set part root folder
	
	local character = plr.CharacterAdded:Wait() -- Find player.character
	local posPlayer = character:WaitForChild("HumanoidRootPart") -- Find part of player which can find player position
	
	part.Position = posPlayer.Position + Vector3.new(0, 0, 6) -- Set part position near player
	task.wait(1)
	part.Anchored = true -- Set anchor part
	
	part.Touched:Connect(function() -- Creating function when player touched the part
		if part.CanTouch == true then -- Check variable for to prevent spam of add money
			plr.leaderstats.Money.Value += x -- Give to player x money
			part.CanTouch = false -- Set variable to false to prevent spam of add money
			task.wait(1) -- Wait 1 second
			part.CanTouch = true -- Returning a value
		end
	end)
end)
