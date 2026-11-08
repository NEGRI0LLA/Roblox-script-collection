-- NEGRI0LLA
-- This script creating two part which can teleport player
-- !!! Put this script on ServerScriptService folder

local isTeleported = false -- Create cooldown variable

local firstPart = Instance.new("Part") -- Create first part
firstPart.Name = "First" -- Set name
firstPart.Parent = game.Workspace -- Set main folder
firstPart.Position = Vector3.new(17.7, 0.5, 6.2) -- Set positinon(you can set any)
firstPart.Anchored = true -- Set anchored
firstPart.Size = Vector3.new(5, 1, 5) -- Set size(you can set any)
firstPart.BrickColor = BrickColor.Blue() -- Set color(you can set any)

local secondPart = Instance.new("Part") -- Create second part
secondPart.Name = "Second" -- Set name
secondPart.Parent = game.Workspace -- Set main folder
secondPart.Position = Vector3.new(-2.1, 0.5, 7.3) -- Set positinon(you can set any)
secondPart.Anchored = true -- Set anchored
secondPart.Size = Vector3.new(5, 1, 5) -- Set size(you can set any)
secondPart.BrickColor = BrickColor.Red() -- Set color(you can set any)

firstPart.Touched:Connect(function(whoTouched) -- Create first part touch function
	if isTeleported then return end -- Check cooldown

	if whoTouched then -- Check for whoTouched not = nil
		if whoTouched.Name == "RightFoot" then -- Check name
			whoTouched.Parent.HumanoidRootPart.Position = secondPart.Position + Vector3.new(0, 3, 0) -- Set new player position to secondPart
			isTeleported = true
			task.wait(1.5) -- Set 1,5 second to cooldown
			isTeleported = false
		end
	end
end)

secondPart.Touched:Connect(function(whoTouched) -- Create second part touch function
	if isTeleported then return end -- Check cooldown

	if whoTouched then -- Check for whoTouched not = nil
		if whoTouched.Name == "RightFoot" then -- Check name
			whoTouched.Parent.HumanoidRootPart.Position = firstPart.Position + Vector3.new(0, 3, 0) -- Set new player position to secondPart
			isTeleported = true
			task.wait(1.5) -- Set 1,5 second to cooldown
			isTeleported = false
		end
	end
end)

-- It is the most beatiful script who i made
