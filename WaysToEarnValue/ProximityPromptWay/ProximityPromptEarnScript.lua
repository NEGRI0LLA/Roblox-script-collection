-- NEGRI0LLA
-- This script give player x count of money every ProximityPrompt triggered
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
	
	local ProximityPrompt = Instance.new("ProximityPrompt") -- Creating ProximityPrompt
	ProximityPrompt.Parent = part -- Set ProximityPrompt root folder
	ProximityPrompt.ActionText = "Click to earn money" -- Set text on ProximityPrompt(You can set anything what do you want.)
	
	ProximityPrompt.Triggered:Connect(function() -- Creating function wicht started when ProximityPrompt is triggered
		if plr:FindFirstChild("leaderstats") and plr.leaderstats:FindFirstChild("Money") then -- Check is there money value
			plr.leaderstats.Money.Value += x -- Give x money to player
		end
	end)
end)
