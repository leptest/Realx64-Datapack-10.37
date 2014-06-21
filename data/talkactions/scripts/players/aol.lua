function onSay(cid, words, param)

if doPlayerRemoveMoney(cid, 20000) == TRUE then
local bp = doPlayerAddItem(cid, 2173, 1)
doCreatureSay(cid, "You received an Amulet of Loss.", TALKTYPE_ORANGE_1)
else
doCreatureSay(cid, "You dont have enought money, you need 20k.", TALKTYPE_ORANGE_1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
end
end