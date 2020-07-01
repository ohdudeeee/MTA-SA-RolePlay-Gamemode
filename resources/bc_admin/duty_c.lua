--[[

@author: ohdude
@project: bonecounty-rp.pl

]]

function getPlayersByData(dataName)
    if dataName and type(dataName) == "string" then
	local playersTable = {}
	for i,v in ipairs(getElementsByType("player")) do
	    if getElementData(v, dataName) then
                table.insert(playersTable, v)
	    end
	end
	if #playersTable == 0 then
	    return false
	end
	return playersTable
    else
        return false
    end
end

a = 0
addCommandHandler("a", function()
    if a == 0 then
        a = 1
        local screenW, screenH = guiGetScreenSize()
        box = guiCreateWindow((screenW - 261) / 2, (screenH - 294) / 2, 261, 294, "Administracja online", false)
        guiWindowSetSizable(box, false)

        grid = guiCreateGridList(9, 25, 242, 259, false, box)
        guiGridListAddColumn(grid, "Nick", 0.4)
        guiGridListAddColumn(grid, "ID", 0.1)
        guiGridListAddColumn(grid, "Ranga", 0.4)
        
        local players = getPlayersByData("plr:duty")

        if players then
            for _,v in ipairs(players) do
                guiGridListAddRow(grid, string.gsub(getPlayerName(v),"_", " " ), tostring(getElementData(v, "id")), getElementData(v, "plr:duty_rang"))
            end
        end
    else
        a = 0
        guiSetVisible(box, false)
    end
end)

addCommandHandler("unbw", function(cmd, id)
    if getElementData(localPlayer, "plr:duty") == true then
        for _,v in ipairs(getElementsByType("player")) do
            if getElementData(v, "id") == tonumber(id) then
                if getElementData(v, "plr:bw") == true then
                    setElementData(v, "plr:bw_ame", false)
                    local odresp = exports["bc_bw"]:zrespGracz(v)
                    outputChatBox("Zdjales BW "..getPlayerName(v), 255, 255, 255)
                else
                    return
                end
            end
        end
    else
        return
    end
end)

local sx, sy = guiGetScreenSize()

function putPlayerInPosition(timeslice)
    local cx,cy,cz,ctx,cty,ctz = getCameraMatrix()
    ctx,cty = ctx-cx,cty-cy
    timeslice = timeslice*0.1   
    local tx, ty, tz = getWorldFromScreenPosition(sx / 2, sy / 2, 10)
    if isChatBoxInputActive() or isConsoleActive() or isMainMenuActive () or isTransferBoxActive () then return end 
    if getKeyState("lctrl") then timeslice = timeslice*4 end
    if getKeyState("lalt") then timeslice = timeslice*0.25 end
    local mult = timeslice/math.sqrt(ctx*ctx+cty*cty)
    ctx,cty = ctx*mult,cty*mult
    if getKeyState("2") then abx,aby = abx+ctx,aby+cty end
    if getKeyState("w") then abx,aby = abx+ctx,aby+cty end
    if getKeyState("s") then abx,aby = abx-ctx,aby-cty end
    if getKeyState("a") then  abx,aby = abx-cty,aby+ctx end
    if getKeyState("d") then abx,aby = abx+cty,aby-ctx end
    if getKeyState("space") then  abz = abz+timeslice end
    if getKeyState("lshift") then   abz = abz-timeslice end 
    local x,y = 650,650

    if isPedInVehicle ( getLocalPlayer( ) ) then    
    local vehicle = getPedOccupiedVehicle( getLocalPlayer( ) )
    local angle = getPedCameraRotation(getLocalPlayer ( ))  
    setElementPosition(vehicle,abx,aby,abz)
    setElementRotation(vehicle,0,0,-angle)
    else
    local angle = getPedCameraRotation(getLocalPlayer ( ))  
    setElementRotation(getLocalPlayer ( ),0,0,angle)
    setElementPosition(getLocalPlayer ( ),abx,aby,abz)
    end
end
function toggleAirBrakec()
	toggleAirBrake()
end
	
function toggleAirBrake()
    if getElementData(localPlayer, "plr:duty_rang") == "Administrator" then
        air_brake = not air_brake or nil
        if air_brake then
            
            if isPedInVehicle ( getLocalPlayer( ) ) then
            local vehicle = getPedOccupiedVehicle( getLocalPlayer( ) )
            abx,aby,abz = getElementPosition(vehicle)
            Speed,AlingSpeedX,AlingSpeedY = 0,1,1
            OldX,OldY,OldZ = 0
            setElementCollisionsEnabled ( vehicle, false )
            setElementFrozen(vehicle,true)
            setElementAlpha(getLocalPlayer(),0)
            addEventHandler("onClientPreRender",root,putPlayerInPosition)   
        else
            abx,aby,abz = getElementPosition(localPlayer)
            Speed,AlingSpeedX,AlingSpeedY = 0,1,1
            OldX,OldY,OldZ = 0
            setElementCollisionsEnabled ( localPlayer, false )
            addEventHandler("onClientPreRender",root,putPlayerInPosition)   
        end
        

        else
        if isPedInVehicle ( getLocalPlayer( ) ) then
            local vehicle = getPedOccupiedVehicle( getLocalPlayer( ) )
            abx,aby,abz = nil
            setElementFrozen(vehicle,false)
            setElementCollisionsEnabled ( vehicle, true )
            setElementAlpha(getLocalPlayer(),255)
            removeEventHandler("onClientPreRender",root,putPlayerInPosition)
            else
            abx,aby,abz = nil
            setElementCollisionsEnabled ( localPlayer, true )
            removeEventHandler("onClientPreRender",root,putPlayerInPosition)
            end
        end
    else
        return
    end
end
bindKey("z","down",toggleAirBrakec)