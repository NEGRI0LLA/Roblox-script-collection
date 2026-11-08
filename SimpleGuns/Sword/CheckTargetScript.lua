-- NEGRI0LLA
-- This project causes the sword to attack.
-- This script check player target when sword is activated.
-- !!! For check this script needed Bot, or something any, for example player.
-- !!!!! For this project work, need tool on starterPack, Part which name Handle in tool, remoteEvent in here and two scripts incliding this one !!!!!
-- !!!!! IT IS A LOCAL SCRIPT !!!!!

script.Parent.Activated:Connect(function() -- Started function when Tool is activated
	local plr = game.Players.LocalPlayer -- Find Player variable
	local RemoteEvent = script.Parent.RemoteEvent -- Set RemoteEvent variable
	local mouse = plr:GetMouse() -- Find player mouse
	local target = mouse.Target -- Find mouse target

	if target then -- Check target for not = nil
		if target.Parent then -- Check target.Parent for not = nil

			if target.Parent:FindFirstChild("Humanoid") and (plr.Character.Head.Position - target.Position).Magnitude < 5 then -- Find a humanoid around 5 studs
				local hum = target.Parent.Humanoid
				RemoteEvent:FireServer(hum) -- if it == Humanoid then we Fire RemoteEvent
			else if target.Parent.Parent:FindFirstChild("Humanoid") and (plr.Character.Head.Position - target.Parent.Parent:FindFirstChild("Head").Position).Magnitude < 5 then -- if it didn't work out, then find again a humanoid another way around 5 studs
					local hum = target.Parent.Parent.Humanoid
					RemoteEvent:FireServer(hum) -- if it == Humanoid then we Fire RemoteEvent
				end
			end
		end
	end
end)
