-- NEGRI0LLA
-- This script creating button on screen, when player click him he die.
-- !!! Put this script on ServerScriptService folder
-- !!!!! Put LocalScript(name: ClickScript) inside this script, and put RemoteEvent on ReplicatedStorage !!!!!

local remoteEvent = game.ReplicatedStorage:WaitForChild("RemoteEvent") -- Find RemoteEvent on ReplicatedStorage
local localScriptTemplate = script.KillButtonActivatedScript -- Find LocalScript template inside this script

local function addButton(plr) -- Create function for add button
	local screenGui = Instance.new("ScreenGui") -- Creating ScreenGui
	screenGui.Parent = plr.PlayerGui -- Set parent to PlayerGui
	screenGui.ResetOnSpawn = false -- Set false for gui dont delete after death

	local button = Instance.new("TextButton") -- Creating Button
	button.Parent = screenGui -- Set parent to ScreenGui
	button.Position = UDim2.new(0.438, 0, 0.855, 0) -- Set position of Button
	button.Size = UDim2.new(0, 200, 0, 50) -- Set size of Button
	button.TextScaled = true -- Make text size auto
	button.Text = "Click me to death" -- Set text on button

	local clonedScript = localScriptTemplate:Clone() -- Clone LocalScript for this player
	clonedScript.Parent = button -- Put cloned script inside button
end

game.Players.PlayerAdded:Connect(addButton) -- Start function when player join

remoteEvent.OnServerEvent:Connect(function(plr) -- Start function when RemoteEvent is fire
	if plr.Character and plr.Character:FindFirstChild("Humanoid") then -- Check if character and humanoid exist
		plr.Character.Humanoid:TakeDamage(plr.Character.Humanoid.MaxHealth) -- Kill player(take max damage)
	end
end)
