
local new_lab_ent = util.table.deepcopy(data.raw["lab"]["lab"])
local new_lab_item = util.table.deepcopy(data.raw["item"]["lab"])
local new_lab_recipe = util.table.deepcopy(data.raw["recipe"]["lab"])

new_lab_ent.name = "stacked-lab"
new_lab_ent.inputs = {"deadlock-stack-automation-science-pack", "deadlock-stack-logistic-science-pack", "deadlock-stack-chemical-science-pack", "deadlock-stack-military-science-pack", "deadlock-stack-production-science-pack", "deadlock-stack-utility-science-pack", "deadlock-stack-space-science-pack"}

new_lab_item.name = "stacked-lab"
new_lab_item.place_result = "stacked-lab"

new_lab_recipe.name = "stacked-lab"
new_lab_recipe.enabled = false
new_lab_recipe.result = "stacked-lab"

table.insert(data.raw["technology"]["space-science-pack"].effects, { type = "unlock-recipe", recipe = "stacked-lab" })

data:extend({ new_lab_ent, new_lab_item, new_lab_recipe })
