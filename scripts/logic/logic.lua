ScriptHost:LoadScript("scripts/autotracking/archipelago.lua")

function has(item, amount)
    local count = Tracker:ProviderCountForCode(item)
    amount = tonumber(amount)
    if not amount then
        return count > 0
    else
        return count >= amount
    end
end

-- Gold Counter

function goldCount()
    return Tracker:ProviderCountForCode("Gold")
end

-- TGCO Access Rules
function canReachArea(target_area)
    if CRYSTAL_GATE then
        current_gold_count = goldCount()
        if CRYSTAL_GATE > current_gold_count then
            canReachArea("crystal") = false
        else
            canReachArea("crystal") = true
        end
    end
    if OLD_TOWER_GATE then
        current_gold_count = goldCount()
        if OLD_TOWER_GATE > current_gold_count then
            canReachArea("old_tower") = false
        else
            canReachArea("old_tower") = true
        end
    end
    if GARDEN_GATE then
        current_gold_count = goldCount()
        if GARDEN_GATE > current_gold_count then
            canReachArea("garden") = false
        else
            canReachArea("garden") = true
        end
    end
    if ESCAPE_GATE then
        current_gold_count = goldCount()
        if ESCAPE_GATE > current_gold_count then
            canReachArea("escape") = false
        else
            canReachArea("escape") = true
        end
    end
end
