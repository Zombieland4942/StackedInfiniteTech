function setupLab(baseName,newName)
    
    local new_lab_ent = util.table.deepcopy(data.raw["lab"][baseName])
    local new_lab_item = util.table.deepcopy(data.raw["item"][baseName])
    local new_lab_recipe = util.table.deepcopy(data.raw["recipe"][baseName])

    new_lab_ent.name = newName
    new_lab_ent.inputs = {"deadlock-stack-automation-science-pack", "deadlock-stack-logistic-science-pack", "deadlock-stack-chemical-science-pack", "deadlock-stack-military-science-pack", "deadlock-stack-production-science-pack", "deadlock-stack-utility-science-pack", "deadlock-stack-space-science-pack"}
    new_lab_ent.minable.result = newName

    new_lab_item.name = newName
    new_lab_item.place_result = newName
    
    new_lab_item.icons = { 
        { icon = new_lab_item.icon, icon_size = new_lab_item.icon_size, icon_mipmaps = new_lab_item.icon_mipmaps }, 
        { icon = "__StackedInfiniteTech__/graphics/constant-capacity.png", icon_size = 64 } 
    }

    new_lab_recipe.name = newName
    new_lab_recipe.enabled = false
    new_lab_recipe.result = newName

    if mods["DeadlockStackingForSchallAlienLoot"] then        
        table.insert(new_lab_ent.inputs, "deadlock-stack-alien-science-pack")
    end

    data:extend({ new_lab_ent, new_lab_item, new_lab_recipe })
    
end

setupLab("lab", "stacked-lab")
table.insert(data.raw["technology"]["space-science-pack"].effects, { type = "unlock-recipe", recipe = "stacked-lab" })

if mods["zombiesextended-machines"] then
    setupLab("lab-mk1", "stacked-lab-mk1")
    table.insert(data.raw["technology"]["lab-mk1"].effects, { type = "unlock-recipe", recipe = "stacked-lab-mk1" })

    setupLab("lab-mk2", "stacked-lab-mk2")
    table.insert(data.raw["technology"]["lab-mk2"].effects, { type = "unlock-recipe", recipe = "stacked-lab-mk2" })

    setupLab("lab-mk3", "stacked-lab-mk3")
    table.insert(data.raw["technology"]["lab-mk3"].effects, { type = "unlock-recipe", recipe = "stacked-lab-mk3" })
end

if mods["FactorioExtended-Plus-Machines"] then
    setupLab("lab-mk2", "stacked-lab-mk2")
    table.insert(data.raw["technology"]["mechanical-engineer"].effects, { type = "unlock-recipe", recipe = "stacked-lab-mk2" })

    setupLab("lab-mk3", "stacked-lab-mk3")
    table.insert(data.raw["technology"]["mechanical-engineer-2"].effects, { type = "unlock-recipe", recipe = "stacked-lab-mk3" })
end
