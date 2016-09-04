local function do_keyboard_robot()
    local keyboard = {}
    keyboard.inline_keyboard = {
		{
    					{text = '🤖شماره ربات🤖', callback_data = '!share'},
    					},
    					{
    		    		{text = '💶خرید گروه💶', callback_data = '!buygroup'},
    		    		{text = '👥پشتیبانی👥', url = 'https://telegram.me/joinchat/DdQheD8b55zB0jtgDQJWDw'},
	    },
	    {
	    {text = '💚صفحه قبلی💚', callback_data = '!home'}
        }
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
