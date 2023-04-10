


TriggerEvent('es:addGroupCommand', 'pedspawner', 'admin', function(source, args, user)
	TriggerClientEvent('EF-spawnpeds:ui', source)
end)