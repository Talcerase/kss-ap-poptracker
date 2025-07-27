local variant = Tracker.ActiveVariantUID

-- Items
Tracker:AddItems("items/items.json")

-- Logic
require("scripts/logic/logic_helper")
require("scripts/logic/logic_main")

-- Maps
Tracker:AddMaps("maps/maps.json")  

-- Locations
Tracker:AddLocations("locations/locations.json")

-- Layout
Tracker:AddLayouts("layouts/abilities.json")
Tracker:AddLayouts("layouts/games.json")
Tracker:AddLayouts("layouts/misc.json")
Tracker:AddLayouts("layouts/tracker.json")
Tracker:AddLayouts("layouts/broadcast.json")

-- AutoTracking for Poptracker
if PopVersion and PopVersion >= "0.26.0" then
    require("scripts/autotracking")
end