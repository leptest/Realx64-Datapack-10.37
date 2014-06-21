function onSay(cid, words, param, channel)
if(param == '') then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Command param required.")
return true
end
if getPlayerLevel(cid) >= 100 then
broadcastMessage("" .. param .. "" , MESSAGE_STATUS_WARNING)
else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You cant broadcast.")
end
return TRUE
end