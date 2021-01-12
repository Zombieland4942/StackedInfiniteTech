           

function update_science (name)

    if data.raw["item"]["deadlock-stack-" .. name] then

        local science = util.table.deepcopy(data.raw["item"]["deadlock-stack-" .. name])

        data.raw["item"]["deadlock-stack-" .. name] = nil

        science.type = "tool"
        science.durability = settings.startup["deadlock-stack-size"].value
        science.durability_description_key = "description.science-pack-remaining-amount-key"
        science.durability_description_value = "description.science-pack-remaining-amount-value"

        data:extend({ science })

    end    
end

update_science("automation-science-pack")
update_science("logistic-science-pack")
update_science("chemical-science-pack")
update_science("military-science-pack")
update_science("utility-science-pack")
update_science("production-science-pack")
update_science("space-science-pack")

if mods["DeadlockStackingForSchallAlienLoot"] then        
    update_science("alien-science-pack")
end