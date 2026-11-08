-- NEGRI0LLA
-- This script reduces 50 HP of player target.
-- This project causes the sword to attack.
-- !!!!! For this script work, need tool on starterPack, Part which name Handle in tool, remoteEvent in here and two scripts incliding this one.
-- !!!!! IT IS A SIMPLE SCRIPT(SCRIPT(NOT LOCAL)) !!!!!

x = 50 -- The value x count of HP reduces on target

script.Parent.RemoteEvent.OnServerEvent:Connect(function(plr, humanoid) -- Starting the function when RemoteEvent is fire(When player target = another player).
	humanoid.Health -= x -- Remove x HP on target.
end)
