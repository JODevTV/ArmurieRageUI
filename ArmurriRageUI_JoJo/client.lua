zESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)


RMenu.Add('example', 'main', RageUI.CreateMenu("Amunation", "Boutique Amunation"))
RMenu.Add('example', 'boisson', RageUI.CreateSubMenu(RMenu:Get('example', 'main'), "Armes Blanches", "Armes Blanches"))
RMenu.Add('example', 'nourriture', RageUI.CreateSubMenu(RMenu:Get('example', 'main'), "Armes Létales", "Armes Létales"))
RMenu.Add('example', 'acces', RageUI.CreateSubMenu(RMenu:Get('example', 'main'), "Accessoires", "Accessoires d'armes"))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('example', 'main'), true, false, true, function()

            RageUI.ButtonWithStyle("Armes Blanches", "Procure toi une ~h~arme blanche", {RightLabel = "→"},true, function()
            end, RMenu:Get('example', 'boisson'))

            RageUI.ButtonWithStyle("Armes Létales", "Procure toi une ~h~arme létale", {RightLabel = "→"},true, function()
            end, RMenu:Get('example', 'nourriture'))

            RageUI.ButtonWithStyle("Accessoires d'armes", "Procure toi des ~h~accessoires pour ton arme", {RightLabel = "→"},true, function()
            end, RMenu:Get('example', 'acces'))
        end, function()
        end)

-------------------------------------------------------------------------------
----------------------------Armes Blanches-------------------------------------
-------------------------------------------------------------------------------

        RageUI.IsVisible(RMenu:Get('example', 'boisson'), true, false, true, function()

            RageUI.ButtonWithStyle("Couteau", "Un couteau bien tranchant  !", {RightLabel = "~o~1500$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('powx_tuto:BuyCouteau170')
                end
            end)


                        RageUI.ButtonWithStyle("Machette", "Une machette bien aiguisée !", {RightLabel = "~o~1000$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('powx_tuto:BuyCouteau171')
                end
            end)

            RageUI.ButtonWithStyle("Batte", "Une batte de baseball bien dur !", {RightLabel = "~o~950$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('powx_tuto:BuyCouteau172')
                      end
                end)

            RageUI.ButtonWithStyle("Poing Américain", "Surprend ton adversaire et couche le !", {RightLabel = "~o~1250$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('powx_tuto:BuyCouteau173')
                      end
                end)

            RageUI.ButtonWithStyle("Lampe Torche", "Aveugle le mec en fasse et tabasse le !", {RightLabel = "~o~650$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('powx_tuto:BuyCouteau174')
                      end
                end)

        end, function()
        end)

-------------------------------------------------------------------------------
-------------------------Accessoires-------------------------------------------
-------------------------------------------------------------------------------

               RageUI.IsVisible(RMenu:Get('example', 'acces'), true, false, true, function()

            RageUI.ButtonWithStyle("Lampe", "Pour aveugler ta cible !", {RightLabel = "~o~550$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('powx_tuto:BuyLampe3')
                end
            end)

            RageUI.ButtonWithStyle("Chargeur", "L'objet indispensable pour te servir de tes armes !", {RightLabel = "~o~1500$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('powx_tuto:BuyChargeur3')
                end
            end)

             RageUI.ButtonWithStyle("Skin de Luxe", "Pour embellir tes armes !", {RightLabel = "~o~3500$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('powx_tuto:BuySkinDeLuxe3')
                      end
                end)

               RageUI.ButtonWithStyle("Silencieux", "Passer à l'acte dans le silence !", {RightLabel = "~o~900$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('powx_tuto:BuySilencieux3')
                      end
                end)

            RageUI.ButtonWithStyle("Poignée", "Permet d'avoir une meilleure prise en main !", {RightLabel = "~o~300$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('powx_tuto:BuyPoignee3')
                      end
                end)


        end, function()
        end)
-------------------------------------------------------------------------------
-------------------------Armes à feu-------------------------------------------
-------------------------------------------------------------------------------

            RageUI.IsVisible(RMenu:Get('example', 'nourriture'), true, true, true, function()

                RageUI.ButtonWithStyle("Pétoire", "Tir des petites balles pour des petits dégats !", {RightLabel = "~o~10 000$"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('powx_tuto:BuyPetoire170')
                    end
                end)

                RageUI.ButtonWithStyle("Pistolet", "Tir des balles assez puissante pour tuer !", {RightLabel = "~o~17 500$"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('powx_tuto:BuyPistolet170')
                    end
                end)
                        
            end, function()

                ---Panels
            end, 1)
    
            Citizen.Wait(0)
        end
    end)



    ---------------------------------------- Position du Menu --------------------------------------------

    local position = {
        {x = 22.07 , y = -1107.16, z = 29.8, },
        {x = -662.78,   y = -934.91,  z = 21.83},
        {x = 810.18,   y = -2157.67,  z = 29.62},
        {x = -330.76,   y = 6083.94,  z = 31.45},
        {x = 252.6,   y = -49.83,  z = 69.94},
        {x = 2568.31,   y = 293.95,  z = 108.21},
        {x = -1118.29,   y = 2698.57,  z = 18.55},
        {x = 841.95,   y = -1033.91,  z = 28.19},
    }   
    
    
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    
            for k in pairs(position) do
    
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
    
                if dist <= 1.0 then

                    ESX.ShowHelpNotification("Appuyez sur [~o~E~w~] pour parler à ~o~Joseph")
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('example', 'main'), not RageUI.Visible(RMenu:Get('example', 'main')))
                    end
                end
            end
        end
    end)

    Citizen.CreateThread(function()
    local hash = GetHashKey("cs_joeminuteman")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVFEMALE", "cs_joeminuteman", 22.45, -1105.41, 28.8, 153.96, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
    SetEntityInvincible(ped, true)
end)

local blips = {
        {title="Amunation", colour=28, id=110, x = 20.94, y = -1108.01, z = 29.8},
        {title="Amunation", colour=28, id=110, x = -662.1,   y = -935.3,  z = 20.8},
    {title="Amunation", colour=28, id=110, x = 810.2,   y = -2157.3,  z = 33.7},
    {title="Amunation", colour=28, id=110, x = -330.2,   y = 6083.8,  z = 30.4},
    {title="Amunation", colour=28, id=110, x = 252.3,   y = -50.0,  z = 68.9},
    {title="Amunation", colour=28, id=110, x = 2567.6,   y = 294.3,  z = 107.7},
    {title="Amunation", colour=28, id=110, x = -1117.5,   y = 2698.6,  z = 17.5},
    {title="Amunation", colour=28, id=110, x = 842.4,   y = -1033.4,  z = 27.1}
  }

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.5)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)