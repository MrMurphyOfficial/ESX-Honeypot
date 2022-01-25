ESX = nil

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(31)
  end
end)


RegisterNetEvent('esx-template:client:fakename')
AddEventHandler('esx-template:client:fakename', function(amount)
    TriggerServerEvent("esx-template:server:fakename", amount, "text")
    TriggerEvent('Notification', src, "You Added " .. amount .. " to your bank")
end)
