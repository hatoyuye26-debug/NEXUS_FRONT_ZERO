local DamageCalc = {}

function DamageCalc:WeaponDamage(player, weapon)
	if weapon == "AR15" then
		return 25
	end
	return 10
end

return DamageCalc
