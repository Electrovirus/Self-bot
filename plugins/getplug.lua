do

local function run(msg, matches)
  if matches[1]:lower() == "getplug" then
    local file = matches[2]
    if is_sudo(msg) then
      local receiver = get_receiver(msg)
      return ">پلاگین "..matches[2].."  :"
      send_document(receiver, "./plugins/"..file..".lua", ok_cb, false)
    end
  end
end

return {
  patterns = {
  "^([Gg]etplug) (.*)$"
  },
  run = run
}
end
