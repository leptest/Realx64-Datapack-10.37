function onUse(cid, item, fromPosition, itemEx, toPosition)

if getPlayerLevel(cid) >= 100 then
if getPlayerStorageValue(cid, 44483) == -1 then
doPlayerAddItem(cid, 2160, 5)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have found 5 Crystal Coins.")
doSendMagicEffect(getCreaturePosition(cid),28)
setPlayerStorageValue(cid, 44483, 1)
broadcastMessage("Congratulations to " .. getPlayerName(cid) .. " for reaching level 100!" , MESSAGE_STATUS_WARNING)
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You already took your reward.")
end
return TRUE
end
end


