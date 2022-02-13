-- dofile_once( "data/scripts/lib/utilities.lua" )

function enabled_changed(entity_id, is_enabled)
  if is_enabled and EntityHasTag(EntityGetParent(entity_id), "wand") then
    GamePrint("added to wand")
  end
  EntitySetComponentIsEnabled(entity_id, GetUpdatedComponentID(), false)
end


function addMana(id)
local spellAbilityComponent = EntityGetComponent( id, "AbilityComponent" )

local parent_id = EntityGetParent(id)
parent_id = EntityGetParent(parent_id)
	print("parent " .. parent_id)




-- local max_iterations = 100
-- local counter = 0
-- while ((parent_id ~= 0) and (not EntityHasTag(parent_id, "wand")) and (counter < max_iterations) ) do
	-- parent_id = EntityGetParent(parent_id)
	-- counter = counter + 1
	-- print("parent " .. parent_id)
-- end

-- print("parent after loop " .. parent_id)
if EntityHasTag(parent_id, "wand") then
print("setting mana")

	local wandAbilityComponent = EntityGetComponent( parent_id, "AbilityComponent" )
	spellAbilityComponent.mana_max = wandAbilityComponent.mana_max
	spellAbilityComponent.mana_charge_speed = wandAbilityComponent.mana_charge_speed
end
end
