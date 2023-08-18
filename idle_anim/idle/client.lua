Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local playerPed = PlayerPedId()

        if DoesEntityExist(playerPed) and not IsEntityDead(playerPed) then
            RequestAnimDict("move_m@generic_idles@std") 
            if HasAnimDictLoaded("move_m@generic_idles@std") then
                TaskPlayAnim(playerPed, "move_m@generic_idles@std", "idle", 8.0, -8, -1, 49, 0, false, false, false)
            end
        end
    end
end)


