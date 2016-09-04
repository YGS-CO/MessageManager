local function do_keyboard_aboutus()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '👤سودو ها👤', callback_data = '!sudoers'},
			},
			{
			{text = '👥ادمین ها👥', callback_data = '!admins'},
			},
			{
	    {text = '🔙صفحه قبلی', callback_data = '!home'},
	    }
    }
    return keyboard
end
local function do_keyboard_sudoers()
    local keyboard = {}
    keyboard.inline_keyboard = {
{
			{text = '●DrCyber●' , url = 'telegram.me/DrCyber'},
			{text = '●NavidQuick●', url = 'telegram.me/NavidQuick'},
			},
			{
			{text = '●Mr.Hamed ice●', url = 'telegram.me/HamedQuick'},
			{text = '●MrNitro●' , url = 'telegram.me/Mr_Nitro'},
			},
		        {
			{text = '●"^([Pp]ouria)$" #BlackLife●', url = 'telegram.me/This_Is_Pouria'},
			{text = '●Soheil●' , url = 'telegram.me/Soheil_MAX'},
			},
		        {
			{text = '●§h@gh@ฯ€gh ฿(●', url = 'telegram.me/Shaghayegh_Quick'},
			{text = '●ლєђ๔เ"( ͡° ͜ʖ﻿ ͡°)" яєρ●' , url = 'telegram.me/Uconn_Quick'},
			},
			{
				{text = '🔙صفحه قبلی', callback_data = '!aboutus'},
	    }
    }
    return keyboard
end
local function do_keyboard_admins()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
			{text = 'َ#AƖιяєzα👑' , url = 'telegram.me/Alirezaw_Tabrizi'},
			{text = 'A.r.a.d', url = 'telegram.me/Win3ton_021'},
			},
			{
			{text = '»»ρσoყα➣ραყԃαɾ««', url = 'telegram.me/Pooya_Paydar'},
			{text = 'MrNitro' , url = 'telegram.me/Mr_Nitro'},
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
	if query == 'sudoers' then
		local keyboard = do_keyboard_owners()
		local text = [[*👤سودو ها👤*]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
	if query == 'admins' then
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
	    '^###cb:!(sudoers)',
	    '^###cb:!(admins)',
    }
}
