local t = {
    {"Reward for Level 20", {x=32365, y=32239, z=7}, CONST_ME_GIFT_WRAPS},
    {"Reward for Level 50", {x=32373, y=32239, z=7}, CONST_ME_GIFT_WRAPS},
    {"Reward for Level 75", {x=32365, y=32236, z=7}, CONST_ME_GIFT_WRAPS},
    {"Reward for Level 100", {x=32373, y=32236, z=7}, CONST_ME_GIFT_WRAPS}
}

function onThink(interval)
    local people = getOnlinePlayers()
    if #people == 0 then
        return true
    end

    for i = 1, #t do
        local v = t[i]
        doCreatureSay(people[1], v[1], TALKTYPE_ORANGE_1, false, 0, v[2])
        doSendMagicEffect(v[2], v[3])
    end
    return true
end