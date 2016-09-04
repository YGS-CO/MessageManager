local function do_keyboard_robot()
    local keyboard = {}
    keyboard.inline_keyboard = {
		{
    		{text = 'Github', url = 'https://github.com/SurenaTeam/PmResan'}
	        },
        }
    return keyboard
end
local action = function(msg, blocks, ln)
        if blocks[1] == 'github' then
            local keyboard = do_keyboard_private()
            send_api_keyboard(get_receiver_api(msg), keyboard)
        end
        return
    end
  end
end

return {
	action = action,
	triggers = {
'^/(github)$'

    }
}
