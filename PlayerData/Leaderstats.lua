-- NEGRI0LLA
-- In this script, I’ve attempted to create a table for players' currencies and explain what each line of code does. Sorry for my bad English

game.Players.PlayerAdded:Connect(function(plr) -- Creating function witch started when player added
	local leaderstats = Instance.new("Folder") -- Creating folder
	leaderstats.Parent = plr -- Set path to folder
	leaderstats.Name = "leaderstats" -- Set name of folder
	
	local money = Instance.new("IntValue") -- Creating new value
	money.Parent = leaderstats -- Set path to value
	money.Name = "Money" -- Set name of value
	money.Value = 0 -- Set count of money
end)
