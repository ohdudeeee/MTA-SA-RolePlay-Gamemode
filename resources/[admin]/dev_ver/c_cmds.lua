--[[

@author: ohdude
@project: bonecounty-rp.pl

]]

m = 0

addCommandHandler("m", function()
    if m == 0 then
        m = 1
        showCursor(true)
    else
        m = 0
        showCursor(false)
    end
end)