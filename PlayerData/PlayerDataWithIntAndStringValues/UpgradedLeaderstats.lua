-- NEGRI0LLA
-- This is upgraded Leaderstats script
-- !!! Put this in ServerScriptService folder

game.Players.PlayerAdded:Connect(function(plr) -- Creating function which started when player added
	local leaderstats = Instance.new("Folder") -- Creating leaderstats folder
	leaderstats.Parent = plr -- Set path to folder
	leaderstats.Name = "leaderstats" -- Set name of folder
	
	local money = Instance.new("IntValue") -- Creating new money value for player
	money.Parent = leaderstats -- Set path to money
	money.Name = "Money" -- Set name of money
	money.Value = 0 -- Set start count of money
	
	local rank = Instance.new("StringValue") -- Creating new string variable for player
	rank.Parent = leaderstats -- Set path to rank
	rank.Name = "Rank" -- Set name of rank
	rank.Value = "Newbie" -- Set start value of rank
end)
