local function run(msg, matches ) 
  if matches[1] == "name" then
    return msg.from.print_id
  end
end

return {
  patterns ={
    "^[+](id)$" 
 }, 
  run = run 
}
