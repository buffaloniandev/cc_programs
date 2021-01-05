term.clear()
print("Buffalo buffalo buffalo.")
print("Beginning startup.")

url = "https://raw.githubusercontent.com/buffaloniandev/cc_programs/main/turtles/startup.lua"
path = "/startup.lua"

handle = http.get(url)

if not handle then
  print("Update check failed.")
else
  print("Updating...")
  
  content = handle.readAll()
  handle.close()
  
  handle = fs.open(path, 'w')
  handle.write(content)
  handle.close()
  
  print("Updated.")
end
print("Startup complete.")
