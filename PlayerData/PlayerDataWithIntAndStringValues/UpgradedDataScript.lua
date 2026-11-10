-- NEGRI0LLA
-- This is updated DataScript which have two varibales. First is a Money and Second is a Rank of player

local DataStoreService = game:GetService("DataStoreService") -- Get service
local PlayerDataStore = DataStoreService:GetDataStore("PlayerDataStore") -- Create DataStore

game.Players.PlayerAdded:Connect(function(plr) -- Create function which activater when player added
	local leaderstats = Instance.new("Folder") -- Creating folder Leaderstats
	leaderstats.Parent = plr -- Set a path for Leaderstats folder
	leaderstats.Name = "leaderstats" -- Set a name of Leaderstats folder
	
	local money = Instance.new("IntValue") -- Creating a money variable in Leaderstats folder
	money.Parent = leaderstats -- Set a path for money
	money.Name = "Money" -- Set a name for money
	money.Value = 0 -- Set start value of money
	
	local rank = Instance.new("StringValue") -- Creating a rank variable in Leaderstats folder
	rank.Parent = leaderstats -- Set a path for rank
	rank.Name = "Rank" -- Set a name for rank
	rank.Value = "Newbie" -- Set start value of rank
	
	local playerKey = "Player" .. plr.UserId -- Find a Player key for DataStoreService
	
	local success, loadData = pcall(function() -- Creating protected function
		return PlayerDataStore:GetAsync(playerKey) -- Get data of player
	end)
	
	if success then -- If function is completed then we move on
		
		if loadData ~= nil then -- If player have data in DataStore, then we give them for him from server
			
			money.Value = loadData.Money -- Load a money
			rank.Value = loadData.Rank -- Load a rank
			
			print("Money is uploaded for " .. plr.Name .. " player. His rank: " .. rank.Value .. " and money: " .. money.Value) -- Print about successful load
		else
			print(plr.Name .. " - is a new player.") -- Else it is a new player
		end
	else
		warn("Data isnt uploaded") -- Warn if server cant getasync data
	end
end)

local function savePlayerData(plr) -- Create function which save player data
	
	if plr:FindFirstChild("leaderstats") and plr.leaderstats:FindFirstChild("Money") then -- Check for leaderstats folder and money value for them didnt equale nil
		local playerKey = "Player" .. plr.UserId -- Get player key
		local moneyValue = plr.leaderstats.Money.Value -- Get money variable
		local rankValue = plr.leaderstats.Rank.Value -- Get rank variable
		local dataToSave = { -- Create a dictionary which stores data
			Money = moneyValue,
			Rank = rankValue
		}
		
		local success, err = pcall(function() -- Create protected function for SetAsync
			PlayerDataStore:SetAsync(playerKey,dataToSave) -- Save count of data
		end)

		if success then
			print("Data is saved for ".. moneyValue .. " and player rank: " .. rankValue) -- Print about successful save
		else
			warn("Data isnt saved") -- Warn if data cant save
		end
	end
end

game.Players.PlayerRemoving:Connect(savePlayerData) -- If player leave then data will be saved

game:BindToClose(function() -- This function is started when server will be closed
	for _, plr in ipairs(game.Players:GetPlayers()) do 
		savePlayerData(plr) -- Save data for all players on server
	end
end)
