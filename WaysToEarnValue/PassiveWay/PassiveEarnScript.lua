-- NEGRI0LLA
-- !!! Put this script on ServerScriptService
-- !!! For this script need leaderstats or DataScript. You can find him on this repository(in playerData).

x = 1 -- Set count of money you need

game.Players.PlayerAdded:Connect(function(plr) -- Create function when player join the game
	local money = plr:WaitForChild("leaderstats"):WaitForChild("Money") -- Find player money
	while plr.Parent do -- Write the function which work while player didnt leave
		money.Value += x -- Add + x money
		task.wait(1) -- Wait 1 second, you can set anything value
	end
end)
