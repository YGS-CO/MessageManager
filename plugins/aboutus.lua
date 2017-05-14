local function do_keyboard_aboutus()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '👤سودو ها👤', callback_data = '!sudo'},
			},
			{
			{text = '👤ادمین ها👤', callback_data = '!admins'},
			},
			{
	    {text = '💚صفحه قبلی💚', callback_data = '!home'},
	    }
    }
    return keyboard
end
local function do_keyboard_sudo()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '👤Wolf is dev👤', url = 'http://telegram.me/DevWolf'},},
			{{text = '💚صفحه قبلی💚', callback_data = '!aboutus'},
	    }
    }
    return keyboard
end
local function do_keyboard_admins()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
			{text = '👤Nazi👤' , url = 'telegram.me/NaziJon76'},
			},
			{
	    {text = '💚صفحه قبلی💚', callback_data = '!aboutus'},
        }
    }
    return keyboard
end
local action = function(msg,blocks)
local msg_id = msg.message_id
local chat = msg.chat.id
local query = blocks[1]
    if msg.cb then
if query == 'aboutus' then
		local keyboard = do_keyboard_aboutus()
		local text = [[*لطفا انتخاب کنید*]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
	if query == 'sudo' then
		local keyboard = do_keyboard_sudo()
		local text = [[*👤سودو ها👤*]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
	if query == 'admins' then
		local keyboard = do_keyboard_admins()
		local text = [[*👤ادمین ها👤*]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
	end
	end
return {
  action = action,
triggers = {
	    '^###cb:!(aboutus)',
	    '^###cb:!(admins)',
	    '^###cb:!(sudo)',
    }
}
