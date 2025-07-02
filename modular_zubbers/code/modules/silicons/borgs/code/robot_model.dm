// The actual code to work these in
// Bubberstation custom borg sprites, to add new defines for icons and hat offsets go to code\_DEFINES\~~bubber_defines.dm

/* Centcom Cyborgs */

/obj/item/robot_model/centcom
	name = "Central Command"
	basic_modules = list(
		/obj/item/assembly/flash/cyborg,
		/obj/item/pen/cyborg,
		/obj/item/clipboard/cyborg,
		/obj/item/hand_labeler/cyborg,
		/obj/item/stamp/centcom,
		/obj/item/borg/paperplane_crossbow,
		/obj/item/weldingtool/mini,
		/obj/item/megaphone/command,
		/obj/item/paint/anycolor/cyborg,
		/obj/item/soap/nanotrasen/cyborg,
		/obj/item/borg/cyborghug/medical,
		/obj/item/borg/lollipop,
		/obj/item/reagent_containers/borghypo/centcom,
		/obj/item/extinguisher/mini,
		/obj/item/borg/apparatus/paper_manipulator,
		/obj/item/screwdriver/cyborg,
		/obj/item/crowbar/cyborg,
		/obj/item/picket_sign/cyborg,
		/obj/item/borg/stun,
	)
	radio_channels = list(RADIO_CHANNEL_CENTCOM, RADIO_CHANNEL_COMMAND)
	model_traits = list(TRAIT_PUSHIMMUNE, TRAIT_NOFLASH)
	emag_modules = list(
		/obj/item/reagent_containers/spray/cyborg_lube,
		/obj/item/paperplane/syndicate/hardlight
	)

/obj/item/robot_model/centcom/rebuild_modules()
	..()
	var/mob/living/silicon/robot/cyborg = loc
	cyborg.scrambledcodes = TRUE
	cyborg.req_access = list(ACCESS_CENT_GENERAL)
	cyborg.faction |= ROLE_DEATHSQUAD //You're part of CENTCOM now

/obj/item/robot_model/centcom/remove_module(obj/item/removed_module, delete_after)
	..()
	var/mob/living/silicon/robot/cyborg = loc
	cyborg.scrambledcodes = FALSE
	cyborg.req_access = list(ACCESS_ROBOTICS)
	cyborg.faction -= ROLE_DEATHSQUAD //You're no longer part of CENTCOM

/* Research cyborgs */

