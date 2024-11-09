Config = {}

Config.StarterPacks = {
    -- Basic Starter Pack
    ['starter_box'] = {   --- ITEM NAME 
        name = 'Starter Pack',
        giveItems = true,
        items = {
            { name = 'bread', amount = 5 },
            { name = 'water', amount = 3 },
            { name = 'ammo_arrow', amount = 30 },
            { name = 'weapon_bow', amount = 1 }
        },

        giveMoney = true,
        money = { type = 'cash', amount = 100 }
    },
    


    --Example Hunter Pack (No money reward)
    -- ['starter_box_hunter'] = {
    --     name = 'Hunter Pack',
    --     giveItems = true,

    --     items = {
    --         { name = 'meat', amount = 10 },
    --         { name = 'ammo_rifle', amount = 100 },
    --         { name = 'weapon_bow', amount = 1 }
    --     },

    --     giveMoney = false,
    --     money = { type = 'cash', amount = 0 }
    -- },

}
