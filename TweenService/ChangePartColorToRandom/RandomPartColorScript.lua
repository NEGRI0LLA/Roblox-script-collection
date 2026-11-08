-- NEGRI0LLA
-- This script changes random color of part smoothly infinitely.
-- !!! Put this script on ServerScriptService folder

local tweenService = game:GetService("TweenService") -- Find the TweenService

local part = Instance.new("Part") -- Creating part
part.Parent = game.Workspace -- Set part main folder
part.Position = Vector3.new(8.8, 0.5, -5) -- Set position of part(you can set any)
part.Anchored = true -- Set anchored

local tweenInfo = TweenInfo.new(2) -- Creating TweenInfo which continues 2 second

while true do -- Creating infinity cycle
	local goal = {} -- Creating Tween goal
	goal.Color =  BrickColor.random().Color -- Set random color how goal

	local tween = tweenService:Create(part, tweenInfo, goal) -- Creating Tween
	tween:Play() -- Play
	
	task.wait(2) -- Wait 2 second
end
