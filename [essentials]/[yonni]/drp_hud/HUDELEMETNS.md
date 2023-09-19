RegisterCommand('movehud', function()

    HUD:MoveHud(true)

end)

RegisterNUICallback('stopMovingHud', function(_, cb)
    HUD:MoveHud(false)
    cb('ok')
end)

RegisterCommand("resethud", function(source, args, rawCommand) 

    SendReactMessage('setHudPosition', { x = 0, y = 0 })
    
end, false)

    --[[MovingHud = false,

    MoveHud = function(self, state)

        local newState = state or not self.MovingHud

        SetNuiFocus(newState, newState)
        SendReactMessage('setMovingHud', newState)

        self.MovingHud = newState

        if not newState then
          QBCore.Functions.Notify(Lang:t("notify.move_sucess"), "success")
        return 
        end
        QBCore.Functions.Notify(Lang:t("notify.move_info"), "primary")

    end,]]

        GetHudWeapon = function(self)

        local PED_WEAPON_HASH = GetSelectedPedWeapon(PlayerPedId())

        for index, data in ipairs(self.WEAPON_LIST) do

            if(tonumber(data.WEAPON_HASH) == PED_WEAPON_HASH) then 

                return data.IMAGE_NAME

            end

        end

    end,