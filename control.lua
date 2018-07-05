script.on_event({defines.events.on_player_changed_position},
    function (e)
        local surface = game.surfaces[1]
        local pos = game.players[e.player_index].position
        
        local existing_tile = surface.get_tile(pos).name
        local future_tile = "stone-path"
        
        if existing_tile ~= "refined-concrete" then
            if existing_tile == "concrete" then
                future_tile = "refined-concrete"
            elseif existing_tile == "stone-path" then
                future_tile = "concrete"
            end
            
            if existing_tile ~= "water" then
                surface.set_tiles{{name=future_tile, position=pos}}
            end
        end

    end
)
