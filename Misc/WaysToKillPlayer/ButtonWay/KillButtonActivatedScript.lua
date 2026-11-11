-- NEGRI0LLA
-- This script check when player click button and fire RemoteEvent.
-- !!!!! IT IS A LOCAL SCRIPT(Put him inside main Script on ServerScriptService) !!!!!

local button = script.Parent -- Find Button variable
local remoteEvent = game.ReplicatedStorage:WaitForChild("RemoteEvent") -- Find RemoteEvent on ReplicatedStorage

button.MouseButton1Click:Connect(function() -- Start function when player click button
	remoteEvent:FireServer() -- Fire RemoteEvent to server
end)
