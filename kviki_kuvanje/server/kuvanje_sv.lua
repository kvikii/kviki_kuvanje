ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj 
end)
print("kviki kao nesto kastm ukro vuletu skriptu")

---------------------------------------------------------------------

ESX.RegisterServerCallback('kviki:burgershot1', function(source,cb,broj)
	local xPlayer = ESX.GetPlayerFromId(source)
		
for i, itemName in ipairs(Config.Burger[broj]) do
	if xPlayer.getInventoryItem(itemName).count >= 1 then
		cb(true)
	else
		cb(false)
	end
end
end)


