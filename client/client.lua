local horseName
RegisterNetEvent("dfa-starterpack:client:GiveHorse", function(Player, stable, model, gender, active)
    horseName = lib.inputDialog('Horse', {
        {type = 'input', label = 'Horse Name', required = true},
    })

    if not horseName or #horseName == 0 then
        horseName = {'FREE HORSE'}
    end

    TriggerServerEvent('dfa-starterpack:server:GiveHorse', Player, stable, model, gender, horseName[1], active)
    if active then 
        lib.notify({ title = "🐴Your New Horse Awaits! Call Him with a Whistle!",  type = 'success', duration = 5000  })
    else
        lib.notify({ title = "🐴You've Got a New Horse! Check Your Stable!",  type = 'success', duration = 5000  })
    end
end)
