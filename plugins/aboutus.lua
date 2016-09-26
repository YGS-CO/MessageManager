local function do_keyboard_aboutus()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '👤Sudoers👤', callback_data = '!sudoers'},
			},
			{
			{text = '👤Admins👤', callback_data = '!admins'},
			},
			{
	    {text = 'برگشت', callback_data = '!home'},
	    }
    }
    return keyboard
end
local function do_keyboard_sudoers()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '👥Dr.Cyber👥', url = 'http://telegram.me/DrCyber'},},
			{{text = '👥NavidQuick👥', url = 'http://telegram.me/Navid_Quick'},},
			{{text = '👥Mr_Nitro👥', url = 'http://telegram.me/Mr_Nitro'},},
			{{text = '👥Shaghayegh👥', url = 'http://telegram.me/Shaghayegh_Quick'},},
			{{text = '👥Mehdi👥', url = 'http://telegram.me/Uconn'},},
			{{text = 'برگشت', callback_data = '!aboutus'},
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
	    {text = 'برگشت', callback_data = '!aboutus'},
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
	if query == 'sudoers' then
		local keyboard = do_keyboard_owners()
		local text = [[*لیست سودو ها :*]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
	if query == 'admins' then
		local keyboard = do_keyboard_ownerss()
		local text = [[*لیست ادمین ها :*]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
	end
	end
return {
  action = action,
triggers = {
	    '^###cb:!(aboutus)',
	    '^###cb:!(sudoers)',
	    '^###cb:!(admins)',	    
    }
}
