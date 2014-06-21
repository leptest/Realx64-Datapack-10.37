function onStepIn(cid, item, pos)
local charPos = getCreaturePosition(cid)
local monkOne
local monkTwo
local monkThree
local monkFour

if(item.actionid == 9005) then
monkOne = {x = charPos.x - 1, y = charPos.y + 0, z = charPos.z}
monkTwo = {x = charPos.x - 1, y = charPos.y - 1, z = charPos.z}
monkThree = {x = charPos.x - 4, y = charPos.y - 1, z = charPos.z}
monkFour = {x = charPos.x - 4, y = charPos.y + 0, z = charPos.z}

else
return true
end

doSummonCreature("Trainer", monkOne)
doSummonCreature("Trainer", monkTwo)
doSummonCreature("Trainer", monkThree)
doSummonCreature("Trainer", monkFour)
return true
end

function onStepOut(cid, item, pos)
local charPos = getCreaturePosition(cid)
local monkOne
local monkTwo
local monkThree
local monkFour

if(item.actionid == 9005) then
monkOne = {x = charPos.x - 2, y = charPos.y + 0, z = charPos.z}
monkTwo = {x = charPos.x - 2, y = charPos.y - 1, z = charPos.z}
monkThree = {x = charPos.x - 5, y = charPos.y - 1, z = charPos.z}
monkFour = {x = charPos.x - 5, y = charPos.y + 0, z = charPos.z}

else
return true
end

doRemoveCreature(getThingfromPos({x = monkOne.x, y = monkOne.y, z = monkOne.z, stackpos = 253}).uid)
doRemoveCreature(getThingfromPos({x = monkTwo.x, y = monkTwo.y, z = monkTwo.z, stackpos = 253}).uid)
doRemoveCreature(getThingfromPos({x = monkThree.x, y = monkThree.y, z = monkThree.z, stackpos = 253}).uid)
doRemoveCreature(getThingfromPos({x = monkFour.x, y = monkFour.y, z = monkFour.z, stackpos = 253}).uid)
doSendMagicEffect(monkOne, 3)
doSendMagicEffect(monkTwo, 3)
doSendMagicEffect(monkThree, 3)
doSendMagicEffect(monkFour, 3)
return true
end