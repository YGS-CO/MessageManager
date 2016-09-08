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
	    {text = '💚صفحه قبلی💚', callback_data = '!home'},
	    }
    }
    return keyboard
end
local function do_keyboard_owners()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = 'Dr.Cyber', url = 'http://telegram.me/DrCyber'},},
			{{text = 'NavidQuick', url = 'http://telegram.me/Navid_Quick'},},
			{{text = 'Mr_Nitro', url = 'http://telegram.me/Mr_Nitro'},},
			{{text = 'Pouria', url = 'http://telegram.me/This_Is_Pouria'},},
			{{text = 'Shaghayegh', url = 'http://telegram.me/Shaghayegh_Quick'},},
			{{text = 'Mehdi', url = 'http://telegram.me/Uconn'},},
			{{text = '💚صفحه قبلی💚', callback_data = '!aboutus'},
	    }
    }
    return keyboard
end
local function do_keyboard_members()
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

local action = function(msg, blocks, ln)
    if blocks[1] == 'aboutus' then
        db:hset('bot:users', msg.from.id, 'xx')
        db:hincrby('bot:general', 'users', 1)
        if msg.chat.type == 'private' then
            local message = "*SurenaTeam*\nربات اول ما آقای همه کاره نام داشت و توسط NavidQuick و Dr Cyber نوشته شده بود بعد از آن ربات جدید با نام TeleSurena ساخته شد با سورس جدید و انگلیسی ربات های ما طی اول ما آقای همه کاره زمانی که تنها سه ربات فارسی وجود داشت ربات ما درد درجه سوم بود و الان ربات های فارسی دیگری ساخته شده . رب"
            local keyboard = do_keyboard_private()
            api.sendKeyboard(msg.from.id, message, keyboard, true)
            end
			if msg.chat.type == 'group' or msg.chat.type == 'supergroup' then
          api.sendKeyboard(msg.chat.id, '*SurenaTeam*\nربات اول ما آقای همه کاره نام داشت و توسط NavidQuick و Dr Cyber نوشته شده بود بعد از آن ربات جدید با نام TeleSurena ساخته شد با سورس جدید و انگلیسی ربات های ما طی اول ما آقای همه کاره زمانی که تنها سه ربات فارسی وجود داشت ربات ما درد درجه سوم بود و الان ربات های فارسی دیگری ساخته شده . رب' ,do_keyboard_aboutus(), true)
        end
        return
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
	'^/(aboutus)',
	    '^###cb:!(aboutus)',
	    '^###cb:!(owners)',
	    '^###cb:!(members)',
    }
}
