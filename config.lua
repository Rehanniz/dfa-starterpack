Config = {}

-- For Debuging Purpose
Config.Debug = false

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
        givehorsechance = 50, -- if you want to disable this change it to nil
        horses = {
            {
                stable = 'valentine',
                model = 'A_C_Horse_Shire_RavenBlack',
                gender = 'female',
                active = true
            },
            {
                stable = 'valentine',
                model = 'A_C_Horse_Shire_RavenBlack',
                gender = 'female',
                active = true
            },
        } 
    },
}



