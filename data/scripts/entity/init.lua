local entity = Entity()
if entity.allianceOwned or entity.playerOwned then
    entity:addScriptOnce("data/scripts/entity/SectorManager.lua")
end
