## Click for preview video 
[![preview](https://img.youtube.com/vi/s9tePJI7oMQ/0.jpg)](https://www.youtube.com/watch?v=s9tePJI7oMQ)


## How To Add New Items. (GUIDE)
```lua
    ['starter_box_hunter'] = { -- item name
        name = 'Hunter Pack',
        giveItems = true, -- true / false

        items = {
            { name = 'meat', amount = 10 }, --Name: item name | Amount: how much money you want to give
            { name = 'ammo_rifle', amount = 100 }, --Name: item name | Amount: how much money you want to give
            { name = 'weapon_bow', amount = 1 } --Name: item name | Amount: how much money you want to give
        },

        giveMoney = false, -- true / false
        money = { type = 'cash', amount = 0 } --Type: cash / bloodmoney / bank / valbank / rhobank / blkbank / armbank | Amount: how much money you want to give
        givehorse = true, -- true / false
        horses = {
            stable = 'valentine', -- colter / vanhorn / rhodes / strawberry / blackwater / tumbleweed / valentine
            model = 'A_C_Horse_Shire_RavenBlack', -- any horse model https://redlookup.com/peds/?p=1&s=horse
            gender = 'female', -- Male / Female
            active = true -- true / false if false they will have to go to stable 
        } 
    },
```


### Check Out Our Tebex Store
**Looking for more scripts to enhance your RedM experience? Visit our Tebex store to explore our full collection of scripts!**

## 🔗 [__Visit Our Tebex Store__](https://dfadevelopments.tebex.io)

[![Buy Me a Coffee at ko-fi.com](https://storage.ko-fi.com/cdn/kofi2.png?v=6)](https://ko-fi.com/K3K715WIHX)
