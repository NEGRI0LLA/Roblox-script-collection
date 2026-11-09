-- NEGRI0LLA
-- This project add a loader job which add new way to earn money wiith ProximityPrompt
-- !!! For work this scripts needed Leaderstats or DataScript(You can find them in this repository on PlayerData folder). And put them on ServerScriptService
-- !!!!! Check README file to know how install this project !!!!! / !!!!! Посмотрите README файл чтоб понять как установить этот проект в ваш плейс !!!!!

local x = 20 -- Set variable which give every put a box count of money to player

script.Parent.Triggered:Connect(function(plr) -- Creating function which activated when ProximityPrompt is triggered
	local character = plr.Character -- Set character variable of player
	local money = plr:FindFirstChild("leaderstats"):FindFirstChild("Money") -- Find a money variable
	
	if plr then -- Check for player variable didnt equals nil
		character.Humanoid:UnequipTools() -- Unequip tools for find them
		if plr.Backpack:FindFirstChild("Box") then -- Check did player have a box or not
			plr.Backpack.Box:Destroy() -- If player have a box then we destroy them 
			money.Value += x -- And give to player x count of money
		else
			print(plr.Name .. " didnt have a box") -- Print if player didnt have a box
		end
	end
end)
