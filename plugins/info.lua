do

function run(msg, matches)
  return "🆔Group id : "..msg.from.id.."\n📑Group name : "..msg.to.title.."\n📃Yourname : "..(msg.from.first_name or '').."\n📃First name : "..(msg.from.first_name or '').."\n📃Last name : "..(msg.from.last_name or '').."\n✳️Your id : "..msg.from.id.."\n🎗Username : @"..(msg.from.username or '').."\n📞Phone number : +"..(msg.from.phone or '')
end
return {
  description = "", 
  usage = "",
  patterns = {
    "^[!/+]info$",
  },
  run = run
}
end
