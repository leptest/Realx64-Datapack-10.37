function onUse(cid, item, fromPosition, itemEx, toPosition)

if getPlayerLevel(cid) >= 20 then
if getPlayerStorageValue(cid, 44480) == -1 then
doPlayerAddItem(cid, 2160, 1)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have found 1 Crystal Coins.")
doSendMagicEffect(getCreaturePosition(cid),28)
setPlayerStorageValue(cid, 44480, 1)
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You already took your reward.")
end
return TRUE
end
end


