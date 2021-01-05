term.clear()
print("Buffalo buffalo buffalo.")
print("Beginning startup.")
script_url = "https://raw.githubusercontent.com/buffaloniandev/cc_programs/main/turtles/startup.lua"
script_handle = http.get(script_url)
if not script_handle then
  print("Update check failed.")
else
  print("Updating...")
  script_content = script_handle.readAll()
  script_handle.close()
  startup_handle = fs.open("/startup.lua", 'w')
  startup_handle.write(script_content)
  startup_handle.close()
  print("Updated.")
end
print("Startup complete.")
