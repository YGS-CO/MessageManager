local function do_keyboard_robot()
    local keyboard = {}
    local text = "*TeleSurena Github*"
    keyboard.inline_keyboard = {
		{
    		{text = 'Github', url = 'https://github.com/SurenaTeam/PmResan'}
	        },
        }
    return keyboard
end
local action = function(msg, blocks)
        if blocks[1] == 'github' then
            local keyboard = do_keyboard_private()
            send_api_keyboard(get_receiver_api(msg), keyboard, text)
        end
        return
    end
  end
return {
	action = action,
	triggers = {
'^/(github)$'

    }
}
