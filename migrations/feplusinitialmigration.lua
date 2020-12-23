
if game.active_mods["FactorioExtended-Plus-Machines"] then
  for index, force in pairs(game.forces) do
    local technologies = force.technologies
    local recipes = force.recipes
    
    recipes["stacked-lab-mk2"].enabled = technologies["mechanical-engineer"].researched
    recipes["stacked-lab-mk3"].enabled = technologies["mechanical-engineer-2"].researched
  end    
end