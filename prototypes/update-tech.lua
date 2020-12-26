
for x, tech in pairs(data.raw["technology"]) do
    if tech.max_level == 'infinite' then
        
        for y, ingredient in pairs(tech.unit.ingredients) do

            data.raw["technology"][x].unit.ingredients[y][1] = "deadlock-stack-" .. data.raw["technology"][x].unit.ingredients[y][1]

        end   
    end
end

--log(serpent.block(tech))


if mods["creative-mod"] then
    
    --UpdateTech("creative-mod_void-technology")

    log(serpent.block(data.raw["technology"]["creative-mod_void-technology"]))

    tech = data.raw["technology"]["creative-mod_void-technology"]

    for y, ingredient in pairs(tech.unit.ingredients) do

        data.raw["technology"][tech.name].unit.ingredients[y].name = "deadlock-stack-" .. data.raw["technology"][tech.name].unit.ingredients[y].name

    end   

end