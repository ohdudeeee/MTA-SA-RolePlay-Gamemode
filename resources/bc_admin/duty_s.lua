--[[

@author: ohdude, KusseK
@project: bonecounty-rp.pl

]]

addCommandHandler("duty", function(plr, cmd)
    local wynik = exports["bc_db"]:dbGet("SELECT * FROM admins WHERE serial=?", getPlayerSerial(plr))
    if wynik and #wynik > 0 then
        ranga = wynik[1].rang
        if getElementData(plr, "plr:duty") == false then
            outputChatBox("Wchdodzisz na służbe "..ranga, plr, 255, 255, 255)
            setElementData(plr, "plr:duty_rang", tostring(ranga))
            setElementData(plr, "plr:duty", true)
        else
            outputChatBox("Schodzisz ze służby "..ranga, plr, 255, 255, 255)
            setElementData(plr, "plr:duty", false)
            setElementData(plr, "plr:duty_rang", false)
        end
    else
        return
    end
end)

addEvent("pobierzAdminow", true)
addEventHandler("pobierzAdminow", resourceRoot, function()
    local admini = exports["bc_db"]:dbGet("SELECT * FROM admins", getPlayerSerial(plr))
    triggerClientEvent(gracz, "podajAdminow", resourceRoot, admini)
end)

addCommandHandler("tp", function(plr, cmd, id)
    if getElementData(plr, "plr:duty") == true then
        for _,v in ipairs(getElementsByType("player")) do
            if getElementData(v, "id") == tonumber(id) then
                local x, y, z = getElementPosition(v)
                setElementPosition(plr, x, y+1, z)
                outputChatBox("Przeteleportowałeś się do "..getPlayerName(v), plr, 255, 255, 255)
            end
        end
    else
        return
    end
end)

addCommandHandler("th", function(plr, cmd, id)
    if getElementData(plr, "plr:duty") == true then
        for _,v in ipairs(getElementsByType("player")) do
            if getElementData(v, "id") == tonumber(id) then
                local x, y, z = getElementPosition(plr)
                setElementPosition(v, x, y+1, z)
                outputChatBox("Przeteleportowałeś do siebie "..getPlayerName(v), plr, 255, 255, 255)
            end
        end
    else
        return
    end
end)

addCommandHandler("tp", function(plr, cmd, loc)
    if getElementData(plr, "plr:duty") == true then
        for _,v in ipairs(getElementsByType("player")) do
            if loc == "sf" then
                setElementPosition(plr, -2007.08, 171.46, 27.54)
            end
            if loc == "ls" then
                setElementPosition(plr, 1609.09, -1381.81, 28.59)
            end
            if loc == "lv" then
                setElementPosition(plr, 1801.77, 1621.24, 6.73)
            end
            if loc == "sd" then
                setElementPosition(plr, -206.80, 978.58, 19.06)
            end
            if loc == "os" then
                setElementPosition(plr, -21.67, 1206.22, 19.36)
            end
            if loc == "lp" then
                setElementPosition(plr, -263.42, 2709.28, 62.69)
            end
            if loc == "vo" then
                setElementPosition(plr, -838.58, 2756.76, 45.85)
            end
        end
    else
        return
    end
end)

addCommandHandler("gp", function(plr)
    if getElementData(plr, "plr:duty") == true then
        local x, y, z = getElementPosition(plr)
        local xx = ('%.2f'):format(x)
        local yy = ('%.2f'):format(y)
        local zz = ('%.2f'):format(z)
        outputChatBox(xx..", "..yy..", "..zz, plr)
        local rx, ry, rz = getElementRotation(plr)
        outputChatBox(rx..", "..ry..", "..rz, plr)
    end
end)

addCommandHandler("cv", function(plr, cmd, id)
    if getElementData(plr, "plr:duty_rang") == "Administrator" then
    local x, y, z = getElementPosition(plr)
    createVehicle(id, x+2, y+2, z+2)
    end
end)

addCommandHandler("fix", function(plr, cmd, veh)
    if getElementData(plr, "plr:duty_rang") == "Administrator" then
    local veh = getPedOccupiedVehicle(plr)
    fixVehicle(veh)
    end
end)

addCommandHandler("sp", function(plr, cmd, x, y, z)
    if getElementData(plr, "plr:duty_rang") == "Administrator" then
        setElementPosition(plr, x, y, z)
    end
end)

addCommandHandler("kick", function(plr, cmd, id, powod)
    if getElementData(plr, "plr:duty") == true then
        for _,v in ipairs(getElementsByType("player")) do
            if getElementData(v, "id") == tonumber(id) then
               kickPlayer(v, powod)
            end
        end
    else
        return
    end
end)

addCommandHandler("dim", function(plr, cmd, dimension)
    if getElementData(plr, "plr:duty") == true then
        if getElementData(plr, "plr:duty_rang") == "Administrator" then
            setElementDimension(plr, dimension)
        end
    end
end)
addCommandHandler("inv", function(plr, cmd)
    if getElementData(plr, "plr:duty") == true then
        if getElementData(plr, "plr:duty_rang") == "Administrator" or getElementData(plr, "duty_rang") == "Supporter" then
            local alpha = getElementAlpha(plr)
            if alpha == 0 then
                setElementAlpha(plr,  255)
                setElementData(plr, "plr:nametagshow", false)
            else
                setElementAlpha(plr, 0)
                setElementData(plr, "plr:nametagshow", true)
            end
        end
    end
end)
