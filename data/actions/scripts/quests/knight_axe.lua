function onUse(cid, item, frompos, item2, topos)

local config = {
        storage = 11193, -- change to your own storage value 
        item = 2430, 
		

}

        if getPlayerStorageValue(cid, config.storage) == -1 then
                setPlayerStorageValue(cid, config.storage, 1)
				doPlayerSendTextMessage(cid,18,"You have found a knight axe.")
                key = doPlayerAddItem(cid, config.item, 1) ~= -1
        else
                doPlayerSendTextMessage(cid,18,"The dead human is empty.")
                end
        return TRUE
end