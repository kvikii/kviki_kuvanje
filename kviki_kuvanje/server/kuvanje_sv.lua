ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj 
end)
print("kviki kao nesto kastm ukro vuletu skriptu")

---------------------------------------------------------------------

ESX.RegisterServerCallback('kviki:burgershot1', function(source,cb,item)
	local xPlayer = ESX.GetPlayerFromId(source)
	-- if xPlayer.getInventoryItem('burger').count >= 1 and xPlayer.getInventoryItem('senf').count >= 1 and xPlayer.getInventoryItem('meso').count >= 1 then
	if xPlayer.getInventoryItem('burger').count >= 1 then
	     xPlayer.removeInventoryItem('burger',1)
		-- xPlayer.removeInventoryItem('senf',1)
		-- xPlayer.removeInventoryItem('meso',1)
    xPlayer.addInventoryItem('burger',1)
		cb(true)
	else
		cb(false)
    xPlayer.showNotification("Nemate dovoljno sastojaka!")
	end
end)


