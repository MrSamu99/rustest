//Guns
/obj/item/gun/ballistic/automatic/pistol/fallout/m10mm
	name = "police 10mm pistol"
	desc = "A pre-war 10mm pistol normally seen in the hands of law enforcement."
	icon_state = "police10mm"
	inhand_icon_state = "police10mm"
	mag_type = /obj/item/ammo_box/magazine/fallout/m10mm
	fire_sound = 'lambda/sanecman/sound/fallout/10mm_fire_02.ogg'
	w_class = WEIGHT_CLASS_NORMAL
	fire_delay = 4
//	extra_damage = 20
//	extra_penetration = 10

/obj/item/gun/ballistic/automatic/pistol/fallout/m10mm/military
	name = "military 10mm pistol"
	desc = "A bulkier, more advanced 10mm pistol typically used as a pre-war side arm by the US military."
	icon_state = "mil10mm"
	inhand_icon_state = "mil10mm"
//	extra_damage = 25

/obj/item/gun/ballistic/automatic/pistol/fallout/m10mm/chinese
	name = "Chinese pistol"
	desc = "A mass produced pre-war Chinese pistol chambered for 10mm rounds."
	icon_state = "cpistol"
	inhand_icon_state = "cpistol"
	mag_type = /obj/item/ammo_box/magazine/internal/cpistol
	fire_sound = 'lambda/sanecman/sound/fallout/gunsounds/chinese/chinese1.ogg'
//	extra_damage = 25
//	extra_penetration = 0
	internal_magazine = TRUE

/obj/item/gun/ballistic/automatic/pistol/fallout/m10mm/chinese/v420
	name = "v420 Chinese pistol"
	desc = "A prototype Chinese pistol with a slower fire rate but much higher damage, also sporting some much better looks."
	icon_state = "420pistol"
	inhand_icon_state = "420pistol"
//	extra_damage = 35
//	extra_penetration = 10
	fire_delay = 5

/obj/item/gun/ballistic/automatic/pistol/fallout/m9mm
	name = "9mm pistol"
	desc = "A very common and easy to handle 9mm pistol."
	icon_state = "9mm"
	inhand_icon_state = "9mm"
	mag_type = /obj/item/ammo_box/magazine/fallout/m9mm
	fire_sound = 'lambda/sanecman/sound/fallout/gunsounds/9mm/9mm2.ogg'
	w_class = WEIGHT_CLASS_NORMAL
	fire_delay = 4
//	extra_damage = 20
//	extra_penetration = 5

/obj/item/gun/ballistic/automatic/pistol/fallout/m9mm/maria
	name = "Maria"
	desc = "A custom and improved model of the 9mm pistol with improved rate of fire, damage, and style. Does look a bit like an 18-karat run of bad luck though."
	icon_state = "maria"
	inhand_icon_state = "maria"
	fire_delay = 3
//	extra_damage = 25
//	extra_penetration = 10

/obj/item/gun/ballistic/automatic/pistol/fallout/m9mm/handmade
	name = "самодельный пистолет"
	desc = "Сделано в подвалах Абхазии. Стреляет очень медленно."
	icon_state = "hpistol"
	inhand_icon_state = "hpistol"
	fire_delay = 5

/obj/item/gun/ballistic/automatic/pistol/fallout/m12mm
	name = "12.7mm pistol"
	desc = "A pre-war, heavy duty European pistol chambered in 12.7mm. Might not look like it, but it can do some real damage."
	icon_state = "m12mm"
	inhand_icon_state = "m12mm"
	mag_type = /obj/item/ammo_box/magazine/fallout/m12mm
	fire_sound = 'lambda/sanecman/sound/fallout/gunsounds/12mm/m12mm1.ogg'
	w_class = WEIGHT_CLASS_NORMAL
	fire_delay = 4
//	extra_damage = 35
//	extra_penetration = 15

/obj/item/gun/ballistic/automatic/pistol/fallout/m12mm/devil
	name = "Li'l Devil"
	desc = "A unique and modified version of the 12.7mm pistol with a higher fire rate, improved damage, and a suppressor attached."
	icon_state = "devil"
	inhand_icon_state = "devil"
	suppressed = TRUE
	can_unsuppress = FALSE
	fire_sound = 'sound/weapons/gun/smg/shot_suppressed.ogg'
	fire_delay = 3
//	extra_damage = 35
//	extra_penetration = 20

