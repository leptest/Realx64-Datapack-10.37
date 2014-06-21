function onUse(cid, item, fromPosition, itemEx, toPosition)

if getPlayerLevel(cid) >= 50 then
if getPlayerStorageValue(cid, 44481) == -1 then
doPlayerAddItem(cid, 2160, 2)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have found 2 Crystal Coins.")
doSendMagicEffect(getCreaturePosition(cid),28)
setPlayerStorageValue(cid, 44481, 1)
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You already took your reward..")
end
return TRUE
end
end


