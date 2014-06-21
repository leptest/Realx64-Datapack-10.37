local config = {
message = "Congrulations. Teleport close in 1 minute",
timeToRemove = 60, -- seconds
teleportId = 1387,
bosses = {
["Scorn of the Emperor"] = { x = 33084, y = 31117, z = 15 },

}
}

local function removal(position)
doRemoveItem(getTileItemById(position, config.teleportId).uid, 1)
return TRUE
end

function onDeath(cid, corpse, killer)
registerCreatureEvent(cid, "teleportmonster")
local position = getCreaturePosition(cid)

for name, pos in pairs(config.bosses) do
if name == getCreatureName(cid) then
teleport = doCreateTeleport(config.teleportId, pos, position)
doCreatureSay(cid, config.message, TALKTYPE_ORANGE_1)
addEvent(removal, config.timeToRemove * 1000, position)
doSendMagicEffect(position,10)
end
end
return TRUE
end