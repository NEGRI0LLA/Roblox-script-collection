-- NEGRI0LLA
-- This project add a loader job which add new way to earn money with ProximityPrompt
-- !!! For work this scripts needed Leaderstats or DataScript(You can find them in this repository on PlayerData folder). And put them on ServerScriptService
-- !!!!! Check README file to know how install this project !!!!! / !!!!! Посмотрите README файл чтоб понять как установить этот проект в ваш плейс !!!!!

script.Parent.Triggered:Connect(function(plr) -- Creating function which activated when ProximityPrompt is triggered
	local character = plr.Character -- Set character variable of player
	if plr then -- Check for player variable didnt equals nil
		character.Humanoid:UnequipTools() -- Unequip tools for find them
		if plr.Backpack:FindFirstChild("Box") == nil then -- Check did player have a box or not
			local clone = game.ReplicatedStorage.Box:Clone() -- If player didnt have a box then we make a clone of box which path is ReplicatedStorage
			clone.Parent = plr.Backpack -- Give for player a box
		else
			print(plr.Name .. " already have a box") -- Print if player already have a box
		end
	end
end)
