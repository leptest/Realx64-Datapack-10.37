local config = {
    waters = {18580, 18581, 18582, 18583, 18584, 18585, 18586, 18587, 18588, 18589, 18590, 20230 , 18593 , 18594 , 18595 , 18596 , 18597 , 18598 , 18599 , 18600 , 18601 , 18602 , 18603 , 18604}
}

    function onUse(cid, item, fromPosition, itemEx, toPosition)
    if(isInArray(config.waters, itemEx.itemid)) and (math.random(1,40) <= 1) then
    doPlayerAddItem(cid, 20138)
    doCreatureSay(cid, "You Found a Leech!", TALKTYPE_ORANGE_1)
    return true
    elseif(isInArray(config.waters, itemEx.itemid)) and (math.random(7,10) <= 7) then
    doPlayerAddItem(cid, 2817)
    doCreatureSay(cid, "Again dead snake?! Again? I guess I'll have to dig more!", TALKTYPE_ORANGE_1)
    return true
    elseif(isInArray(config.waters, itemEx.itemid)) and (math.random(2,10) <= 2) then
    doPlayerAddItem(cid, 2817)
    doCreatureSay(cid, "You Found a Small Diamond!", TALKTYPE_ORANGE_1)
    return true
    end

    return true
    end