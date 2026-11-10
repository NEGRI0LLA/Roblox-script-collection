-- NEGI0LLA
-- This script change a rank and check money variables for new updates
-- !!! Put this script in ServerScriptService

local ranks = {"Mid-person", "Advanced", "Rich"} -- Add ranks array

game.Players.PlayerAdded:Connect(function(plr) -- Create a function which activated when player added
	if plr:WaitForChild("leaderstats") and plr.leaderstats:WaitForChild("Money") and plr.leaderstats:WaitForChild("Rank") then -- Check money and rank for them didnt equale nil
		local rank = plr.leaderstats.Rank -- Find a rank
		local money = plr.leaderstats.Money -- Find a money
		
		money.Changed:Connect(function() -- Create a function which activated when money is changed
			
			local n = if money.Value >= 1000 then 3 elseif money.Value >= 100 then 2 elseif money.Value >= 10 then 1 else 0 -- Set first index for array
			local needMoneyForUpgrade = if n == 3 then 1000 elseif n == 2 then 100 elseif n == 1 then 10 else 0 -- Set count of money which needed for upgrade
			
			if money.Value >= needMoneyForUpgrade and needMoneyForUpgrade ~= 0 then -- Check condition
				rank.Value = ranks[n] -- Change a rank
			end
		end)
	end
end)

-- This is a beta test script, because it have a bugs which I will be fix on this week
