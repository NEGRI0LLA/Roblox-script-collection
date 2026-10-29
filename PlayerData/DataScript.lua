--NEGRI0LLA
--Sorry for my bad English

local DataStoreService = game:GetService("DataStoreService")
local count_Money_inServer = DataStoreService:GetDataStore("CountOfMoneyPlr")

game.Players.PlayerAdded:Connect(function(plr)
	local leaderstats = Instance.new("Folder") -- Creating folder leaderstats
	leaderstats.Parent = plr
	leaderstats.Name = "leaderstats"
	
	local money = Instance.new("IntValue") -- Creating money value in leaderstats
	money.Parent = leaderstats
	money.Name = "Money"
	money.Value = 0
	
	local playerKey = "Player" .. plr.UserId -- Key for DSS
	
	local success, savedData = pcall(function()
		return count_Money_inServer:GetAsync(playerKey) -- Return key of player
	end)
	
	if success then
		
		if savedData ~= nil then -- If player have money, then we give it him from server
			money.Value = savedData
			
			print("Money is uploaded for " .. plr.Name .. " player.")
		else
			print(plr.Name .. " - is a new player.") -- Else it is a new player and his money = 0
		end
	else
		warn("Data isnt uploaded")
	end
end)

local function savePlayerData(plr)
	
	if plr:FindFirstChild("leaderstats") and plr.leaderstats:FindFirstChild("Money") then -- Check for leaderstats folder and money value
		local playerKey = "Player" .. plr.UserId
		local moneyValue = plr.leaderstats.Money.Value

		local success, err = pcall(function()
			count_Money_inServer:SetAsync(playerKey, moneyValue) -- Save count of money
		end)

		if success then
			print("Data is saved for ".. moneyValue)
		else
			warn("Data isnt saved")
		end
	end
end

game.Players.PlayerRemoving:Connect(savePlayerData) -- If player leave then data will be saved

game:BindToClose(function() -- This function is started when server will be closed
	for _, plr in ipairs(game.Players:GetPlayers()) do
		savePlayerData(plr)
	end
end)
