if onServer() then

function initialize()

end

function getUpdateInterval()
  return 1
end

function updateServer(timestep)
  local time = os.date("*t")
  print("[" .. ("%02d:%02d:%02d"):format(time.hour, time.min, time.sec) .. "] I'm alive", Sector():getCoordinates())
end

end
