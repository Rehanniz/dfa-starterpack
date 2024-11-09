local RSGCore = exports['rsg-core']:GetCoreObject()

local function giveStarterPack(src, packKey)
    local Player = RSGCore.Functions.GetPlayer(src)
    if not Player then return end

    local pack = Config.StarterPacks[packKey]
    if not pack then return end

    Player.Functions.RemoveItem(packKey, 1)

    if pack.items then
        for _, item in ipairs(pack.items) do
            Player.Functions.AddItem(item.name, item.amount)
        end
    end

    if pack.money and pack.money.amount > 0 then
        Player.Functions.AddMoney(pack.money.type, pack.money.amount)
    end

        lib.notify(src, { title = 'You have Used '..pack.name, type = 'success' })
end

for packKey, _ in pairs(Config.StarterPacks) do
    RSGCore.Functions.CreateUseableItem(packKey, function(source, item)
        local src = source
        giveStarterPack(src, packKey)
    end)
end
