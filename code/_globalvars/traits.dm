/*
FUN ZONE OF ADMIN LISTINGS
Try to keep this in sync with __DEFINES/traits.dm
quirks have it's own panel so we don't need them here.
*/
GLOBAL_LIST_INIT(traits_by_type, list(
	/mob = list(
		"TRAIT_KNOCKEDOUT" = TRAIT_KNOCKEDOUT,
		"TRAIT_IMMOBILIZED" = TRAIT_IMMOBILIZED,
		"TRAIT_FLOORED" = TRAIT_FLOORED,
		"TRAIT_HANDS_BLOCKED" = TRAIT_HANDS_BLOCKED,
		"TRAIT_RESTRAINED" = TRAIT_RESTRAINED,
		"TRAIT_INCAPACITATED" = TRAIT_INCAPACITATED,
		"TRAIT_CRITICAL_CONDITION" = TRAIT_CRITICAL_CONDITION,
		"TRAIT_BLIND" = TRAIT_BLIND,
		"TRAIT_MUTE" = TRAIT_MUTE,
		"TRAIT_EMOTEMUTE " = TRAIT_EMOTEMUTE,
		"TRAIT_DEAF" = TRAIT_DEAF,
		"TRAIT_NEARSIGHT" = TRAIT_NEARSIGHT,
		"TRAIT_FAT" = TRAIT_FAT,
		"TRAIT_HUSK" = TRAIT_HUSK,
		"TRAIT_BADDNA" = TRAIT_BADDNA,
		"TRAIT_CLUMSY" = TRAIT_CLUMSY,
		"TRAIT_CHUNKYFINGERS" = TRAIT_CHUNKYFINGERS,
		"TRAIT_DUMB" = TRAIT_DUMB,
		"TRAIT_ADVANCEDTOOLUSER" = TRAIT_ADVANCEDTOOLUSER,
		"TRAIT_MONKEYLIKE" = TRAIT_MONKEYLIKE,
		"TRAIT_PACIFISM" = TRAIT_PACIFISM,
		"TRAIT_IGNORESLOWDOWN" = TRAIT_IGNORESLOWDOWN,
		"TRAIT_IGNOREDAMAGESLOWDOWN" = TRAIT_IGNOREDAMAGESLOWDOWN,
		"TRAIT_DEATHCOMA" = TRAIT_DEATHCOMA,
		"TRAIT_FAKEDEATH" = TRAIT_FAKEDEATH,
		"TRAIT_DISFIGURED" = TRAIT_DISFIGURED,
		"TRAIT_XENO_HOST" = TRAIT_XENO_HOST,
		"TRAIT_STUNIMMUNE" = TRAIT_STUNIMMUNE,
		"TRAIT_STUNRESISTANCE" = TRAIT_STUNRESISTANCE,
		"TRAIT_IWASBATONED" = TRAIT_IWASBATONED,
		"TRAIT_SLEEPIMMUNE" = TRAIT_SLEEPIMMUNE,
		"TRAIT_PUSHIMMUNE" = TRAIT_PUSHIMMUNE,
		"TRAIT_SHOCKIMMUNE" = TRAIT_SHOCKIMMUNE,
		"TRAIT_TESLA_SHOCKIMMUNE" = TRAIT_TESLA_SHOCKIMMUNE,
		"TRAIT_STABLEHEART" = TRAIT_STABLEHEART,
		"TRAIT_STABLELIVER" = TRAIT_STABLELIVER,
		"TRAIT_RESISTHEAT" = TRAIT_RESISTHEAT,
		"TRAIT_RESISTHEATHANDS" = TRAIT_RESISTHEATHANDS,
		"TRAIT_RESISTCOLD" = TRAIT_RESISTCOLD,
		"TRAIT_RESISTHIGHPRESSURE" = TRAIT_RESISTHIGHPRESSURE,
		"TRAIT_RESISTLOWPRESSURE" = TRAIT_RESISTLOWPRESSURE,
		"TRAIT_BOMBIMMUNE" = TRAIT_BOMBIMMUNE,
		"TRAIT_RADIMMUNE" = TRAIT_RADIMMUNE,
		"TRAIT_GENELESS" = TRAIT_GENELESS,
		"TRAIT_VIRUSIMMUNE" = TRAIT_VIRUSIMMUNE,
		"TRAIT_PIERCEIMMUNE" = TRAIT_PIERCEIMMUNE,
		"TRAIT_NODISMEMBER" = TRAIT_NODISMEMBER,
		"TRAIT_NOFIRE" = TRAIT_NOFIRE,
		"TRAIT_NOGUNS" = TRAIT_NOGUNS,
		"TRAIT_NOHUNGER" = TRAIT_NOHUNGER,
		"TRAIT_NOMETABOLISM" = TRAIT_NOMETABOLISM,
		"TRAIT_NOCLONELOSS" = TRAIT_NOCLONELOSS,
		"TRAIT_TOXIMMUNE" = TRAIT_TOXIMMUNE,
		"TRAIT_EASYDISMEMBER" = TRAIT_EASYDISMEMBER,
		"TRAIT_LIMBATTACHMENT" = TRAIT_LIMBATTACHMENT,
		"TRAIT_NOLIMBDISABLE" = TRAIT_NOLIMBDISABLE,
		"TRAIT_EASYLIMBDISABLE" = TRAIT_EASYLIMBDISABLE,
		"TRAIT_TOXINLOVER" = TRAIT_TOXINLOVER,
		"TRAIT_NOBREATH" = TRAIT_NOBREATH,
		"TRAIT_ANTIMAGIC" = TRAIT_ANTIMAGIC,
		"TRAIT_HOLY" = TRAIT_HOLY,
		"TRAIT_DEPRESSION" = TRAIT_DEPRESSION,
		"TRAIT_JOLLY" = TRAIT_JOLLY,
		"TRAIT_NOCRITDAMAGE" = TRAIT_NOCRITDAMAGE,
		"TRAIT_NOSLIPWATER" = TRAIT_NOSLIPWATER,
		"TRAIT_NOSLIPALL" = TRAIT_NOSLIPALL,
		"TRAIT_NODEATH" = TRAIT_NODEATH,
		"TRAIT_NOHARDCRIT" = TRAIT_NOHARDCRIT,
		"TRAIT_NOSOFTCRIT" = TRAIT_NOSOFTCRIT,
		"TRAIT_MINDSHIELD" = TRAIT_MINDSHIELD,
		"TRAIT_DISSECTED" = TRAIT_DISSECTED,
		"TRAIT_SIXTHSENSE" = TRAIT_SIXTHSENSE,
		"TRAIT_FEARLESS" = TRAIT_FEARLESS,
		"TRAIT_PARALYSIS_L_ARM" = TRAIT_PARALYSIS_L_ARM,
		"TRAIT_PARALYSIS_R_ARM" = TRAIT_PARALYSIS_R_ARM,
		"TRAIT_PARALYSIS_L_LEG" = TRAIT_PARALYSIS_L_LEG,
		"TRAIT_PARALYSIS_R_LEG" = TRAIT_PARALYSIS_R_LEG,
		"TRAIT_CANNOT_OPEN_PRESENTS" = TRAIT_CANNOT_OPEN_PRESENTS,
		"TRAIT_PRESENT_VISION" = TRAIT_PRESENT_VISION,
		"TRAIT_DISK_VERIFIER" = TRAIT_DISK_VERIFIER,
		"TRAIT_NOMOBSWAP" = TRAIT_NOMOBSWAP,
		"TRAIT_XRAY_VISION" = TRAIT_XRAY_VISION,
		"TRAIT_THERMAL_VISION" = TRAIT_THERMAL_VISION,
		"TRAIT_ABDUCTOR_TRAINING" = TRAIT_ABDUCTOR_TRAINING,
		"TRAIT_ABDUCTOR_SCIENTIST_TRAINING" = TRAIT_ABDUCTOR_SCIENTIST_TRAINING,
		"TRAIT_SURGEON" = TRAIT_SURGEON,
		"TRAIT_STRONG_GRABBER" = TRAIT_STRONG_GRABBER,
		"TRAIT_MAGIC_CHOKE" = TRAIT_MAGIC_CHOKE,
		"TRAIT_SOOTHED_THROAT" = TRAIT_SOOTHED_THROAT,
		"TRAIT_LAW_ENFORCEMENT_METABOLISM" = TRAIT_LAW_ENFORCEMENT_METABOLISM,
		"TRAIT_ALWAYS_CLEAN" = TRAIT_ALWAYS_CLEAN,
		"TRAIT_BOOZE_SLIDER" = TRAIT_BOOZE_SLIDER,
		"TRAIT_QUICK_CARRY" = TRAIT_QUICK_CARRY,
		"TRAIT_QUICKER_CARRY" = TRAIT_QUICKER_CARRY,
		"TRAIT_UNINTELLIGIBLE_SPEECH" = TRAIT_UNINTELLIGIBLE_SPEECH,
		"TRAIT_UNSTABLE" = TRAIT_UNSTABLE,
		"TRAIT_OIL_FRIED" = TRAIT_OIL_FRIED,
		"TRAIT_MEDICAL_HUD" = TRAIT_MEDICAL_HUD,
		"TRAIT_SECURITY_HUD" = TRAIT_SECURITY_HUD,
		"TRAIT_DIAGNOSTIC_HUD" = TRAIT_DIAGNOSTIC_HUD,
		"TRAIT_TRAIT_MEDIBOTCOMINGTHROUGH" = TRAIT_MEDIBOTCOMINGTHROUGH,
		"TRAIT_PASSTABLE" = TRAIT_PASSTABLE,
		"TRAIT_NOFLASH" = TRAIT_NOFLASH,
		"TRAIT_XENO_IMMUNE" = TRAIT_XENO_IMMUNE,
		"TRAIT_NAIVE" = TRAIT_NAIVE,
		"TRAIT_PRIMITIVE" = TRAIT_PRIMITIVE, //unable to use mechs. Given to Ash Walkers
		"TRAIT_GUNFLIP" = TRAIT_GUNFLIP,
		"TRAIT_SPECIAL_TRAUMA_BOOST" = TRAIT_SPECIAL_TRAUMA_BOOST,
		"TRAIT_BLOODCRAWL_EAT" = TRAIT_BLOODCRAWL_EAT,
		"TRAIT_SPACEWALK" = TRAIT_SPACEWALK,
		"TRAIT_GAMERGOD" = TRAIT_GAMERGOD,
		"TRAIT_GIANT" = TRAIT_GIANT,
		"TRAIT_DWARF" = TRAIT_DWARF,
		"TRAIT_SILENT_FOOTSTEPS" = TRAIT_SILENT_FOOTSTEPS,
		"TRAIT_NICE_SHOT" = TRAIT_NICE_SHOT,
		"TRAIT_ALCOHOL_TOLERANCE" = TRAIT_ALCOHOL_TOLERANCE,
		"TRAIT_AGEUSIA" = TRAIT_AGEUSIA,
		"TRAIT_HEAVY_SLEEPER" = TRAIT_HEAVY_SLEEPER,
		"TRAIT_NIGHT_VISION" = TRAIT_NIGHT_VISION,
		"TRAIT_LIGHT_STEP" = TRAIT_LIGHT_STEP,
		"TRAIT_SPIRITUAL" = TRAIT_SPIRITUAL,
		"TRAIT_FAN_CLOWN" = TRAIT_FAN_CLOWN,
		"TRAIT_FAN_MIME" = TRAIT_FAN_MIME,
		"TRAIT_VORACIOUS" = TRAIT_VORACIOUS,
		"TRAIT_SELF_AWARE" = TRAIT_SELF_AWARE,
		"TRAIT_FREERUNNING" = TRAIT_FREERUNNING,
		"TRAIT_SKITTISH" = TRAIT_SKITTISH,
		"TRAIT_POOR_AIM" = TRAIT_POOR_AIM,
		"TRAIT_PROSOPAGNOSIA" = TRAIT_PROSOPAGNOSIA,
		"TRAIT_DRUNK_HEALING" = TRAIT_DRUNK_HEALING,
		"TRAIT_TAGGER" = TRAIT_TAGGER,
		"TRAIT_PHOTOGRAPHER" = TRAIT_PHOTOGRAPHER,
		"TRAIT_MUSICIAN" = TRAIT_MUSICIAN,
		"TRAIT_LIGHT_DRINKER" = TRAIT_LIGHT_DRINKER,
		"TRAIT_EMPATH" = TRAIT_EMPATH,
		"TRAIT_FRIENDLY" = TRAIT_FRIENDLY,
		"TRAIT_GRABWEAKNESS" = TRAIT_GRABWEAKNESS,
		"TRAIT_SNOB" = TRAIT_SNOB,
		"TRAIT_BALD" = TRAIT_BALD,
		"TRAIT_NOBREAK" = TRAIT_NOBREAK,			//WS edit - Whitesands
		"TRAIT_ALLBREAK" = TRAIT_ALLBREAK,			//WS edit - Whitesands
		"TRAIT_BADTOUCH" = TRAIT_BADTOUCH,
		"TRAIT_HOLDABLE" = TRAIT_HOLDABLE,
		"TRAIT_SCOOPABLE" = TRAIT_SCOOPABLE,
		"TRAIT_ANXIOUS" = TRAIT_ANXIOUS,
		"TRAIT_KISS_OF_DEATH" = TRAIT_KISS_OF_DEATH,
		"TRAIT_LAVA_IMMUNE" = TRAIT_LAVA_IMMUNE,
		"TRAIT_SNOWSTORM_IMMUNE" = TRAIT_SNOWSTORM_IMMUNE,
		"TRAIT_ASHSTORM_IMMUNE" = TRAIT_ASHSTORM_IMMUNE,
		"TRAIT_NOSELFIGNITION_HEAD_ONLY" = TRAIT_NOSELFIGNITION_HEAD_ONLY,
		"TRAIT_ANTIMAGIC_NO_SELFBLOCK" = TRAIT_ANTIMAGIC_NO_SELFBLOCK,
		"TRAIT_MESON_VISION" = TRAIT_MESON_VISION,
		"TRAIT_TRUE_NIGHT_VISION" = TRAIT_TRUE_NIGHT_VISION,
		"TRAIT_REAGENT_SCANNER" = TRAIT_REAGENT_SCANNER,
		"TRAIT_FASTMED" = TRAIT_FASTMED,
		"TRAIT_CAN_SIGN_ON_COMMS" = TRAIT_CAN_SIGN_ON_COMMS

	),
	/obj/item/bodypart = list(
		"TRAIT_PARALYSIS" = TRAIT_PARALYSIS
		),
	/obj/item = list(
		"TRAIT_NODROP" = TRAIT_NODROP,
		"TRAIT_NO_STORAGE_INSERT" = TRAIT_NO_STORAGE_INSERT,
		"TRAIT_T_RAY_VISIBLE" = TRAIT_T_RAY_VISIBLE,
		"TRAIT_NO_TELEPORT" = TRAIT_NO_TELEPORT
		),
	/atom = list(
		"TRAIT_KEEP_TOGETHER" = TRAIT_KEEP_TOGETHER
		)
	))

/// value -> trait name, generated on use from trait_by_type global
GLOBAL_LIST(trait_name_map)

/proc/generate_trait_name_map()
	. = list()
	for(var/key in GLOB.traits_by_type)
		for(var/tname in GLOB.traits_by_type[key])
			var/val = GLOB.traits_by_type[key][tname]
			.[val] = tname
