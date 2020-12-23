
if game.active_mods["zombiesextended-machines"] then
  for index, force in pairs(game.forces) do
    local technologies = force.technologies
    local recipes = force.recipes

    recipes["stacked-lab-mk1"].enabled = technologies["lab-mk1"].researched
    recipes["stacked-lab-mk2"].enabled = technologies["lab-mk2"].researched
    recipes["stacked-lab-mk3"].enabled = technologies["lab-mk3"].researched
  end    
end