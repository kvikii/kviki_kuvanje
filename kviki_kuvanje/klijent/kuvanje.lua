ESX	= nil

PlayerData = {}


Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(5000) 
	end


	Citizen.Wait(2000)
	PlayerData = ESX.GetPlayerData()
end)
-------------------------------------------------------------------------------------------------


--- QTARGET ----
Citizen.CreateThread(function()
    for k, v in pairs(Config.Mestokuvanje) do
      exports.qtarget:RemoveZone(v.name.. 'kuvanje')
      exports.qtarget:AddBoxZone(v.name.. 'kuvanje', v.coords, v.width, v.length, {
        name= v.nama,
        heading= v.heading,
        debugPoly= v.debug,
        minZ= v.coords.z -1,
        maxZ= v.coords.z +2,
        }, {
          options = {
            {
              event = v.event,
              icon = "fas fa-sign-in-alt",
              label = "Spremite hranu",
              job = v.job,
            },
          },
          distance = 6.5
      })
    end
  end)



 --- OX_LIB MENU --- MOZETE DA DODAJETE JOS EVENATA I MENIJEVA
  RegisterNetEvent('kviki:kuvanje1', function()
     local table = {}

    for k, v in pairs(Config.Burger) do
        table[#table + 1] = {
            title = 	v.label,
			event = v.event,
			description = v.description
        }

		lib.registerContext({
			id = 'burgershot_menu',
			title = 'Burger Shot',
			options = table
		})
		lib.showContext('burgershot_menu')
    end
  end)



---- BURGER PRAVLJENJE PROGRESS
RegisterNetEvent("kviki:burger", function()
		ESX.TriggerServerCallback('kviki:burgershot1',function(prosao)
				if prosao then
  lib.progressCircle({
		duration = 5000,
		label = 'Pravis burger...',
		useWhileDead = false,
		canCancel = false,
		disable = {
			move = true,
			car = true,
			combat = true,
			mouse = true
		},
		anim = { dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', clip = 'machinic_loop_mechandplayer' },
	}) 
end
end) 
end)




---------------pravljenje blipova
Citizen.CreateThread(function()

    for k, v in pairs(Config.Mestokuvanje) do
      v.blip = AddBlipForCoord(v.coords)
      SetBlipSprite(v.blip, v.id)
      SetBlipDisplay(v.blip, 4)
      SetBlipScale(v.blip, 0.8)
      SetBlipColour(v.blip, v.colour)
      SetBlipAsShortRange(v.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(v.title)
      EndTextCommandSetBlipName(v.blip)
    end
end)

