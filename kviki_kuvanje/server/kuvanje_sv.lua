ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj 
end)
print("made by kviki#8628 & Sarmingooo#0850")

---------------------------------------------------------------------

ESX.RegisterServerCallback('kviki:burgershot1', function(source,cb,stahoces)
	local xPlayer = ESX.GetPlayerFromId(source)
		
			for _,stahoces in pairs(Config.Burger) do
			for _,itemName in pairs(stahoces.items) do
	if xPlayer.getInventoryItem(itemName).count >= 1 then
		cb(true, stahoces)
	else
		cb(false)
	end
end
end
end)


