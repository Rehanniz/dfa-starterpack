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
        money = { type = 'cash', amount = 100 },

        givehorse = true,
        horses = {
             stable = 'valentine',
             model = 'A_C_Horse_Shire_RavenBlack',
             gender = 'female',
             active = true
    } 
},
    


    --Example Hunter Pack (No money reward)
    -- ['starter_box_hunter'] = { -- item name
    --     name = 'Hunter Pack',
    --     giveItems = true, -- true / false

    --     items = {
    --         { name = 'meat', amount = 10 }, --Name: item name | Amount: how much money you want to give
    --         { name = 'ammo_rifle', amount = 100 }, --Name: item name | Amount: how much money you want to give
    --         { name = 'weapon_bow', amount = 1 } --Name: item name | Amount: how much money you want to give
    --     },

    --     giveMoney = false, -- true / false
    --     money = { type = 'cash', amount = 0 } --Type: cash / bloodmoney / bank / valbank / rhobank / blkbank / armbank | Amount: how much money you want to give
    -- },
--     givehorse = true, -- true / false
--     horses = {
--          stable = 'valentine', -- colter / vanhorn / rhodes / strawberry / blackwater / tumbleweed / valentine
--          model = 'A_C_Horse_Shire_RavenBlack', -- any horse model https://redlookup.com/peds/?p=1&s=horse
--          gender = 'female', -- Male / Female
--          active = true -- true / false if false they will have to go to stable 
-- } 
}


