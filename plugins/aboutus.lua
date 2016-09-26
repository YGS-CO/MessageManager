local function do_keyboard_aboutus()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '👤سودو ها👤', callback_data = '!sudo'},
			},
			{
			{text = '👥ادمین ها👥', callback_data = '!admins'},
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
    		{text = 'Dr.Cyber', url = 'http://telegram.me/DrCyber'},},
			{{text = 'NavidQuick', url = 'http://telegram.me/Navid_Quick'},},
			{{text = 'Mr_Nitro', url = 'http://telegram.me/Mr_Nitro'},},
			{{text = 'Pouria', url = 'http://telegram.me/This_Is_Pouria'},},
			{{text = 'Mehdi', url = 'http://telegram.me/Uconn'},},
			{{text = '💚صفحه قبلی💚', callback_data = '!aboutus'},
	    }
    }
    return keyboard
end
local function do_keyboard_admins()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
			{text = 'AƖιяєzα' , url = 'telegram.me/Alirezaw_Tabrizi'},
			},
			{
			{text = '»»ρσoყα➣ραყԃαɾ««'},
			},
			{
	    {text = '💚صفحه قبلی💚', callback_data = '!aboutus'},
        }
    }
    return keyboard
end

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
		local text = [[*👥ادمین ها👥*]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
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
