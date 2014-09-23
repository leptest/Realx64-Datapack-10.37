function onSay(cid, words, param, channel)
	if getPlayerGroupId(cid) > 3 then
		for var = 1,2 do
			if var == 1 then
				doBroadcastMessage("Saved.")
			end
			if var == 2 then
				doSaveServer()
			end
		end
	end
	return true
end