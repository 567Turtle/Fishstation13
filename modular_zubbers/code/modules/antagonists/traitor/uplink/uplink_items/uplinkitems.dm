/obj/item/clothing/head/henchmen_hat/traitor
	name = "armored henchmen cap"
	desc = "Alright boss.. I'll handle it. It seems to be armored."
	icon_state = "/obj/item/clothing/head/henchmen_hat/traitor"
	armor_type = /datum/armor/suit_armor
	greyscale_colors = "#240d0d"

/obj/item/clothing/suit/jacket/henchmen_coat/traitor
	name = "armored henchmen coat"
	desc = "Alright boss.. I'll handle it. It seems to be armored."
	icon_state = "/obj/item/clothing/suit/jacket/henchmen_coat/traitor"
	armor_type = /datum/armor/suit_armor
	greyscale_colors = "#240d0d"

/obj/item/storage/box/syndicate/henchmen_traitor_outfit
	name = "henchmen outfit box"

/obj/item/storage/box/syndicate/henchmen_traitor_outfit/PopulateContents()
	var/static/items_inside = list(
		/obj/item/clothing/head/henchmen_hat/traitor = 1,
		/obj/item/clothing/suit/jacket/henchmen_coat/traitor = 1,
		/obj/item/clothing/under/color/black = 1,
		/obj/item/clothing/gloves/color/light_brown = 1,
		/obj/item/clothing/shoes/laceup = 1,
		/obj/item/switchblade = 1,
	)
	generate_items_inside(items_inside,src)

/obj/item/storage/backpack/duffelbag/henchmen_traitor_outfits
/obj/item/storage/backpack/duffelbag/henchmen_traitor_outfits/PopulateContents()
	var/static/items_inside = list(
		/obj/item/storage/box/syndicate/henchmen_traitor_outfit = 5,
	)
	generate_items_inside(items_inside,src)

