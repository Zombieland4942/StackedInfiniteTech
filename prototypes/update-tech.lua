
for x, tech in pairs(data.raw["technology"]) do
    if tech.max_level == 'infinite' then
        
        for y, ingredient in pairs(tech.unit.ingredients) do

            local ingredient_name = data.raw["technology"][x].unit.ingredients[y][1]
            
            data.raw["technology"][x].unit.ingredients[y][1] = "deadlock-stack-" .. data.raw["technology"][x].unit.ingredients[y][1]

        end    
    end
end

--log(serpent.block(tech))