interval = 3 --ticks
toggle = true
while true do
  redstone.setOutput('left', toggle)
  redstone.setOutput('right', not toggle)
  toggle = not toggle
  os.sleep(interval/20)
end
