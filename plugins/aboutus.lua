local function do_keyboard_aboutus()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '👤سودو ها👤', callback_data = '!owners'},
			},
			{
			{text = '👥ادمین ها👥', callback_data = '!members'},
			},
			{
	    {text = '🔙صفحه قبلی', callback_data = '!home'},
	    }
    }
    return keyboard
end
local function do_keyboard_owners()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '● AmirHo3inF ●', url = 'http://telegram.me/amirho3inf'},},
			{{text = '● FasT ReaCtoR ●', url = 'http://telegram.me/fastreactor'},},
			{{text = '● NariMan Master ●', url = 'http://telegram.me/Nawr_i_man'},},
			{{text = '🔙صفحه قبلی', callback_data = '!aboutus'},
	    }
    }
    return keyboard
end
local function do_keyboard_members()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
			{text = '● Amir SbsS ●' , url = 'telegram.me/amir_h'},
			{text = '● Mr Jan123 ●', url = 'telegram.me/i_am_jan123'},
			},
			{
			{text = '● MehdiHS ●', url = 'telegram.me/mehdihs'},
			{text = '● ThisisAmirh ●' , url = 'telegram.me/mr_amirh'},
			{text = '● M.G.Z ●' , url = 'telegram.me/M_G_Z'},
			},
			{
			{text = '● MrHaliX ●' , url = 'telegram.me/mrhalix'},
			{text = '● The PoKeR ●', url = 'telegram.me/UnFriendlly'},
			},
			{
			{text = '● AmircC ●', url = 'telegram.me/Amircc_CreeD'},
			{text = '● PuKeR ●', url = 'telegram.me/pukers'},
			{text = '● PediW ●', url = 'telegram.me/pediw'},
			},
			{
			{text = '● IDeaCtiVe ●', url = 'telegram.me/Ideactive'},
			{text = '● YellowHat ●', url = 'telegram.me/yellowhat'},
			},
			{
	    {text = '🔙صفحه قبلی', callback_data = '!aboutus'},
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
		local text = [[لطفا انتخاب کنید]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
	if query == 'owners' then
		local keyboard = do_keyboard_owners()
		local text = [[*👤سودو ها👤*]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
	if query == 'members' then
		local keyboard = do_keyboard_members()
		local text = [[*👥ادمین ها👥*]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
	end
	end
return {
  action = action,
triggers = {
	    '^###cb:!(aboutus)',
	    '^###cb:!(owners)',
	    '^###cb:!(members)',
    }
}