/obj/item/robot_model/sci
	name = "Research"
	basic_modules = list(
		/obj/item/assembly/flash/cyborg,
		/obj/item/extinguisher,
		/obj/item/weldingtool/largetank/cyborg,
		/obj/item/borg/cyborg_omnitool/research, // A modded engineering omitool.
		/obj/item/borg/cyborghug/medical, // You can now hug and fix synths :3c
		/obj/item/multitool/cyborg,
		/obj/item/screwdriver/cyborg/power,
		/obj/item/crowbar/cyborg/power,
		/obj/item/analyzer,
		/obj/item/assembly/signaler/cyborg,
		/obj/item/borg/apparatus/sheet_manipulator,
		/obj/item/storage/bag/sheetsnatcher/borg,
		/obj/item/storage/bag/xeno,
		/obj/item/stack/cable_coil,
		/obj/item/borg/apparatus/beaker,
		/obj/item/borg/apparatus/organ_storage,
		/obj/item/borg/apparatus/research,
		/obj/item/borg/apparatus/circuit_sci,
		/obj/item/storage/part_replacer/cyborg,
		/obj/item/healthanalyzer,
		/obj/item/experi_scanner,
		/obj/item/stack/medical/gauze,
		/obj/item/borg/apparatus/tank_manipulator,
	)
	radio_channels = list(RADIO_CHANNEL_SCIENCE)

	emag_modules = list(
		/obj/item/borg/stun,
		/obj/item/experimental_dash,
		/obj/item/borg/apparatus/illegal //Get to work unit!
	)
	cyborg_base_icon = "research"
	cyborg_icon_override = CYBORG_ICON_SCI
	model_select_icon = "research"
	model_select_alternate_icon = 'modular_zubbers/code/modules/silicons/borgs/sprites/screen_robot.dmi'
	model_traits = list(TRAIT_KNOW_ROBO_WIRES, TRAIT_RESEARCH_CYBORG)
	borg_skins = list(
		"F3-LINE" = list(
		SKIN_ICON_STATE = CYBORG_ICON_STATE_SCI_FELI,
		SKIN_ICON = CYBORG_ICON_ALL_FELI,
		SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK, TRAIT_R_SQUADRUPED, TRAIT_R_SMALL, TRAIT_R_LIGHT_WEIGHT),
		F3LINE_HAT_OFFSET
		),
		"Borgi" = list(
			SKIN_ICON_STATE = "borgi",
			SKIN_ICON = CYBORG_ICON_SCI_WIDE,
			SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK, TRAIT_R_WIDE),
			BORGI_HAT_OFFSET
		),
		"Zoomba" = list(
			SKIN_ICON_STATE = "zoomba",
			SKIN_ICON = CYBORG_ICON_SCI,
			SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK, TRAIT_R_SMALL),
			ZOOMBA_HAT_OFFSET,
		),
		"Eyebot" = list(
			SKIN_ICON_STATE = "eyebot",
			SKIN_ICON = CYBORG_ICON_SCI,
			SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK, TRAIT_R_SMALL),
		),
		"Meka" = list(
			SKIN_ICON_STATE = "mekasci",
			SKIN_ICON = CYBORG_ICON_SCI_TALL,
			SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK, TRAIT_R_UNIQUETIP, TRAIT_R_TALL), TALL_HAT_OFFSET
		),
		"NiKA" = list(
			SKIN_ICON_STATE = "fmekasci",
			SKIN_ICON = CYBORG_ICON_SCI_TALL,
			SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK, TRAIT_R_UNIQUETIP, TRAIT_R_TALL), TALL_HAT_OFFSET
		),
		"NiKO" = list(
			SKIN_ICON_STATE = "mmekasci",
			SKIN_ICON = CYBORG_ICON_SCI_TALL,
			SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK, TRAIT_R_UNIQUETIP, TRAIT_R_TALL), TALL_HAT_OFFSET
		),
		"NiKO (Alt)" = list(
			SKIN_ICON_STATE = "sfmekasci",
			SKIN_ICON = CYBORG_ICON_SCI_TALL,
			SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK, TRAIT_R_UNIQUETIP, TRAIT_R_TALL), TALL_HAT_OFFSET
		),
		"K4T (Research)" = list(
			SKIN_ICON_STATE = "k4tsci",
			SKIN_ICON = CYBORG_ICON_SCI_TALL,
			SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK, TRAIT_R_UNIQUETIP, TRAIT_R_TALL), TALL_HAT_OFFSET
		),
	)


/* BUBBER SPRITE ADDITIONS BELOW */

// Standard borgs
/obj/item/robot_model/standard/Initialize(mapload)
	. = ..()
	borg_skins |= list(
		"F3-LINE" = list(
		SKIN_ICON_STATE = CYBORG_ICON_STATE_GEN_FELI,
		SKIN_ICON = CYBORG_ICON_ALL_FELI,
		SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK, TRAIT_R_SQUADRUPED, TRAIT_R_SMALL, TRAIT_R_LIGHT_WEIGHT),
		F3LINE_HAT_OFFSET
		),
	)

// Medical borgs
/obj/item/robot_model/medical/Initialize(mapload)
	. = ..()
	borg_skins |= list(
		"F3-LINE" = list(
			SKIN_ICON_STATE = CYBORG_ICON_STATE_MED_FELI,
			SKIN_ICON = CYBORG_ICON_ALL_FELI,
			SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK, TRAIT_R_SQUADRUPED, TRAIT_R_SMALL, TRAIT_R_LIGHT_WEIGHT),
			F3LINE_HAT_OFFSET
		),
		"NiKO (Alt)" = list(
			SKIN_ICON_STATE = "sfmekamed",
			SKIN_ICON = CYBORG_ICON_MED_TALL,
			SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK, TRAIT_R_UNIQUETIP, TRAIT_R_TALL),
			TALL_HAT_OFFSET
		),
	)

