Config = {}

Config.Mestokuvanje = {
        mesto1 = {
            name = "mesto1", 
            title = "Burger Shot", -- blip ime
            colour = 17, -- blip boja
            scale = 0.65, -- velicina blipa
            id = 106, -- blip id
            coords = vector3(-1196.24, -900.02, 13.89), -- polyzone kuvanje
            debug = false, -- nista ovo ne diraj
            heading = 345, -- polyzone kuvanje
            width = 5, -- polyzone kuvanje
            length = 1, -- polyzone kuvanje
            event = 'kviki:burgershot1',
           },  
}

Config.Burger = {
[1] = {
label = 'Hamburger',
description = '1x Senf, 1x Meso, 1x Kruh',
event = 'kviki:burger',
items = {
'senf',
'meso',
'kruh'
}
},
[2] = {
label = 'Toast',
description = '1x Senf, 1x Meso, 1x Kruh',
event = 'kviki:burger',
items = {
'senf',
'meso'
}
}
}