/obj/item/gun/ballistic/automatic/pistol/fallout/pistol45
	name = ".45 pistol"
	desc = "A classic handgun chambered in .45 caliber. What's not to love?"
	icon_state = "45pistol"
	inhand_icon_state = "45pistol"
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/fallout/m45
	fire_sound = 'lambda/sanecman/sound/fallout/gunsounds/45/45auto1.ogg'
	can_suppress = FALSE
	fire_delay = 4
//	extra_damage = 30
//	extra_penetration = 5

/obj/item/gun/ballistic/automatic/pistol/fallout/deagle
	name = "desert eagle"
	desc = "A hard hitting, heavy handgun uniquely chambered for .44 magnum rounds."
	icon_state = "deagle"
	inhand_icon_state = "deagle"
	mag_type = /obj/item/ammo_box/magazine/fallout/deagle
	fire_sound = 'lambda/sanecman/sound/fallout/gunsounds/44/44mag1.ogg'
	can_suppress = FALSE
	w_class = WEIGHT_CLASS_NORMAL
//	extra_damage = 45
//	extra_penetration = 5
	fire_delay = 5

/obj/item/gun/ballistic/automatic/pistol/fallout/pistol22
	name = ".22 pistol"
	desc = "An extremely weak but also extremely easy to conceal .22 pistol. This one has an integrated suppressor."
	icon_state = "22pistol"
	inhand_icon_state = "22pistol"
	mag_type = /obj/item/ammo_box/magazine/fallout/m22
	suppressed = TRUE
	can_unsuppress = FALSE
	w_class = WEIGHT_CLASS_SMALL
	fire_sound = 'sound/weapons/gun/smg/shot_suppressed.ogg'
//	extra_damage = 15
	fire_delay = 4


//Magazines
/obj/item/ammo_box/magazine/fallout/m45
	name = "7 round magazine (.45)"
	icon_state = "45"
	ammo_type = /obj/item/ammo_casing/fallout/c45
	caliber = ".45"
	max_ammo = 7

/obj/item/ammo_box/magazine/fallout/deagle
	name = "8 round magazine (.44)"
	icon_state = "deagle"
	ammo_type = /obj/item/ammo_casing/fallout/m44
	caliber = "44"
	max_ammo = 8
	multiple_sprites = 2

/obj/item/ammo_box/magazine/fallout/m10mm
	name = "12 round magazine (10mm)"
	icon = 'lambda/sanecman/icons/fallout/ammo.dmi'
	icon_state = "10mm"
	ammo_type = /obj/item/ammo_casing/fallout/c10mm
	caliber = "10mm"
	max_ammo = 12
	multiple_sprites = 2

/obj/item/ammo_box/magazine/fallout/m9mm
	name = "13 round magazine (9mm)"
	icon = 'lambda/sanecman/icons/fallout/ammo.dmi'
	icon_state = "9mm-13"
	ammo_type = /obj/item/ammo_casing/fallout/c9mm
	caliber = "9mm"
	max_ammo = 13

/obj/item/ammo_box/magazine/fallout/m9mm/update_icon()
	..()
	icon_state = "9mm-[ammo_count()]"

/obj/item/ammo_box/magazine/fallout/m22
	name = "16 round magazine (.22)"
	icon = 'lambda/sanecman/icons/fallout/ammo.dmi'
	icon_state = "22"
	ammo_type = /obj/item/ammo_casing/fallout/c22
	caliber = ".22"
	max_ammo = 16

/obj/item/ammo_box/magazine/fallout/m12mm
	name = "7 round magazine (12.7mm)"
	icon = 'lambda/sanecman/icons/fallout/ammo.dmi'
	icon_state = "m12mm"
	ammo_type = /obj/item/ammo_casing/fallout/m12mm
	caliber = "12.7mm"
	max_ammo = 7

/obj/item/ammo_box/magazine/internal/cpistol
	name = "Chinese pistol internal magazine"
	ammo_type = /obj/item/ammo_casing/fallout/c10mm
	caliber = "10mm"
	max_ammo = 10
	multiple_sprites = 2

//Loaders
/obj/item/ammo_box/fallout/cpistol
	name = "Chinese pistol stripper clip (10mm)"
	icon = 'lambda/sanecman/icons/fallout/ammo.dmi'
	icon_state = "cpistol"
	ammo_type = /obj/item/ammo_casing/fallout/c10mm
	caliber = "10mm"
	max_ammo = 10