// Engineering borgs
/obj/item/robot_model/engineering/Initialize(mapload)
	. = ..()
	borg_skins |= list(
		"F3-LINE" = list(
			SKIN_ICON_STATE = CYBORG_ICON_STATE_ENG_FELI,
			SKIN_ICON = CYBORG_ICON_ALL_FELI,
			SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK, TRAIT_R_SQUADRUPED, TRAIT_R_SMALL, TRAIT_R_LIGHT_WEIGHT),
			F3LINE_HAT_OFFSET
		),
		"NiKO (Alt)" = list(
			SKIN_ICON_STATE = "sfmekaengi",
			SKIN_ICON = CYBORG_ICON_ENG_TALL,
			SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK, TRAIT_R_UNIQUETIP, TRAIT_R_TALL),
			TALL_HAT_OFFSET
		),
	)

// Jani borgs
/obj/item/robot_model/janitor/Initialize(mapload)
	. = ..()
	borg_skins |= list(
		"F3-LINE" = list(
			SKIN_ICON_STATE = CYBORG_ICON_STATE_JANI_FELI,
			SKIN_ICON = CYBORG_ICON_ALL_FELI,
			SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK, TRAIT_R_SQUADRUPED, TRAIT_R_SMALL, TRAIT_R_LIGHT_WEIGHT),
			F3LINE_HAT_OFFSET
		),
	)

// Mining borgs
/obj/item/robot_model/miner/Initialize(mapload)
	. = ..()
	borg_skins |= list(
		"F3-LINE" = list(
		SKIN_ICON_STATE = CYBORG_ICON_STATE_MINE_FELI,
		SKIN_ICON = CYBORG_ICON_ALL_FELI,
		SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK, TRAIT_R_SQUADRUPED, TRAIT_R_SMALL, TRAIT_R_LIGHT_WEIGHT),
		F3LINE_HAT_OFFSET
		),
		//64x32 Sprites below (Wide)
		"Corrupt" = list(
			SKIN_ICON_STATE = "corrupt",
			SKIN_ICON = CYBORG_ICON_MINING_WIDE_BUBBER,
			SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK, TRAIT_R_WIDE),
			CORRUPT_HAT_OFFSET
		),
		"Corrupt Alt" = list(
			SKIN_ICON_STATE = "corruptalt",
			SKIN_ICON = CYBORG_ICON_MINING_WIDE_BUBBER,
			SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK, TRAIT_R_WIDE),
			CORRUPT_HAT_OFFSET
		),
		//64x48 sprites below (Raptor)
		"NiKA (Alt)" = list(
			SKIN_ICON_STATE = "sfmekamine",
			SKIN_ICON = CYBORG_ICON_MINING_TALL,
			SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK, TRAIT_R_UNIQUETIP, TRAIT_R_TALL),
			TALL_HAT_OFFSET
		),
	)

// Security borgs
/obj/item/robot_model/security/Initialize(mapload)
	. = ..()
	borg_skins |= list(
		"F3-LINE" = list(
		SKIN_ICON_STATE = CYBORG_ICON_STATE_SEC_FELI,
		SKIN_ICON = CYBORG_ICON_ALL_FELI,
		SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK, TRAIT_R_SQUADRUPED, TRAIT_R_SMALL, TRAIT_R_LIGHT_WEIGHT),
		F3LINE_HAT_OFFSET
		),
		//32x64 Sprites below (Tall)
		"Meka - Bluesec" = list(
			SKIN_ICON_STATE = "mekasecalt",
			SKIN_ICON = CYBORG_ICON_PEACEKEEPER_TALL_BUBBER,
			SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK, TRAIT_R_UNIQUETIP, TRAIT_R_TALL),
			TALL_HAT_OFFSET
		),
	)

// Peacekeeper borgs
/obj/item/robot_model/peacekeeper/Initialize(mapload)
	. = ..()
	borg_skins |= list(
		"F3-LINE" = list(
			SKIN_ICON_STATE = CYBORG_ICON_STATE_PK_FELI,
			SKIN_ICON = CYBORG_ICON_ALL_FELI,
			SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK, TRAIT_R_SQUADRUPED, TRAIT_R_SMALL, TRAIT_R_LIGHT_WEIGHT),
			F3LINE_HAT_OFFSET
		),
		//32x64 Sprites below (Tall)
		"Meka - Bluesec" = list(
			SKIN_ICON_STATE = "mekasecalt",
			SKIN_ICON = CYBORG_ICON_PEACEKEEPER_TALL_BUBBER,
			SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK, TRAIT_R_UNIQUETIP, TRAIT_R_TALL),
			TALL_HAT_OFFSET,
		),
		"NiKO (Alt)" = list(
			SKIN_ICON_STATE = "sfmekapeace",
			SKIN_ICON = CYBORG_ICON_PEACEKEEPER_TALL,
			SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK,TRAIT_R_UNIQUETIP,TRAIT_R_TALL),
			TALL_HAT_OFFSET
		),
	)

