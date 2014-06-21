local config = {
--[xxxx] = {
--{ rate = 1, item = 2160, count = { min = 1, max = 2 }},
--{ rate = 2, item = 2400, count = { const = 1 }}
--}

-- gooey mass
[15572] = {
{ rate = 2166, item = 2152, count = { const = 2 }}, --Platinum Coins
{ rate = 2059, item = 15487, count = { const = 1 }}, --larvas
{ rate = 2038, item = 2144, count = { const = 1 }}, -- black pearl
{ rate = 1911, item = 7591, count = { const = 1 }}, -- grat health potion
{ rate = 1656, item = 7590, count = { const = 1 }}, -- great mana potion
{ rate = 85, item = 9971, count = { const = 1 }}, -- gold ingot
{ rate = 85, item = 15546, count = { const = 1 }} -- four leaf clover
},
}

local sumOfRate = {}

for k,v in pairs(config) do
sumOfRate[k] = 0
for k2,v2 in pairs(v) do
sumOfRate[k] = sumOfRate[k] + v2.rate
end
end

function randomGift(itemid)
local rand = math.random(1, sumOfRate[itemid])

local subSum = 0
local exactItem = nil
for i,v in ipairs(config[itemid]) do
if (subSum > rand) then
if (i > 1) then
exactItem = i-1
end
break
end
subSum = subSum + v.rate
if (subSum >= rand) then
exactItem = i
break
end
end

return exactItem
end

function onUse(cid, item, fromPosition, itemEx, toPosition)
local run = false

for k,v in pairs(config) do
if (k == item.itemid) then
run = true
break
end
end

if (not run) then
return false
end

local gift = randomGift(item.itemid)

if (config[item.itemid][gift].count.const ~= nil) then
doPlayerAddItem(cid, config[item.itemid][gift].item, config[item.itemid][gift].count.const)
else
doPlayerAddItem(cid, config[item.itemid][gift].item, math.random(config[item.itemid][gift].count.min, config[item.itemid][gift].count.max))
end

doSendMagicEffect(fromPosition, CONST_ME_GIFT_WRAPS)
doRemoveItem(item.uid, 1)
return true
end