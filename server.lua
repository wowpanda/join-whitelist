--[[
	Devloped by Woopi
]]

-- add the steam id here!
local permission = {
	'steam:1100001097344fb',
}

AddEventHandler("playerConnecting", function()

	local identifier = GetPlayerIdentifiers(source)[1]

	if DoUserHavePermission(identifier) then -- If user has permission let them join
		-- Checks the user ID!
		players = GetPlayers()

		if (#players >= 31) then
			DropPlayer(players[math.random(1,31)], "You have been kicked to make room for an executive") --Edit the string, nothing else!
		end
	end
end)

-- A function to loop thru the permissions table
function DoUserHavePermission(id)
	for k, v in pairs(permission) do
		if id == v then
			return true
		end
	end
	return false
end
