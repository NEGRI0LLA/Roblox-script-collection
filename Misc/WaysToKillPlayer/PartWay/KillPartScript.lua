-- NEGRI0LLA
-- This script creating red neon part, when player touch him with foot he die.
-- !!! Put this script on ServerScriptService folder

local part = Instance.new("Part") -- Creating part
part.Anchored = true -- Set anchored
part.Position = Vector3.new(22, 0.5, 9.3) -- Set position(you can set any)
part.BrickColor = BrickColor.Red() -- Set red color
part.Material = Enum.Material.Neon -- Set neon material
part.Parent = game.Workspace -- Set parent to Workspace

part.Touched:Connect(function(whoTouch) -- Start function when part is touched
	if whoTouch.Name == "RightFoot" or whoTouch.Name == "LeftFoot" then -- Check if player touch part with foot
		whoTouch.Parent.Humanoid:TakeDamage(whoTouch.Parent.Humanoid.MaxHealth) -- Kill player(take max damage)
	end
end)
