//Guns
/obj/item/gun/ballistic/automatic/fallout/smg45
	name = ".45 submachine gun"
	desc = "A classic .45 submachine gun that takes an expansive 50 round drum magazine."
	icon_state = "smg45"
	inhand_icon_state = "smg45"
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	slot_flags = 0
	mag_type = /obj/item/ammo_box/magazine/fallout/smgm45
	fire_sound = 'lambda/sanecman/sound/fallout/gunsounds/45/45auto3.ogg'
	can_suppress = FALSE
	fire_delay = 3
	burst_size = 3
//	extra_damage = 15
//	extra_penetration = 5
	spread = 12

/obj/item/gun/ballistic/automatic/fallout/smg22
	name = ".22 submachine gun"
	desc = "A suppressed .22 submachine gun that feeds from a large pan magazine placed on top of the gun. An interesting weapon for interesting people."
	icon_state = "smg22"
	inhand_icon_state = "smg22"
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	suppressed = TRUE
	can_unsuppress = FALSE
	slot_flags = 0
	mag_type = /obj/item/ammo_box/magazine/fallout/smgm22
	fire_sound = 'sound/weapons/gun/smg/shot_suppressed.ogg'
	fire_delay = 3
	burst_size = 3
//	extra_damage = 15
	spread = 12

/obj/item/gun/ballistic/automatic/fallout/smg10mm
	name = "10mm submachine gun"
	desc = "A light, one handed 10mm submachine gun. Decent power in a small package."
	icon_state = "smg10mm"
	inhand_icon_state = "smg10mm"
	w_class = WEIGHT_CLASS_NORMAL
	slot_flags = 0
	mag_type = /obj/item/ammo_box/magazine/fallout/smgm10mm
	fire_sound = 'lambda/sanecman/sound/fallout/gunsounds/10mmsmg/10mmsmg1.ogg'
	burst_size = 3
	fire_delay = 3
//	extra_damage = 15
//	extra_penetration = 5
	spread = 12

/obj/item/gun/ballistic/automatic/fallout/smg9mm
	name = "9mm submachine gun"
	desc = "A fast firing, old school 9mm submachine gun. Doesn't pack a lot of punch per bullet, but that doesn't matter when you're spitting them out so fast."
	icon_state = "smg9mm"
	inhand_icon_state = "smg9mm"
	mag_type = /obj/item/ammo_box/magazine/fallout/smgm9mm
	fire_sound = 'lambda/sanecman/sound/fallout/greasegun.ogg'
	can_suppress = FALSE
	burst_size = 3
	fire_delay = 3
//	extra_damage = 15
	force = 15
	spread = 12

/obj/item/gun/ballistic/automatic/fallout/smg9mm/handmade
	name = "handmade submachine gun"
	desc = "A submachine gun made from scratch that fires from a standard 9mm SMG magazine. It's poor design makes it rather hard to control."
	icon_state = "hsmg"
	inhand_icon_state = "hsmg"
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	spread = 16

/obj/item/gun/ballistic/automatic/fallout/smg12mm
	name = "12.7mm submachine gun"
	desc = "A heavy duty submachine gun chambered in 12.7mm, can't hold a lot of rounds, but they sure do pack a punch."
	icon_state = "smg12mm"
	inhand_icon_state = "smg12mm"
	mag_type = /obj/item/ammo_box/magazine/fallout/smg12mm
	fire_sound = 'lambda/sanecman/sound/fallout/gunsounds/12mm/m12mm2.ogg'
	can_suppress = FALSE
	burst_size = 3
	fire_delay = 3
//	extra_damage = 15
//	extra_penetration = 15
	force = 15
	spread = 10

/obj/item/gun/ballistic/automatic/fallout/assaultrifle
	name = "штурмовая винтовка"
	desc = "A general purpose, standard automatic assault rifle chambered in 5.56. Commonly used by pre-war US military forces."
	icon_state = "assaultrifle"
	inhand_icon_state = "assaultrifle"
	slot_flags = 0
	mag_type = /obj/item/ammo_box/magazine/fallout/r20
	fire_sound = 'lambda/sanecman/sound/fallout/arfire.ogg'
	burst_size = 3
	fire_delay = 3
//	extra_damage = 20
//	extra_penetration = 10
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	spread = 8

/obj/item/gun/ballistic/automatic/fallout/assaultrifle/infiltrator
	name = "Infiltrator"
	desc = "A heavily modified and customized assault rifle with a scope and suppressor as it's most notable additions. Sacrifices a little bit of damage for a little more control."
	icon_state = "infiltrator"
	inhand_icon_state = "infiltrator"
	suppressed = TRUE
	can_unsuppress = FALSE
//	extra_damage = 20
//	extra_penetration = 0
	fire_sound = 'sound/weapons/gun/smg/shot_suppressed.ogg'
	spread = 6

/obj/item/gun/ballistic/automatic/fallout/assaultrifle/infiltrator/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/scope, range_modifier = 2)

/obj/item/gun/ballistic/automatic/fallout/assaultrifle/chinese
	name = "Chinese assault rifle"
	desc = "A Chinese made assault rifle chambered in the heavier 7.62 round, packs a bigger punch in exchange for reduced accuracy."
	icon_state = "chinesear"
	inhand_icon_state = "chinesear"
	mag_type = /obj/item/ammo_box/magazine/fallout/ar762
	fire_sound = 'lambda/sanecman/sound/fallout/chinesearfire.ogg'
//	extra_penetration = 10
	spread = 10

/obj/item/gun/ballistic/automatic/fallout/assaultrifle/chinese/handmade
	name = "handmade assault rifle"
	desc = "A decent quality handmade assault rifle chambered in 7.62."
	icon_state = "handmadear"
	inhand_icon_state = "handmadear"
