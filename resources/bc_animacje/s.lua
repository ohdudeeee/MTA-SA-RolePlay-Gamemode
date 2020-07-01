
--[[

@project: bonecounty-rp.pl
@author: KusseK

]]  

function usunAnimacje(keyPresser)
    setPedAnimation(keyPresser)
    unbindKey(keyPresser, "enter", "down", usunAnimacje)
end

addCommandHandler("/pale", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "shop", "smoke_ryd", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/taniec", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation( plr, "dancing", "dance_loop", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/taniec1", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "dancing", "DAN_Down_A", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/taniec2", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "dancing", "DAN_Left_A", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/taniec3", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "dancing", "DAN_Loop_A", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/taniec4", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "dancing", "DAN_Right_A", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/taniec5", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "dancing", "DAN_Up_A", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/taniec6", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "dancing", "dnce_M_a", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/taniec7", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "dancing", "dnce_M_b", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/taniec8", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "dancing", "dnce_M_c", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/taniec9", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "dancing", "dnce_M_d", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/taniec10", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "dancing", "dnce_M_e", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/diluje", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "gangs", "DEALER_DEAL", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/diluje2", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "gangs", "DEALER_IDLE", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/kupuje", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "gangs", "DRUGS_BUY", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/yo", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "gangs", "hndshkaa", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/yo2", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "gangs", "hndshkcb", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/rozmawiam", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "gangs", "prtial_gngtlkA", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/graffiti", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "graffiti", "spraycan_fire", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/caluje", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "kissing", "Grlfrd_Kiss_01", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/noz", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "knife", "KILL_Knife_Player", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/reanimuje", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "medic", "CPR", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/boksuje", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "ped", "FightA_1", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/boksuje2", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "ped", "FightA_2", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/boksuje3", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "ped", "FightA_3", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/strzelam", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "ped", "gang_gunstand", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/rece", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "ped", "handsup", -1, false, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/scratchuje", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "scratching", "scdrdlp", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/strzelam2", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "shop", "shp_gun_fire", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/strzelam3", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "shop", "shp_gun_threat", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/pale2", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "smoking", "m_smk_drag", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/krzeslo", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "ped", "seat_idle", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/zbieram", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "bomber", "bom_plant_in", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/wskazuje", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "ped", "gang_gunstand", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/chowaj", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "ped", "duck_cower", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/dajepieniadze", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation(plr, "shop", "shp_rob_givecash", -1, true, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/kosz", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation( plr, "bsktball", "bball_jump_shot", -1, false, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/krzeslo2", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation( plr, "attractors", "Stepsit_loop", -1, false, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/naprawiam", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation( plr, "CAR", "Fixn_Car_loop", -1, false, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/spie", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation( plr, "CRACK", "crckidle4", -1, false, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/zmeczony", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation( plr, "FAT", "IDLE_tired", -1, false, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/placze", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation( plr, "GRAVEYARD", "mrnf_loop", -1, false, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/ranny", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation( plr, "CRACK", "crckidle1", -1, false, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/podnosze", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation( plr, "BOMBER", "BOM_Plant_2idle", -1, false, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/zmywam", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation( plr, "INT_HOUSE", "wash_up", -1, false, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/naprawiam2", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation( plr, "COP_AMBIENT", "Copbrowse_nod", -1, false, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/zegarek", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation( plr, "COP_AMBIENT", "Coplook_watch", -1, false, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/zastanawiam", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation( plr, "COP_AMBIENT", "Coplook_think", -1, false, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/stop", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation( plr, "POLICE", "CopTraf_stop", -1, false, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/umieram", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation( plr, "ped", "Floor_hit", -1, false, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/umieram2", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation( plr, "ped", "Floor_hit_f", -1, false, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/telefon", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation( plr, "ped", "phone_talk", -1, false, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("/rozgladamsie", function( plr)
    if isPedInVehicle(plr) == true then
        outputChatBox("Aby użyć animacji wyjdz z pojazdu! ", plr, 255, 255, 255)
        return
    else
        setPedAnimation( plr, "ped", "XPRESSscratch", -1, false, false)
        bindKey(plr, "enter", "down", usunAnimacje)
    end
end)

addCommandHandler("anims", function(plr)
    outputConsole("Animacje: //taniec1, //taniec2, //taniec3, //taniec4, //taniec5, //taniec6, //taniec7, //taniec8, //taniec9, //taniec10, //pale, //pale2 //diluje, //diluje2, //kupuje, //yo, //yo2, //rozmawiam, //graffiti, //caluje, //noz, //reanimuje, //boksuje, //boksuje2, //boksuje3, //strzelam, //rece, //scratchuje, //strzelam2, //strzelam3, //krzeslo, /krzeslo2, //zbieram, //wskazuje, //chowaj, //dajepieniadze, //kosz, /naprawiam, //naprawiam2, /spie, /zmeczony, /placze, //ranny, /podnosze, //zmywam, //zegarek, //zastanawia, //stop, //umieram, //umieram2, //telefon, //rozgladamsie", plr)
end)
