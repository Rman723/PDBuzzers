local player = GetPlayerPed(-1)
local dings = 0
local times = 5000 --This changes the wait time between buzzes
local radius = 0
-- Mission Row PD
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
            if GetDistanceBetweenCoords(439.07333374023, -981.12860107422, 30.689603805542, GetEntityCoords(player)) < 0.5 then
                drawTxt('Press ~g~L~s~ to buzz', 2, 1, 0.5, 0.8, 0.6, 255, 255, 255, 255)
            if IsControlJustReleased(1, 182) then
                PlaySoundFromCoord(-1, "DOOR_BUZZ", 439.07333374023, -981.12860107422, 30.689603805542, "MP_PLAYER_APARTMENT", 0, radius, 0)
                dings = dings +1 
                Citizen.Wait(times)
                dings = dings -1

            end
        end
    end
end)
-- Sandy Shores SO
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
            if GetDistanceBetweenCoords(1852.9208984375, 3687.6489257813, 34.276844024658, GetEntityCoords(player)) < 0.5 then
                drawTxt('Press ~g~L~s~ to buzz', 2, 1, 0.5, 0.8, 0.6, 255, 255, 255, 255)
            if IsControlJustReleased(1, 182) then
                PlaySoundFromCoord(-1, "DOOR_BUZZ", 1852.9208984375, 3687.6489257813, 34.276844024658, "MP_PLAYER_APARTMENT", 0, radius, 0)
                dings = dings +1 
                Citizen.Wait(times)
                dings = dings -1

            end
        end
    end
end)
-- Paleto Bay SO
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
            if GetDistanceBetweenCoords(-447.07751464844, 6013.0073242188, 31.716390609741, GetEntityCoords(player)) < 0.5 then
                drawTxt('Press ~g~L~s~ to buzz', 2, 1, 0.5, 0.8, 0.6, 255, 255, 255, 255)
            if IsControlJustReleased(1, 182) then
                PlaySoundFromCoord(-1, "DOOR_BUZZ", -447.07751464844, 6013.0073242188, 31.716390609741, "MP_PLAYER_APARTMENT", 0, radius, 0)
                dings = dings +1 
                Citizen.Wait(times)
                dings = dings -1

            end
        end
    end
end)

function drawTxt(text, font, centre, x, y, scale, r, g, b, a)
    SetTextFont(4)
	SetTextProportional(0)
	SetTextScale(scale, scale)
	SetTextColour(r, g, b, a)
	SetTextDropShadow(0, 0, 0, 0, 255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextCentre(centre)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x, y)
end
