-- NEGRI0LLA
-- This script reduces 50 HP of player target.
-- This project causes the pistol to fire.
-- !!!!! For this script work, need tool on starterPack, Part witch name Handle in tool, remoteEvent in here and two scripts incliding this one.
-- !!!!! IT IS A SIMPLE SCRIPT(SCRIPT(NOT LOCAL)) !!!!!

script.Parent.RemoteEvent.OnServerEvent:Connect(function(plr, humanoid) -- Starting the function when RemoteEvent is fire(When player target = another player).
	humanoid.Health -= 50 -- Remove 50 HP on target.
end)
