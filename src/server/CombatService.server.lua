local Rep = game:GetService("ReplicatedStorage")
local Shared = Rep:WaitForChild("NEXUS_SHARED")
local Net = Shared:WaitForChild("Net")
local Shoot = Net:WaitForChild("Shoot")

local RayUtil = require(Shared.Utility.RayUtil)
local DamageCalc = require(Shared.Modules.DamageCalc)

Shoot.OnServerEvent:Connect(function(plr)
	local char = plr.Character
	if not char then return end

	local origin = char.Head.Position
	local dir = char.Head.CFrame.LookVector * 300
	local result = RayUtil:Cast(origin, dir)

	if result then
		local enemy = result.Instance:FindFirstChild("Enemy")
		if enemy then
			local dmg = DamageCalc:WeaponDamage(plr, "AR15")
			enemy:TakeDamage(dmg)
		end
	end
end)
