do
    
function run(msg, matches)
  local help = [[Self-Bot Commands

●+self on
فعال کردن بوت در یک گروه خواص

●+self off
غیر فعال کردن بوت در یک گروه خواض

●#plugins
مشاهده لیست پلاگین ها

●#plugins enable (plugin name)
فعال کردن پلاگینی با نام (plugin name)

●#plugins disable (plugin name)
غیر فعال کردن پلاگینی با نام (plugin name)

●#plugins reload
آپدیت کردن لیست پلاگین ها

●#plugins disable (name) gp
غیر فعال کردن پلاگین (name) در گروه مورد نظر

●#plugins disable (name) gp
فعال کردن پلاگین (name) در گروه مورد نظر

●+addplug (text) (name)
اضافه کردن پلاگینی به محتوای (text)و نام (name) به لیست پلاگین 

●+getplug (name)
ارسال پلاگین با نام (name)

●+setname (name)
تغیر نام گروه به (name)

●+link 
دریافت لینک گروه در پیوی

●+newlink
ساخت لینک جدید

●+super
تبدیل گروه معمولی به سوپر گوه

●+setdes (text)
تغیر دسکریپشن گروه به (text)

●+rmv @username (by reply)
اخراج فردی با آیدی @username (حتی با ریپلای)

●+inv @username (by reply)
ادد کردن فردی با آیدی @username به گروه (حتی با ریپلای)

●+id @username (by reply)
دریافت آیدی عددی فردی با آیدی @username (حتی با ریپلای)

●+gid
دریافت آیدی گروه

●+weather (city)
دریافت اطلاعات آب و هوای شهر (city)

.......................................
⚡🌐
-Electrovirus
.......................................]]
    if matches[1] == 'help' and is_sudo(msg) then
      send_large_msg("user#id"..msg.from.id, help)      
   return 'Check your pv to see bot commands🔖'
    end
end 

return {
  patterns = {
    "^+(help)$"
  },
  run = run
}
end
