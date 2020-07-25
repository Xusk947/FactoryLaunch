local Team = {}

function Team:new(index, color)
	local team = {
		index = index,
		color = color
	}

	return team
end

return Team