// Service borgs
/obj/item/robot_model/service/Initialize(mapload)
	. = ..()
	borg_skins |= list(
		"F3-LINE" = list(
			SKIN_ICON_STATE = CYBORG_ICON_STATE_SERV_FELI,
			SKIN_ICON = CYBORG_ICON_ALL_FELI,
			SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK, TRAIT_R_SQUADRUPED, TRAIT_R_SMALL, TRAIT_R_LIGHT_WEIGHT),
			F3LINE_HAT_OFFSET
		),
		"NiKO (Alt)" = list(
			SKIN_ICON_STATE = "sfmekaserv",
			SKIN_ICON = CYBORG_ICON_SERVICE_TALL,
			SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK, TRAIT_R_UNIQUETIP, TRAIT_R_TALL),
			TALL_HAT_OFFSET
		),
	)

// Cargo borgs
/obj/item/robot_model/cargo/Initialize(mapload)
	. = ..()
	borg_skins |= list(
		"F3-LINE" = list(
			SKIN_ICON_STATE = CYBORG_ICON_STATE_CAR_FELI,
			SKIN_ICON = CYBORG_ICON_ALL_FELI,
			SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK, TRAIT_R_SQUADRUPED, TRAIT_R_SMALL, TRAIT_R_LIGHT_WEIGHT),
			F3LINE_HAT_OFFSET
		),
		"NiKO (Alt)" = list(
			SKIN_ICON_STATE = "sfmekacargo",
			SKIN_ICON = CYBORG_ICON_CARGO_TALL,
			SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK, TRAIT_R_UNIQUETIP, TRAIT_R_TALL),
			TALL_HAT_OFFSET
		),
	)

// Syndicate jack borgs
/obj/item/robot_model/syndicatejack/Initialize(mapload)
	. = ..()
	borg_skins |= list(
		"F3-LINE" = list(
			SKIN_ICON_STATE = CYBORG_ICON_STATE_SYNDI_FELI,
			SKIN_ICON = CYBORG_ICON_ALL_FELI,
			SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK, TRAIT_R_SQUADRUPED, TRAIT_R_SMALL),
			F3LINE_HAT_OFFSET
		),
	)

// Syndicate borgs
/obj/item/robot_model/syndicate
	borg_skins = list(
		//DEFAULT MEDICAL MODULE
		"Syndicate Medical" = list(
			SKIN_ICON_STATE = "synd_sec",
			SKIN_ICON = 'icons/mob/silicon/robots.dmi'
		),
	)

// Syndicate medical borgs
/obj/item/robot_model/syndicate_medical
	borg_skins = list(
		//DEFAULT MEDICAL MODULE
		"Syndicate Medical" = list(
			SKIN_ICON_STATE = "synd_medical",
			SKIN_ICON = 'icons/mob/silicon/robots.dmi'
		),
	)

// Syndicate Saboteur borgs
/obj/item/robot_model/saboteur
	borg_skins = list(
		//DEFAULT SABOTEUR MODULE
		"Syndicate Engi" = list(
			SKIN_ICON_STATE = "synd_engi",
			SKIN_ICON = 'icons/mob/silicon/robots.dmi',
		),
	)

// Ninja borgs
/obj/item/robot_model/ninja/Initialize(mapload)
	. = ..()
	borg_skins |= list(
		/*
		"Raptor" = list(
			SKIN_ICON_STATE = CYBORG_ICON_TYPE_RAPTOR,
			SKIN_ICON = CYBORG_ICON_NINJA_WIDE_BUBBER,
			SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK, TRAIT_R_WIDE),
			RAPTOR_HAT_OFFSET
		),
		"Vale" = list(
			SKIN_ICON_STATE = "valeninja",
			SKIN_ICON = CYBORG_ICON_NINJA_WIDE_BUBBER,
			SKIN_FEATURES = list(TRAIT_R_UNIQUEWRECK, TRAIT_R_WIDE)
		),
		*/
	)
