function onUse(cid, item, fromPosition, itemEx, toPosition)

local tpPos = {x=32712, y=32392, z=13}

        if item.itemid == 1847 then
				doTeleportThing(cid, tpPos)
				doSendMagicEffect(getCreaturePosition(cid),10)
                        end
        end 
