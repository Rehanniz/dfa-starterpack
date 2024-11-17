## Click for preview video 
[![preview](https://img.youtube.com/vi/s9tePJI7oMQ/0.jpg)](https://www.youtube.com/watch?v=s9tePJI7oMQ)


## How To Create New Item ( GUIDE )
```lua
    ['starter_box_hunter'] = {   --- ITEM NAME 
        name = 'Starter Pack Hunter', -- Pack Name
        giveItems = true,
        items = {
            { name = 'bread', amount = 5 }, -- item name / amount 
            { name = 'water', amount = 3 },
            { name = 'ammo_arrow', amount = 30 },
            { name = 'weapon_bow', amount = 1 }
        },

        giveMoney = true,
        money = { type = 'cash', amount = 100 }, -- cash / bank / bloodmoney

        givehorse = true,
        givehorsechance = 50, -- if you want to disable this change it to nil
        horses = { -- If there is more than one horse, It will assign a random horse to the player.
            {
                stable = 'valentine', -- colter / vanhorn / saintdenis / rhodes / valentine / strawberry / blackwater / tumbleweed
                model = 'A_C_Horse_Shire_RavenBlack', -- Find more horses here: https://redlookup.com/peds/?p=1&s&at
                gender = 'female', -- male / female
                active = true -- true / false
            },
            {
                stable = 'rhodes', -- colter / vanhorn / saintdenis / rhodes / valentine / strawberry / blackwater / tumbleweed
                model = 'a_c_horse_americanpaint_greyovero', -- Find more horses here: https://redlookup.com/peds/?p=1&s&at
                gender = 'female', -- male / female
                active = true -- true / false
            },
        } 
    },
```

### Check Out Our Tebex Store
**Looking for more scripts to enhance your RedM experience? Visit our Tebex store to explore our full collection of scripts!**

## 🔗 [__Visit Our Tebex Store__](https://dfadevelopments.tebex.io)

[![Buy Me a Coffee at ko-fi.com](https://storage.ko-fi.com/cdn/kofi2.png?v=6)](https://ko-fi.com/K3K715WIHX)
