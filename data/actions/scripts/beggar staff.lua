--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==30300 then
queststatus = getPlayerStorageValue(cid,4848)
if queststatus == 1 then
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"Congratulations!")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,6107,1)
setPlayerStorageValue(cid,4848,1)
end
return 0
end
return 1
end
