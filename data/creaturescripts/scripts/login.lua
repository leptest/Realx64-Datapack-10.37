function onLogin(cid)
	local player = Player(cid)

	local loginStr = "Welcome to " .. configManager.getString(configKeys.SERVER_NAME) .. "!"
	if player:getLastLoginSaved() <= 0 then
		loginStr = loginStr .. " Please choose your outfit."
		player:sendOutfitWindow()
	else
		if loginStr ~= "" then
			player:sendTextMessage(MESSAGE_STATUS_DEFAULT, loginStr)
		end

		loginStr = string.format("Your last visit was on %s.", os.date("%a %b %d %X %Y", player:getLastLoginSaved()))
	end
	player:sendTextMessage(MESSAGE_STATUS_DEFAULT, loginStr)

  player:registerEvent("PlayerDeath")
	player:registerEvent("Tirecz")
	player:registerEvent("inquisitionPortals")
	player:registerEvent("fury")
	player:registerEvent("wrath")
	player:registerEvent("scorn")
	player:registerEvent("spite")
	player:registerEvent("snake")
	player:registerEvent("Azerus")
	player:registerEvent("Vesperoth")
	player:registerEvent("demonOakLogout")
	player:registerEvent("demonOakDeath")
	player:registerEvent("bosseswarzone")
	player:registerEvent("tasks")
	player:registerEvent("PythiusTheRotten")
	return true
end
