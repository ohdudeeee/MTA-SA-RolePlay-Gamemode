--[[

@project: bonecounty-rp.pl
z sancity

]]

local default = 128

addEventHandler("onClientResourceStart", getResourceRootElement(), 
	function() 
		for k, v in pairs(getElementsByType("player")) do
			setPedWalkingStyle(v, default)
		end
	end
)

local sprintSpeed = 1
local lastSpaceClick = 0
local sprintClicks = 0
local sprintClicksLimit = 3000

addEventHandler ( "onClientPlayerSpawn", getLocalPlayer(), 
	function ()
		local stat = getPedStat (getLocalPlayer(),22)
	end
)

function onKey (button,press)
	if isCursorShowing () == false and isControlEnabled (button) == true then
		if press == "down" then
			local sprintKey = false
			for i,v in pairs(getBoundKeys ("sprint")) do
				if getKeyState (i) then
					sprintKey = true
					break
				end
			end
			if sprintKey == false then
				setPedControlState ("walk",true)
			end
		else
			local f = false
			local keys = {"forwards","backwards","left","right"}
			for k,v in ipairs(keys) do
				local bound = getBoundKeys (v)
				for i,key in pairs(bound) do
					if getKeyState (i) then
						f = true
						break
					end
				end
			end
			if f == false then
					setPedControlState ("walk",false)
			end
		end
	end
end

addEventHandler ("onClientResourceStart",getResourceRootElement(),
	function ()
		local keys = {"forwards","backwards","left","right"}
		for k,v in ipairs(keys) do
			bindKey (v,"both",onKey)
		end
		bindKey ("walk","both",
			function ()
				setPedControlState ("walk",true)
			end
		)
		bindKey ("sprint","both",
			function (button,press)
				if press == "down" then
					setPedControlState ("sprint",false)
					if isControlEnabled ("sprint") then
						setPedControlState ("walk",false)
					end
					local cTick = getTickCount ()
					local delay = cTick - lastSpaceClick
					if delay <= 500 then
						sprintClicks = sprintClicks+delay
						if sprintClicks < sprintClicksLimit then
							if isControlEnabled ("sprint") then
								setPedControlState ("sprint",true)
							end
						else
							sprintClicks = sprintClicksLimit
							setPedControlState ("sprint",false)
						end
						
					end
					lastSpaceClick = getTickCount ()
				else
					if getTickCount()-lastSpaceClick > 500 then
						setPedControlState ("walk",true)
					else
						lastSpaceClick = getTickCount ()
					end
				end
			end
		)
		setTimer (
			function ()
				local st = false
				local keys = {"forwards","backwards","left","right"}
				for k,v in ipairs(keys) do
					if getPedControlState (v) then
						st = true
						break
					end
				end
				if st then
					local sprintKey = false
					for i,v in pairs(getBoundKeys ("sprint")) do
						if getKeyState (i) then
							sprintKey = true
							break
						end
					end
					local cTick = getTickCount ()
					local delay = cTick-lastSpaceClick
					if delay > 500 then
						if sprintKey == false then
							setPedControlState ("walk",true)
							setPedControlState ("sprint",false)
						else
							setPedControlState ("sprint",false)
							if isControlEnabled ("sprint") == false then
								setPedControlState ("walk",true)
							end
						end
					end
					
				end
			end
		,500,0)
		setTimer (
			function ()
				if sprintClicks > 0 then
					sprintClicks = sprintClicks-100
					if sprintClicks < 0 then
						sprintClicks = 0
					end
				end
			end
		,1000,0)
	end
)

function setElementSpeed(element, unit, speed)
	if (unit == nil) then unit = 0 end
	if (speed == nil) then speed = 0 end
	speed = tonumber(speed)
	local acSpeed = getVehicleSpeed(element, unit)
	if (acSpeed~=false) then
		local diff = speed/acSpeed
		local x,y,z = getElementVelocity(element)
		setElementVelocity(element,x*diff,y*diff,z*diff)
		return true
	end
 
	return false
end