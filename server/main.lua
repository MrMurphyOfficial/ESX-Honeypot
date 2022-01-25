ESX = nil

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(31)
  end
end)


RegisterServerEvent('esx-template:server:fakename')
AddEventHandler('esx-template:server:fakename', function(source, amount)
    local src = source
    local Player = ESX.GetPlayerFromId(src)
    TriggerEvent('Notification', src, "You Added " .. amount .. " to your bank")
end)

