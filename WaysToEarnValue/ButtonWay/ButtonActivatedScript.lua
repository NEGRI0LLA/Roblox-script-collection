-- NEGRI0LLA
-- !!! Make sure to add a RemoteEvent below the main script (ButtonEarnScript).

local plr = game.Players.LocalPlayer -- Set a player variable

plr.PlayerGui.ScreenGui.TextButton.Activated:Connect(function() -- Set activation function of button
	script.Parent.RemoteEvent:FireServer() -- Fire remote event when button is activated
end)
