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
local function do_keyboard_buygroup()
    local keyboard = {}
    keyboard.inline_keyboard = {
{
    		    		{text = '👤برای خرید  کلیک کنید👤', url = 'https://telegram.me/joinchat/DdQheD8b55zB0jtgDQJWDw'},
	    },
	    {
	    {text = '💚صفحه قبلی💚', callback_data = '!robot'}
        }
    }
    return keyboard
end
local function do_keyboard_private()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '📡چنل ما📡', callback_data = '!channel'},
	    },
		{
	        {text = '📥شروع چت📤', callback_data = '/chat'},
        },
		{
	        {text = '👥درباره ما👥', callback_data = '!aboutus'},
        },
	    {
	        {text = '🤖TeleSurena🤖', callback_data = '!robot'},
        }
    }
    return keyboard
end

local function do_keyboard_startme()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '🙃اینجا کلیک کنید🙃', url = 'https://telegram.me/'..bot.username}
	    }
    }
    return keyboard
end
local function do_keyboard_channel()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
    		{text = '🇮🇷کانال ما🇮🇷', url = 'https://telegram.me/TeleSurenaCH'},
		},
		{
	    {text = '💚صفحه قبلی💚', callback_data = '!home'},
        }
    
    }
    return keyboard
end

local action = function(msg, blocks, ln)
    if blocks[1] == 'aboutus' then
        db:hset('bot:users', msg.from.id, 'xx')
        db:hincrby('bot:general', 'users', 1)
			if msg.chat.type == 'private' or msg.chat.type == 'group' or msg.chat.type == 'supergroup' then
          api.sendKeyboard(msg.chat.id, '*SurenaTeam*\nربات اول ما آقای همه کاره نام داشت و توسط NavidQuick و Dr Cyber نوشته شده بود بعد از آن ربات جدید با نام TeleSurena ساخته شد با سورس جدید و انگلیسی ربات های ما طی اول ما آقای همه کاره زمانی که تنها سه ربات فارسی وجود داشت ربات ما درد درجه سوم بود و الان ربات های فارسی دیگری ساخته شده . رب' ,do_keyboard_aboutus(), true)
                return
        end
    if blocks[1] == 'start' or blocks[1] == 'help' then
        db:hset('bot:users', msg.from.id, 'xx')
        db:hincrby('bot:general', 'users', 1)
        if msg.chat.type == 'private' then
            local message = "*سلام*\n`به ربات پیام رسان Surena تیم خوش آمدید`\n`پیام خود را ارسال کنید`"
            local keyboard = do_keyboard_private()
            api.sendKeyboard(msg.from.id, message, keyboard, true)
            end
			if msg.chat.type == 'group' or msg.chat.type == 'supergroup' then
          api.sendKeyboard(msg.chat.id, 'برای ارسال پیام در پیوی /start را بزنید' ,do_keyboard_startme(), true)
        end
        return
    end
    end
    
    if msg.cb then
        local query = blocks[1]
        local msg_id = msg.message_id
        local text
        if query == 'channel' then
            local text = '📡*کانال ما*📡'
            local keyboard = do_keyboard_channel()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
if query == 'robot' then
            local text = "*سلام*\n`به ربات پیام رسان Surena تیم خوش آمدید`\n`پیام خود را ارسال کنید`"
            local keyboard = do_keyboard_robot()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
if query == 'buygroup' then
            local text = "*سلام*\n`به ربات پیام رسان Surena تیم خوش آمدید`\n`پیام خود را ارسال کنید`"
            local keyboard = do_keyboard_buygroup()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
if query == 'home' then
            local text = "*سلام*\n`به ربات پیام رسان Surena تیم خوش آمدید`\n`پیام خود را ارسال کنید`"
            local keyboard = do_keyboard_private()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
        if query == 'share' then
     api.sendContact(msg.from.id, '+639201472670', 'Tele Surena')
end
    end

end

return {
	action = action,
	triggers = {
	    '^/(start)@TeleSurenaBot$',
	    '^/(start)$',
	    '^/(help)$',
	    '^/(aboutus)$',
	    '^###cb:!(home)',
		'^###cb:!(buygroup)',
	    '^###cb:!(channel)',
	    '^###cb:!(robot)',
	    '^###cb:!(share)',

    }
}
