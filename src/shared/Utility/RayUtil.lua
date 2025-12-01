local RayUtil = {}

function RayUtil:Cast(origin, direction)
	local params = RaycastParams.new()
	params.FilterType = Enum.RaycastFilterType.Blacklist
	params.FilterDescendantsInstances = {workspace.PlayerCharacters}
	return workspace:Raycast(origin, direction, params)
end

return RayUtil
