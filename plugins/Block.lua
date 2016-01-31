do
	local function block_user_callback(cb_extra, success, result)
		local user = 'user#id'..result.id
		if success == 0 then
			return "اين يوزر بلوک نميشود"
		end
		block_user(user, cb_ok, false)
	end
end

local function run(msg, matches)
	local user = 'user#id'..matches[1]
	block_user(user, callback, false)
    return "انجام شد"
end

return {
	description = "User Blocker", 
	usage = {
		"block (id) : بلاک افراد",
	},
	patterns = {
		"^[Bb]lock (%d+)$",
	}, 
	run = run,
	privileged = true
}
