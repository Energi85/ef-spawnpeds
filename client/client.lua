weapon = false

TriggerEvent( "chat:addSuggestion", "/pedspawner", "(ADMIN) Spawna peds" )


RegisterNUICallback('getweapon', function(data, cb)
    if(weapon==false)
    then
    weapon = true
    print(weapon)
    else
        weapon = false
        print(weapon)
    end
  end)

  RegisterNUICallback('getdata', function(data, cb)

    RequestModel(GetHashKey(data.ped))
    while not HasModelLoaded(GetHashKey(data.ped)) do
        Citizen.Wait(1)
    end


npc = CreatePed(-1, GetHashKey(data.ped), GetEntityCoords((GetPlayerPed(-1))), 0.0, true, true)

if(weapon==true)
then
GiveWeaponToPed(npc, data.weapon, 60, true, true)
SetPedCombatAbility(npc, 100);
SetPedCombatMovement(npc, 1)


end
end)

