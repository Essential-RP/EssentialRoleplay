Config = {}

Config.Blip = {
    {
    title = "Fuel Delivery",
    color = 2,
    id = 750,
    x = 1721.87,
    y = -1557.67,
    z = 112.65,
    },
}

Config.PedType = "a_m_m_ktown_01"

Config.VehicleKeys = 'qb-vehiclekeys' -- qb-vehiclekeys or mk_vehiclekeys

Config.TruckToSpawn = "packer" -- Vehicle MUST be able to pull a large trailer. 

Config.tankerCoords = {
    vector3(1737.1252441406, -1537.6116943359, 112.68978118896),
    vector3(1744.9931640625, -1509.5534667969, 112.82014465332),
    vector3(1748.9940185547, -1498.0612792969, 112.8011932373)
}

Config.TrailerToSpawn = "tanker2" -- Must be a tanker variant, or else the rope will not place in the right position. If this does not bother you, then change to your liking.

Config.PayPerFueling = math.random(450, 600) -- This is multiplied by the amount of refuels the player does. So if they refuel 5 stations, they will get 5*math.random

Config.FuelScript = 'cdn-fuel' -- cdn-fuel or ps-fuel or LegacyFuel

Config.PayType = 'bank' -- Where does the money come from? bank or cash

Config.TruckPrice = 500 -- Cost of the vehicle to pull out

Config.MaxFuelDeliveries = 5 -- Maximum amount of deliveries before they need to return and refuel

Config.PumpLocations = { -- WHEN ADDING NEW STATIONS, THE VECTOR3 MUST BE WHERE YOU WANT TO SPAWN THE REFUEL PROP
    ["1"] = {
        coords = vector3(-57.77, -1774.39, 29.03),
    },
    ["2"] = {
        coords = vector3(-723.21, -909.07, 19.34),
    },
    ["3"] = {
        coords = vector3(-1437.37, -259.18, 46.26),
    },
    ["4"] = {
        coords = vector3(288.48, -1251.04, 29.44),
    },
    ["5"] = {
        coords = vector3(-520.42, -1225.82, 18.45),
    },
    ["6"] = {
        coords = vector3(-2567.13, 2317.27, 33.22),
    },
    ["7"] = {
        coords = vector3(272.56, 2598.52, 44.58),
    },
    ["8"] = {
        coords = vector3(1203.96, 2642.59, 37.84),
    },
    ["9"] = {
        coords = vector3(1778.86, 3320.2, 41.42),
    },
    ["10"] = {
        coords = vector3(1988.74, 3781.08, 32.18),
    },
    ["11"] = {
        coords = vector3(2670.09, 3259.69, 55.24),
    },
    ["12"] = {
        coords = vector3(1695.46, 6428.0, 32.63),
    },
    ["13"] = {
        coords = vector3(-91.0, 6396.47, 31.64),
    },
    ["14"] = {
    coords = vector3(-1830.18, 781.39, 138.33),
    },
    ["15"] = {
    coords = vector3(-992.14, -3034.84, 13.95),
    },
}
