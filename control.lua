script.on_event({defines.events.on_player_changed_position},
    function (e)
        local surface = game.surfaces[1]
        local p = game.players[e.player_index].position
        
        local existing = surface.get_tile(p).name
        local future = "stone-path"
        
        if existing ~= "refined-concrete" then
            if existing == "concrete" then
                future = "refined-concrete"
            elseif existing == "stone-path" then
                future = "concrete"
            end
            
            if existing ~= "water" then
                surface.set_tiles{{name=future, position=p}}
            end
        end

    end
)

