print("What is the URL for the script?")
print("(e.g. https://example.com/script.lua)\n")
url = read()
handle = http.get(script_url)

if not handle then
  print("Failed to locate script.")
else
  content = handle.readAll()
  handle.close()
  
  print("What is the file path to save the script?")
  print("(e.g. /startup.lua)\n")
  path = read()
  
  handle = fs.open(path, 'w')
  handle.write(content)
  handle.close()
  
  print("Script downloaded to " .. path)
end
