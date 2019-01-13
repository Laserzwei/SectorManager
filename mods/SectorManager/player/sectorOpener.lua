if onServer() then
package.path = package.path .. ";data/scripts/lib/?.lua"

require ("stringutility")
require ("utility")

require ("mods/SectorManager/lib/sectorManagerLib")
local config = require ("mods/SectorManager/config/SectorManagerConfig")

-- Don't remove or alter the following comment, it tells the game the namespace this script lives in. If you remove it, the script will break.
-- namespace sectorOpener
sectorOpener = {}


local updateTime = 0

-- const
local player = Player()
local storageString = "loadedSectorList"
local timeBetweenRefresh = 5
local timetoKeep = 300


function sectorOpener.initialize()

end

function sectorOpener.getUpdateInterval()
    return 1
end

function sectorOpener.updateServer(timestep)
    updateTime = updateTime + timestep
    if updateTime > timeBetweenRefresh then
        updateTime = 0
        local l = stringToSectorList(player:getValue(storageString))
        local count = config.maxSectorPerPlayer
        for _,s in ipairs(l) do
            count = count - 1
            if not Galaxy():sectorLoaded(s.x, s.y) then
                t = false
                Galaxy():loadSector(s.x, s.y)
            else
                Galaxy():keepSector(s.x, s.y, timetoKeep)
            end
            if count < 1 then break end
        end
    end
end

end
