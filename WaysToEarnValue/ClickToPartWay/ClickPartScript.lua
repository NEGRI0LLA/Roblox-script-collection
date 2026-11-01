-- NEGRI0LLA
-- This script give player x count of money every part click
-- !!! For this script needed Leaderstats or DataScript. You can find him in this repository (PlayerData)
-- !!! Put this script on ServerScriptService folder

x = 1 -- Set count of add to money

game.Players.PlayerAdded:Connect(function(plr) -- Creating function witch started when player join the game
	local part = Instance.new("Part") -- Creating Part
	part.Parent = game.Workspace -- Set part root folder
	
	local character = plr.CharacterAdded:Wait() -- Find player.character
	local posPlayer = character:WaitForChild("HumanoidRootPart") -- Find part of player witch can find player position
	
	part.Position = posPlayer.Position + Vector3.new(0, 0, 6) -- Set part position near player
	task.wait(1)
	part.Anchored = true -- Set anchor part
	
	local clickDetector = Instance.new("ClickDetector") -- Creating ClickDetector
	clickDetector.Parent = part -- Set ClickDetector root folder
	
	clickDetector.MouseClick:Connect(function() -- Creating function witch activated when ClickDetector is clicked
		if plr:FindFirstChild("leaderstats") and plr.leaderstats:FindFirstChild("Money") then -- Check is there money
			plr.leaderstats.Money.Value += x -- Give to player x money
		end
	end)
end)
