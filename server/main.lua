local RSGCore = exports['rsg-core']:GetCoreObject()



local function giveStarterPack(src, packKey)
    local Player = RSGCore.Functions.GetPlayer(src)
    if not Player then return end

    local pack = Config.StarterPacks[packKey]
    if not pack then return end

    local chance = math.random(1, 100)

    if Config.Debug then
        print("Chance: " .. chance)
    end
    
    --- Added Chance System For Horse
    if pack.givehorsechance ~= nil and chance >= pack.givehorsechance then
        if pack.horses then
            -- Added Random Horse Selection From Table If a person wants to add more than one horse...
            local horsesTable = #pack.horses
            local randomTableSelector = math.random(1, horsesTable)
            local horseSelectedTable = pack.horses[randomTableSelector]
            if Config.Debug then
                print("HorseTableSelected: " .. randomTableSelector)
            end
            TriggerClientEvent('dfa-starterpack:client:GiveHorse', src, Player, horseSelectedTable.stable, horseSelectedTable.model, horseSelectedTable.gender, horseSelectedTable.active)
        end
    end

    Player.Functions.RemoveItem(packKey, 1)

    if pack.items then
        for _, item in ipairs(pack.items) do
            Player.Functions.AddItem(item.name, item.amount)
        end
    end

    if pack.money and pack.money.amount > 0 then
        Player.Functions.AddMoney(pack.money.type, pack.money.amount)
    end

    lib.notify(src, { title = 'You have Used ' .. pack.name, type = 'success' })
end

for packKey, _ in pairs(Config.StarterPacks) do
    RSGCore.Functions.CreateUseableItem(packKey, function(source, item)
        local src = source
        giveStarterPack(src, packKey)
    end)
end
