local function run(msg)
  local text = "*Tele Surena Github*"
    local keyboard = {}
    keyboard.inline_keyboard = {
   {
               {text = 'admin', url = 'https://github.com/SurenaTeam/PmResan'},
      },
      {
               {text = '💚صفحه قبلی💚', callback_data = '!home'}
      },
 send_api_keyboard(msg, get_receiver_api(msg), text, keyboard)
  end
return { 
patterns = {
  '^/(github)$',
  '^###cb:!(home)',
}, 
run = run
 }
