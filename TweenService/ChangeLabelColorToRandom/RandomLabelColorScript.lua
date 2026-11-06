-- NEGRI0LLA
-- This script create new label with smooth changing random color
-- !!! Put this script on ServerScriptService folder

local TweenService = game:GetService("TweenService") -- Set a TweenService variable

game.Players.PlayerAdded:Connect(function(plr) -- Create a function when Player added
	local screenGui = Instance.new("ScreenGui") -- Create a ScreenGui
	screenGui.Parent = plr.PlayerGui -- Set a ScreenGui main folder
	
	local label = Instance.new("TextLabel") -- Create a TextLabel
	label.BackgroundColor3 = Color3.new(1, 1, 1) -- Set a background color for TextLabel
	label.Parent = screenGui -- Set a TextLabel main folder
	label.Position = UDim2.new(0.438, 0, 0.927, 0) -- Set a TextLabel position
	label.Size = UDim2.new(0, 200, 0, 50) -- Set a TextLabel size
	
	local tweeninfo = TweenInfo.new(2) -- Create TweenInfo
	
	while plr.Parent do -- Create infinity cycle while Player didnt leave
		local goal = {} -- Create goal for TextLabel
		goal.BackgroundColor3 = BrickColor.random().Color -- Create color goal
		
		local tween = TweenService:Create(label, tweeninfo, goal) -- Set a tween
		tween:Play() -- Play tween
		
		task.wait(2) -- Wait 2 seconds to prevent the cycles from overlapping
	end
end)
