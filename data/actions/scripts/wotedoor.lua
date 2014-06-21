function onUse(cid, item, fromPosition, itemEx, toPosition)

	
for i = 1855, 1856 do

		
if getPlayerStorageValue(cid, 1855) > 0 then

			
return doTeleportThing(cid, toPosition, true)

		
end

	
end

	

	
return doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It seems this door is sealed against unwanted intruders.")

end