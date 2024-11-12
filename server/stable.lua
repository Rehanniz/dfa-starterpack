local RSGCore = exports['rsg-core']:GetCoreObject()

RegisterServerEvent('dfa-starterpack:server:GiveHorse', function(Player, stable, model, gender, horsename, active)
    local horseid = GenerateHorseid()
    MySQL.insert('INSERT INTO player_horses(stable, citizenid, horseid, name, horse, gender, active, born) VALUES(@stable, @citizenid, @horseid, @name, @horse, @gender, @active, @born)', {
        ['@stable'] = stable,
        ['@citizenid'] = Player.PlayerData.citizenid,
        ['@horseid'] = horseid,
        ['@name'] = horsename,
        ['@horse'] = model,
        ['@gender'] = gender,
        ['@active'] = active,
        ['@born'] = os.time()
    })
end)

function GenerateHorseid()
    local UniqueFound = false
    local horseid = nil
    while not UniqueFound do
        horseid = tostring(RSGCore.Shared.RandomStr(3) .. RSGCore.Shared.RandomInt(3)):upper()
        local result = MySQL.prepare.await('SELECT COUNT(*) as count FROM player_horses WHERE horseid = ?', { horseid })
        if result == 0 then
            UniqueFound = true
        end
    end
    return horseid
end