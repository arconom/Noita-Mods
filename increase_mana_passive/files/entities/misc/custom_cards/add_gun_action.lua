table.insert(actions,
	{
		id          = "INCREASE_MANA",
		name 		= "Increase Mana",
		description = "Doubles the wand's Max Mana and Mana Recharge",
		sprite 		= "mods/increase_mana_passive/files/entities/misc/custom_cards/mana.png",
		type 		= ACTION_TYPE_PASSIVE,
		spawn_level                       = "0,1,2,3,4,5,6",
		spawn_probability                 = "0.3,0.3,0.3,0.3,0.3,0.3,0.3",
		price = 200,
		mana = 0,
		custom_xml_file = "mods/increase_mana_passive/files/entities/misc/custom_cards/increase_mana.xml",
		action 		= function()
		end,
	}
)