//	extra_penetration = 0

/obj/item/gun/ballistic/automatic/fallout/marksman
	name = "marksman carbine"
	desc = "A 5.56 carbine with a scope attached to help in long range combat. Packs a good punch for 5.56 rounds, but at the cost of a slower rate of fire."
	icon_state = "marksman"
	inhand_icon_state = "marksman"
	w_class = WEIGHT_CLASS_BULKY
	mag_type = /obj/item/ammo_box/magazine/fallout/r20
	fire_sound = 'lambda/sanecman/sound/fallout/gunsounds/marksman/marksman2.ogg'
	can_suppress = FALSE
	fire_delay = 6
//	extra_damage = 35
//	extra_penetration = 10
	weapon_weight = WEAPON_HEAVY

/obj/item/gun/ballistic/automatic/fallout/marksman/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/scope, range_modifier = 2)

/obj/item/gun/ballistic/automatic/fallout/marksman/american
	name = "All-American"
	desc = "A unique and customized marksman carbine. Improved rifling and similar modifications allow for higher damage and an improved paint job allows for higher patriotism."
	icon_state = "allamerican"
	inhand_icon_state = "allamerican"
//	extra_damage = 40

/obj/item/gun/ballistic/automatic/fallout/marksman/service
	name = "service rifle"
	desc = "A 5.56 semi-automatic rifle manufactured by and for the NCR."
	icon_state = "service"
	inhand_icon_state = "service"
	fire_sound = 'lambda/sanecman/sound/fallout/gunsounds/service/service3.ogg'
	fire_delay = 4
//	extra_damage = 25
//	extra_penetration = 5

/obj/item/gun/ballistic/automatic/fallout/marksman/service/survival
	name = "Survivalist rifle"
	desc = "A unique, heavy duty service rifle. Fires slower but packs a much heavier punch. Has definitely seen it's fair share of battle."
	icon_state = "survivalist"
	inhand_icon_state = "survivalist"
	fire_delay = 5
//	extra_damage = 35
//	extra_penetration = 10

/obj/item/gun/ballistic/automatic/fallout/marksman/service/police22
	name = ".22 police rifle"
	desc = "A semi-automatic .22 caliber rifle mostly used by pre-war police forces."
	icon_state = "rugerpolice"
	inhand_icon_state = "rugerpolice"
	mag_type = /obj/item/ammo_box/magazine/fallout/r22
	fire_sound = 'lambda/sanecman/sound/fallout/varmint_rifle.ogg'
	fire_delay = 4
//	extra_damage = 20
//	extra_penetration = 0

/obj/item/gun/ballistic/automatic/fallout/marksman/sniper
	name = "sniper rifle"
	desc = "A semi-automatic, high powered .308 sniper rifle. Perfect weapon for a determined assassin."
	icon_state = "sniper"
	inhand_icon_state = "sniper"
	fire_sound = 'lambda/sanecman/sound/fallout/gunsounds/sniper/sniper2.ogg'
	fire_delay = 6
//	extra_damage = 65
//	extra_penetration = 50
	mag_type = /obj/item/ammo_box/magazine/fallout/r308

//Magazines
/obj/item/ammo_box/magazine/fallout/r20
	name = "20 round magazine (5.56mm)"
	icon = 'lambda/sanecman/icons/fallout/ammo.dmi'
	icon_state = "556r20"
	ammo_type = /obj/item/ammo_casing/fallout/a556
	caliber = "a556"
	max_ammo = 20
	multiple_sprites = 2

/obj/item/ammo_box/magazine/fallout/smgm10mm
	name = "24 round magazine (10mm)"
	icon = 'lambda/sanecman/icons/fallout/ammo.dmi'
	icon_state = "smg10mm"
	ammo_type = /obj/item/ammo_casing/fallout/c10mm
	caliber = "10mm"
	max_ammo = 24
	multiple_sprites = 2

/obj/item/ammo_box/magazine/fallout/smgm9mm
	name = "30 round magazine (9mm)"
	icon = 'lambda/sanecman/icons/fallout/ammo.dmi'
	icon_state = "smg9mm"
	ammo_type = /obj/item/ammo_casing/fallout/c9mm
	caliber = "9mm"
	max_ammo = 30
	multiple_sprites = 2

/obj/item/ammo_box/magazine/fallout/smgm45
	name = "50 round drum magazine (.45)"
	icon_state = "smg45"
	ammo_type = /obj/item/ammo_casing/fallout/c45
	caliber = ".45"
	max_ammo = 50
	multiple_sprites = 2

/obj/item/ammo_box/magazine/fallout/ar762
	name = "24 round magazine (7.62mm)"
	icon = 'lambda/sanecman/icons/fallout/ammo.dmi'
	icon_state = "ar762"
	ammo_type = /obj/item/ammo_casing/fallout/a762
	caliber = "a762"
	max_ammo = 24
	multiple_sprites = 2

/obj/item/ammo_box/magazine/fallout/smgm22
	name = "60 round magazine (.22)"
	icon_state = "smg22"
	ammo_type = /obj/item/ammo_casing/fallout/c22
	caliber = ".22"
	max_ammo = 60
	multiple_sprites = 2

/obj/item/ammo_box/magazine/fallout/r22
	name = "15 round magazine (.22)"
	icon_state = "r22"
	ammo_type = /obj/item/ammo_casing/fallout/c22
	caliber = ".22"
	max_ammo = 15
	multiple_sprites = 2

/obj/item/ammo_box/magazine/fallout/smg12mm
	name = "21 round magazine (12.7mm)"
	icon_state = "smg12mm"
	ammo_type = /obj/item/ammo_casing/fallout/m12mm
	caliber = "12.7mm"
	max_ammo = 21
