local QBCore = exports['qb-core']:GetCoreObject()
Citizen.CreateThread(function()
	while true do
        -- This is the Application ID (Replace this with you own)
		SetDiscordAppId(1148672872999551098)

        -- Here you will have to put the image name for the "large" icon.
		SetDiscordRichPresenceAsset('erp')
        
        -- (11-11-2018) New Natives:

        -- Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText('EssentialRP')
       
        -- Here you will have to put the image name for the "small" icon.
        SetDiscordRichPresenceAssetSmall('erp')

        -- Here you can add hover text for the "small" icon.
        SetDiscordRichPresenceAssetSmallText('discord.gg/essentialrp')

        QBCore.Functions.TriggerCallback('smallresources:server:GetCurrentPlayers', function(result)
            SetRichPresence('Players: '..result..'/10 Wandering LS')
        end)


        -- (26-02-2021) New Native:

        --[[ 
            Here you can add buttons that will display in your Discord Status,
            First paramater is the button index (0 or 1), second is the title and 
            last is the url (this has to start with "fivem://connect/" or "https://") 
        ]]--
        -- SetDiscordRichPresenceAction(0, "Play", "fivem://connect/localhost:30120")
        -- SetDiscordRichPresenceAction(1, "Discord", "https://discord.gg/essentialrp")

        -- It updates every minute just in case.
		Citizen.Wait(60000)
	end
end)
