-- NEGRI0LLA

-- !!! For this script needed leaderstats or DataScript witch you can find in this repository in PlayerData folder
-- !!! The local script must be placed under this script—that is, this script acts as the parent of the local script.
-- !!! Create Remote Event under this script
-- This script you can put on ServerScriptStorage

game.Players.PlayerAdded:Connect(function(plr) -- When player added, function will be started

	local screenGui = Instance.new("ScreenGui") -- Creating ScreenGui
	screenGui.Parent = plr.PlayerGui

	local button = Instance.new("TextButton") -- Creating Button
	button.Parent = screenGui
	button.Position = UDim2.new(0.438, 0, 0.855, 0) -- Set position of Button
	button.Size = UDim2.new(0, 200, 0, 50) -- Set size of Button
	button.TextScaled = true
	button.Text = "Click me to earn"
	
	script.Parent = button -- Set parent of this script(to button)
end)

script.RemoteEvent.OnServerEvent:Connect(function(plr) -- Function witch activated when RemoteEvent is fire
	plr.leaderstats.Money.Value += 1 -- give + 1 money every click
end)
