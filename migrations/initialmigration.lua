
for index, force in pairs(game.forces) do
  local technologies = force.technologies
  local recipes = force.recipes

  recipes["stacked-lab"].enabled = technologies["space-science-pack"].researched
end