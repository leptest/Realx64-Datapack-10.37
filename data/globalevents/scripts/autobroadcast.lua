local t, i = {"Welcome to Real Map Server 1037 edited by Darkshaoz. You can change this message in Globalevents."}, 1

function onThink(interval)
    broadcastMessage(t[i], MESSAGE_STATUS_WARNING)
    i = i == #t and 1 or i + 1
    return true
end