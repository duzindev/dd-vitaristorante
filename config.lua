Config = {}

Config.Job = 'vitaristorante'

Config.Stations = {
    Blip = vec3(1533.6459, 3785.894, 33.792667),

    Counter = vec3(1530.8546, 3783.499, 34.666198),
    Storage = vec3(1539.9919, 3790.5148, 34.201835),

    Drinks = vec3(1544.59, 3792.8, 34.42),
    Prep = vec3(1539.7185, 3797.1674, 34.13742),
    Grill = vec3(1538.7172, 3793.0837, 34.669033),
    Dessert = vec3(1542.1501, 3798.281, 34.690238),

    Duty = vec3(1533.6459, 3785.894, 34.792667)
}

Config.Blip = {
    coords = vec3(1533.6459, 3785.894, 33.792667),
    sprite = 455,
    scale = 0.7,
    color = 32,
    label = "La Vita Ristorante"
}

Config.StorageStash = {
    id = 'vita_storage',
    label = 'Estoque do Vita Ristorante',
    slots = 250,
    weight = 500000
}

Config.CounterStash = {
    id = 'vita_counter',
    label = 'Balcão do Vita Ristorante',
    slots = 25,
    weight = 100000
}

Config.ManagerGroups = {
    vitaristorante = true
}


Config.Craft = {
    Prep = {
        {
            item = 'french_fries',
            label = 'Batata Frita',
            ingredients = {
                potato = 2,
                frying_oil = 1
            }
        },
        {
            item = 'shrimp_platter',
            label = 'Porção de Camarão',
            ingredients = {
                shrimp = 2,
                garlic = 1,
                lemon = 1
            }
        }
    },

    Grill = {
        {
            item = 'bacalhau_assado',
            label = 'Bacalhau',
            ingredients = {
                codfish = 1,
                olive_oil = 1,
                potato = 1
            }
        },
        {
            item = 'siri_burger',
            label = 'Hamburguer de Siri',
            ingredients = {
                crab_meat = 1,
                burger_bun = 1,
                lettuce = 1,
                tomato = 1
            }
        },
        {
            item = 'lagosta_grelhada',
            label = 'Lagosta',
            ingredients = {
                lobster_meat = 1,
                butter = 1,
                lemon = 1
            }
        },
        {
            item = 'moqueca_peixe',
            label = 'Moqueca',
            ingredients = {
                goldenfish = 1,
                coconut_milk = 1,
                palm_oil = 1,
                pepper_mix = 1
            }
        },
        {
            item = 'salmao_grelhado',
            label = 'Salmão Grelhado',
            ingredients = {
                salmao = 1,
                herb_mix = 1,
                lemon = 1
            }
        }
    },

    Drinks = {
        {
            item = 'agua_coco',
            label = 'Água de Coco',
            ingredients = {
                coconut = 1
            }
        },
        {
            item = 'margarita',
            label = 'Margarita',
            ingredients = {
                tequila = 1,
                triplsec = 1,
                lemon = 1
            }
        },
        {
            item = 'ecola',
            label = 'Refrigerante',
            ingredients = {
                soda_syrup = 1,
                soda_water = 1
            }
        },
        {
            item = 'ecolalight',
            label = 'Refrigerante sem açucar',
            ingredients = {
                soda_syrup = 1,
                soda_water = 1
            }
        },
        {
            item = 'pinejuice',
            label = 'Suco',
            ingredients = {
                fruit_mix = 2,
                water_bottle = 1
            }
        },
        {
            item = 'housered',
            label = 'Vinho do Porto',
            ingredients = {
                wine = 1,
                bottle_glass = 1
            }
        }
    },

    Desserts = {
        {
            item = 'creme_brulee',
            label = 'Creme Brûlée',
            ingredients = {
                icecreamingred = 1,
                sugar = 1,
                vanilla_pod = 1
            }
        },
        {
            item = 'mouse_maracuja',
            label = 'Mousse de Maracujá',
            ingredients = {
                passionfruit_pulp = 2,
                condensed_milk = 1,
                cream = 1
            }
        },
        {
            item = 'sorvete_taca',
            label = 'Sorvete',
            ingredients = {
                icecreamingred = 1,
                topping_choice = 1
            }
        }
    }
}
