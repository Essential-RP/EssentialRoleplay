-- ======= DO NOT EDIT THIS FILE ======= --

if TLS.Glasses.Enable then
    RegisterCommand(TLS.Glasses.Command, function()
        local playerPed = PlayerPedId()
        local currentGender, currentGlasses, currentTexture = TLS.Functions.GetPlayerGender(playerPed), TLS.Functions.GetPlayerDrawable(playerPed, 1, true)
        for k, v in ipairs(TLS.Glasses[currentGender]) do
            if v.mainComponent == currentGlasses then
                if v.Enable then
                    RequestAnimDict('clothingspecs')
                    while not HasAnimDictLoaded('clothingspecs') do
                        Wait(10)
                    end
                    TaskPlayAnim(playerPed, 'clothingspecs', 'take_off', 3.0, 3.0, -1, 49, 0, 0, 0, 0)
                    Wait(500)
                    SetPedPropIndex(playerPed, 1, v.newComponent, currentTexture, 0)
                    Wait(500)
                    ClearPedTasks(playerPed)
                    RemoveAnimDict('clothingspecs')
                    break
                end
            end
        end
    end, false)
    
    RegisterKeyMapping(TLS.Glasses.Command, TLS.Glasses.Label, 'keyboard', TLS.Glasses.Keybind)
end
