// All signals. Format:
// When the signal is called: (signal arguments)
// All signals send the source datum of the signal as the first argument

// global signals
// These are signals which can be listened to by any component on any parent
// start global signals with "!", this used to be necessary but now it's just a formatting choice
/// from base of datum/controller/subsystem/mapping/proc/add_new_zlevel(): (list/args)
#define COMSIG_GLOB_NEW_Z "!new_z"
/// called after a successful var edit somewhere in the world: (list/args)
#define COMSIG_GLOB_VAR_EDIT "!var_edit"
/// called after an explosion happened : (epicenter, devastation_range, heavy_impact_range, light_impact_range, took, orig_dev_range, orig_heavy_range, orig_light_range)
#define COMSIG_GLOB_EXPLOSION "!explosion"
/// mob was created somewhere : (mob)
#define COMSIG_GLOB_MOB_CREATED "!mob_created"
/// mob died somewhere : (mob , gibbed)
#define COMSIG_GLOB_MOB_DEATH "!mob_death"
/// global living say plug - use sparingly: (mob/speaker , message)
#define COMSIG_GLOB_LIVING_SAY_SPECIAL "!say_special"
/// called by datum/cinematic/play() : (datum/cinematic/new_cinematic)
#define COMSIG_GLOB_PLAY_CINEMATIC "!play_cinematic"
	#define COMPONENT_GLOB_BLOCK_CINEMATIC 1
/// ingame button pressed (/obj/machinery/button/button)
#define COMSIG_GLOB_BUTTON_PRESSED "!button_pressed"

// signals from globally accessible objects
/// from SSsun when the sun changes position : (azimuth)
#define COMSIG_SUN_MOVED "sun_moved"

//////////////////////////////////////////////////////////////////

// /datum signals
/// when a component is added to a datum: (/datum/component)
#define COMSIG_COMPONENT_ADDED "component_added"
/// before a component is removed from a datum because of RemoveComponent: (/datum/component)
#define COMSIG_COMPONENT_REMOVING "component_removing"
/// before a datum's Destroy() is called: (force), returning a nonzero value will cancel the qdel operation
#define COMSIG_PARENT_PREQDELETED "parent_preqdeleted"
/// just before a datum's Destroy() is called: (force), at this point none of the other components chose to interrupt qdel and Destroy will be called
#define COMSIG_PARENT_QDELETING "parent_qdeleting"
/// generic topic handler (usr, href_list)
#define COMSIG_TOPIC "handle_topic"

/// fires on the target datum when an element is attached to it (/datum/element)
#define COMSIG_ELEMENT_ATTACH "element_attach"
/// fires on the target datum when an element is attached to it (/datum/element)
#define COMSIG_ELEMENT_DETACH "element_detach"

// /atom signals
///from base of atom/proc/Initialize(): sent any time a new atom is created
#define COMSIG_ATOM_CREATED "atom_created"
//from SSatoms InitAtom - Only if the  atom was not deleted or failed initialization
#define COMSIG_ATOM_AFTER_SUCCESSFUL_INITIALIZE "atom_init_success"
///from base of atom/attackby(): (/obj/item, /mob/living, params)
#define COMSIG_PARENT_ATTACKBY "atom_attackby"
///Return this in response if you don't want afterattack to be called
/// From base of [/obj/item/proc/pre_attack_secondary()]: (atom/target, mob/user, params)
#define COMSIG_ITEM_PRE_ATTACK_SECONDARY "item_pre_attack_secondary"
	#define COMPONENT_SECONDARY_CANCEL_ATTACK_CHAIN (1<<0)
	#define COMPONENT_SECONDARY_CONTINUE_ATTACK_CHAIN (1<<1)
	#define COMPONENT_SECONDARY_CALL_NORMAL_ATTACK_CHAIN (1<<2)
#define COMSIG_PARENT_ATTACKBY_SECONDARY "atom_attackby_secondary"
/// From base of [/atom/proc/attack_hand_secondary]: (mob/user, list/modifiers) - Called when the atom receives a secondary unarmed attack.
#define COMSIG_ATOM_ATTACK_HAND_SECONDARY "atom_attack_hand_secondary"
///Return this in response if you don't want afterattack to be called
	#define COMPONENT_NO_AFTERATTACK (1<<0)
///from base of atom/attack_hulk(): (/mob/living/carbon/human)
#define COMSIG_ATOM_HULK_ATTACK "hulk_attack"
///from base of atom/animal_attack(): (/mob/user)
#define COMSIG_ATOM_ATTACK_ANIMAL "attack_animal"
///from base of atom/examine(): (/mob)
#define COMSIG_PARENT_EXAMINE "atom_examine"
///from base of atom/get_examine_name(): (/mob, list/overrides)
#define COMSIG_ATOM_GET_EXAMINE_NAME "atom_examine_name"
///from base of atom/examine_more(): (/mob)
#define COMSIG_PARENT_EXAMINE_MORE "atom_examine_more"
	//Positions for overrides list
	#define EXAMINE_POSITION_ARTICLE 1
	#define EXAMINE_POSITION_BEFORE 2
	//End positions
	#define COMPONENT_EXNAME_CHANGED (1<<0)

///from base of [/atom/proc/update_appearance]: (updates)
#define COMSIG_ATOM_UPDATE_APPEARANCE "atom_update_appearance"
	/// If returned from [COMSIG_ATOM_UPDATE_APPEARANCE] it prevents the atom from updating its name.
	#define COMSIG_ATOM_NO_UPDATE_NAME UPDATE_NAME
	/// If returned from [COMSIG_ATOM_UPDATE_APPEARANCE] it prevents the atom from updating its desc.
	#define COMSIG_ATOM_NO_UPDATE_DESC UPDATE_DESC
	/// If returned from [COMSIG_ATOM_UPDATE_APPEARANCE] it prevents the atom from updating its icon.
	#define COMSIG_ATOM_NO_UPDATE_ICON UPDATE_ICON
///from base of [/atom/proc/update_name]: (updates)
#define COMSIG_ATOM_UPDATE_NAME "atom_update_name"
///from base of [/atom/proc/update_desc]: (updates)
#define COMSIG_ATOM_UPDATE_DESC "atom_update_desc"
///from base of atom/update_icon(): ()
#define COMSIG_ATOM_UPDATE_ICON "atom_update_icon"
	#define COMSIG_ATOM_NO_UPDATE_ICON_STATE (1<<0)
	#define COMSIG_ATOM_NO_UPDATE_OVERLAYS (1<<1)
///from base of atom/update_overlays(): (list/new_overlays)
#define COMSIG_ATOM_UPDATE_OVERLAYS "atom_update_overlays"
///from base of atom/update_icon(): (signalOut, did_anything)
#define COMSIG_ATOM_UPDATED_ICON "atom_updated_icon"
///from base of atom/Entered(): (atom/movable/entering, /atom)
#define COMSIG_ATOM_ENTERED "atom_entered"
///from base of atom/Exit(): (/atom/movable/exiting, /atom/newloc)
#define COMSIG_ATOM_EXIT "atom_exit"
	#define COMPONENT_ATOM_BLOCK_EXIT (1<<0)
///from base of atom/Exited(): (atom/movable/exiting, atom/newloc)
#define COMSIG_ATOM_EXITED "atom_exited"
///from base of atom/Bumped(): (/atom/movable)
#define COMSIG_ATOM_BUMPED "atom_bumped"
///from base of atom/ex_act(): (severity, target)
#define COMSIG_ATOM_EX_ACT "atom_ex_act"
///from base of atom/emp_act(): (severity)
#define COMSIG_ATOM_EMP_ACT "atom_emp_act"
///from base of atom/fire_act(): (exposed_temperature, exposed_volume)
#define COMSIG_ATOM_FIRE_ACT "atom_fire_act"
///from base of atom/bullet_act(): (/obj/projectile, def_zone)
#define COMSIG_ATOM_BULLET_ACT "atom_bullet_act"
///from base of atom/CheckParts(): (list/parts_list, datum/crafting_recipe/R)
#define COMSIG_ATOM_CHECKPARTS "atom_checkparts"
///from base of atom/CheckParts(): (atom/movable/new_craft) - The atom has just been used in a crafting recipe and has been moved inside new_craft.
#define COMSIG_ATOM_USED_IN_CRAFT "atom_used_in_craft"
///from base of atom/blob_act(): (/obj/structure/blob)
#define COMSIG_ATOM_BLOB_ACT "atom_blob_act"
///from base of atom/acid_act(): (acidpwr, acid_volume)
#define COMSIG_ATOM_ACID_ACT "atom_acid_act"
///from base of atom/emag_act(): (/mob/user)
#define COMSIG_ATOM_EMAG_ACT "atom_emag_act"
///from base of atom/rad_act(intensity)
#define COMSIG_ATOM_RAD_ACT "atom_rad_act"
///from base of atom/narsie_act(): ()
#define COMSIG_ATOM_NARSIE_ACT "atom_narsie_act"
///from base of atom/rcd_act(): (/mob, /obj/item/construction/rcd, passed_mode)
#define COMSIG_ATOM_RCD_ACT "atom_rcd_act"
///from base of atom/singularity_pull(): (S, current_size)
#define COMSIG_ATOM_SING_PULL "atom_sing_pull"
///from obj/machinery/bsa/full/proc/fire(): ()
#define COMSIG_ATOM_BSA_BEAM "atom_bsa_beam_pass"
	#define COMSIG_ATOM_BLOCKS_BSA_BEAM (1<<0)
///from base of atom/set_light(): (l_range, l_power, l_color, l_on)
#define COMSIG_ATOM_SET_LIGHT "atom_set_light"
///from base of atom/setDir(): (old_dir, new_dir). Called before the direction changes.
#define COMSIG_ATOM_DIR_CHANGE "atom_dir_change"
///from base of atom/handle_atom_del(): (atom/deleted)
#define COMSIG_ATOM_CONTENTS_DEL "atom_contents_del"
///from base of atom/has_gravity(): (turf/location, list/forced_gravities)
#define COMSIG_ATOM_HAS_GRAVITY "atom_has_gravity"
///from proc/get_rad_contents(): ()
#define COMSIG_ATOM_RAD_PROBE "atom_rad_probe"
	#define COMPONENT_BLOCK_RADIATION (1<<0)
///from base of datum/radiation_wave/radiate(): (strength)
#define COMSIG_ATOM_RAD_CONTAMINATING "atom_rad_contam"
	#define COMPONENT_BLOCK_CONTAMINATION (1<<0)
///from base of datum/radiation_wave/check_obstructions(): (datum/radiation_wave, width)
#define COMSIG_ATOM_RAD_WAVE_PASSING "atom_rad_wave_pass"
	#define COMPONENT_RAD_WAVE_HANDLED (1<<0)
///from internal loop in atom/movable/proc/CanReach(): (list/next)
#define COMSIG_ATOM_CANREACH "atom_can_reach"
	#define COMPONENT_BLOCK_REACH 1
	#define COMPONENT_ALLOW_REACH (1<<0)
///from base of atom/screwdriver_act(): (mob/living/user, obj/item/I)
#define COMSIG_ATOM_SCREWDRIVER_ACT "atom_screwdriver_act"
///from base of atom/wrench_act(): (mob/living/user, obj/item/I)
#define COMSIG_ATOM_WRENCH_ACT "atom_wrench_act"
///from base of atom/multitool_act(): (mob/living/user, obj/item/I)
#define COMSIG_ATOM_MULTITOOL_ACT "atom_multitool_act"
///from base of atom/welder_act(): (mob/living/user, obj/item/I)
#define COMSIG_ATOM_WELDER_ACT "atom_welder_act"
///from base of atom/wirecutter_act(): (mob/living/user, obj/item/I)
#define COMSIG_ATOM_WIRECUTTER_ACT "atom_wirecutter_act"
///from base of atom/crowbar_act(): (mob/living/user, obj/item/I)
#define COMSIG_ATOM_CROWBAR_ACT "atom_crowbar_act"
///from base of atom/analyser_act(): (mob/living/user, obj/item/I)
#define COMSIG_ATOM_ANALYSER_ACT "atom_analyser_act"
	#define COMPONENT_BLOCK_TOOL_ATTACK (1<<0)
///called when teleporting into a protected turf: (channel, turf/origin)
#define COMSIG_ATOM_INTERCEPT_TELEPORT "intercept_teleport"
	#define COMPONENT_BLOCK_TELEPORT (1<<0)
///called when an atom is added to the hearers on get_hearers_in_view(): (list/processing_list, list/hearers)
#define COMSIG_ATOM_HEARER_IN_VIEW "atom_hearer_in_view"
///called when an atom starts orbiting another atom: (atom)
#define COMSIG_ATOM_ORBIT_BEGIN "atom_orbit_begin"
///called when an atom stops orbiting another atom: (atom)
#define COMSIG_ATOM_ORBIT_STOP "atom_orbit_stop"
///from base of atom/attack_ghost(): (mob/dead/observer/ghost)
#define COMSIG_ATOM_ATTACK_GHOST "atom_attack_ghost"
///from base of atom/attack_hand(): (mob/user)
#define COMSIG_ATOM_ATTACK_HAND "atom_attack_hand"
///from base of atom/attack_paw(): (mob/user)
#define COMSIG_ATOM_ATTACK_PAW "atom_attack_paw"
	#define COMPONENT_NO_ATTACK_HAND (1<<0) //works on all 3.
///from base of atom/set_opacity(): (new_opacity)
#define COMSIG_ATOM_SET_OPACITY "atom_set_opacity"

//from base of atom/movable/on_enter_storage(): (datum/component/storage/concrete/master_storage)
#define COMISG_STORAGE_ENTERED "storage_entered"
//from base of atom/movable/on_exit_storage(): (datum/component/storage/concrete/master_storage)
#define CONSIG_STORAGE_EXITED "storage_exited"

///from base of atom/expose_reagents():
#define COMSIG_ATOM_EXPOSE_REAGENTS "atom_expose_reagents"
	/// Prevents the atom from being exposed to reagents if returned on [COMPONENT_ATOM_EXPOSE_REAGENTS]
	#define COMPONENT_NO_EXPOSE_REAGENTS (1<<0)
///Called right before the atom changes the value of light_range to a different one, from base atom/set_light_range(): (new_range)
#define COMSIG_ATOM_SET_LIGHT_RANGE "atom_set_light_range"
///Called right before the atom changes the value of light_power to a different one, from base atom/set_light_power(): (new_power)
#define COMSIG_ATOM_SET_LIGHT_POWER "atom_set_light_power"
///Called right before the atom changes the value of light_color to a different one, from base atom/set_light_color(): (new_color)
#define COMSIG_ATOM_SET_LIGHT_COLOR "atom_set_light_color"
///Called right before the atom changes the value of light_on to a different one, from base atom/set_light_on(): (new_value)
#define COMSIG_ATOM_SET_LIGHT_ON "atom_set_light_on"
///Called right before the atom changes the value of light_flags to a different one, from base atom/set_light_flags(): (new_value)
#define COMSIG_ATOM_SET_LIGHT_FLAGS "atom_set_light_flags"


/////////////////

#define COMSIG_ENTER_AREA "enter_area" //from base of area/Entered(): (/area)
#define COMSIG_EXIT_AREA "exit_area" //from base of area/Exited(): (/area)

#define COMSIG_CLICK "atom_click" //from base of atom/Click(): (location, control, params, mob/user)
#define COMSIG_CLICK_SHIFT "shift_click" //from base of atom/ShiftClick(): (/mob)
	#define COMPONENT_ALLOW_EXAMINATE 1 //Allows the user to examinate regardless of client.eye.
#define COMSIG_CLICK_CTRL "ctrl_click" //from base of atom/CtrlClickOn(): (/mob)
#define COMSIG_CLICK_ALT "alt_click" //from base of atom/AltClick(): (/mob)
#define COMSIG_CLICK_CTRL_SHIFT "ctrl_shift_click" //from base of atom/CtrlShiftClick(/mob)
#define COMSIG_MOUSEDROP_ONTO "mousedrop_onto" //from base of atom/MouseDrop(): (/atom/over, /mob/user)
	#define COMPONENT_NO_MOUSEDROP 1
#define COMSIG_MOUSEDROPPED_ONTO "mousedropped_onto" //from base of atom/MouseDrop_T: (/atom/from, /mob/user)

///from base of area/proc/power_change(): ()
#define COMSIG_AREA_POWER_CHANGE "area_power_change"
///from base of area/Entered(): (atom/movable/M)
#define COMSIG_AREA_ENTERED "area_entered"
///from base of area/Exited(): (atom/movable/M)
#define COMSIG_AREA_EXITED "area_exited"

// /turf signals

///from base of turf/ChangeTurf(): (path, list/new_baseturfs, flags, list/transferring_comps)
#define COMSIG_TURF_CHANGE "turf_change"
///from base of atom/has_gravity(): (atom/asker, list/forced_gravities)
#define COMSIG_TURF_HAS_GRAVITY "turf_has_gravity"
///from base of turf/multiz_turf_del(): (turf/source, direction)
#define COMSIG_TURF_MULTIZ_DEL "turf_multiz_del"
///from base of turf/multiz_turf_new: (turf/source, direction)
#define COMSIG_TURF_MULTIZ_NEW "turf_multiz_new"

// /atom/movable signals

///from base of atom/movable/Moved(): (/atom)
#define COMSIG_MOVABLE_PRE_MOVE "movable_pre_move"
	#define COMPONENT_MOVABLE_BLOCK_PRE_MOVE (1<<0)
///from base of atom/movable/Moved(): (/atom, dir)
#define COMSIG_MOVABLE_MOVED "movable_moved"
///from base of atom/movable/Cross(): (/atom/movable)
#define COMSIG_MOVABLE_CROSS "movable_cross"
///from base of atom/movable/Bump(): (/atom)
#define COMSIG_MOVABLE_BUMP "movable_bump"
///from base of atom/movable/throw_impact(): (/atom/hit_atom, /datum/thrownthing/throwingdatum)
#define COMSIG_MOVABLE_IMPACT "movable_impact"
	#define COMPONENT_MOVABLE_IMPACT_FLIP_HITPUSH (1<<0) //if true, flip if the impact will push what it hits
	#define COMPONENT_MOVABLE_IMPACT_NEVERMIND (1<<1) //return true if you destroyed whatever it was you're impacting and there won't be anything for hitby() to run on
///from base of mob/living/hitby(): (mob/living/target, hit_zone)
#define COMSIG_MOVABLE_IMPACT_ZONE "item_impact_zone"
///from base of atom/movable/buckle_mob(): (mob, force)
#define COMSIG_MOVABLE_BUCKLE "buckle"
///from base of atom/movable/unbuckle_mob(): (mob, force)
#define COMSIG_MOVABLE_UNBUCKLE "unbuckle"
///from base of atom/movable/throw_at(): (list/args)
#define COMSIG_MOVABLE_PRE_THROW "movable_pre_throw"
	#define COMPONENT_CANCEL_THROW (1<<0)
///from base of atom/movable/throw_at(): (datum/thrownthing, spin)
#define COMSIG_MOVABLE_POST_THROW "movable_post_throw"
///from base of atom/movable/onTransitZ(): (old_z, new_z)
#define COMSIG_MOVABLE_Z_CHANGED "movable_ztransit"
///called when the movable is placed in an unaccessible area, used for shiploving: ()
#define COMSIG_MOVABLE_SECLUDED_LOCATION "movable_secluded"
///from base of atom/movable/Hear(): (proc args list(message, atom/movable/speaker, message_language, raw_message, radio_freq, list/spans, list/message_mods = list()))
#define COMSIG_MOVABLE_HEAR "movable_hear"
	#define HEARING_MESSAGE 1
	#define HEARING_SPEAKER 2
//	#define HEARING_LANGUAGE 3
	#define HEARING_RAW_MESSAGE 4
	/* #define HEARING_RADIO_FREQ 5
	#define HEARING_SPANS 6
	#define HEARING_MESSAGE_MODE 7 */

///called when the movable is added to a disposal holder object for disposal movement: (obj/structure/disposalholder/holder, obj/machinery/disposal/source)
#define COMSIG_MOVABLE_DISPOSING "movable_disposing"
///called when the movable sucessfully has it's anchored var changed, from base atom/movable/set_anchored(): (value)
#define COMSIG_MOVABLE_SET_ANCHORED "movable_set_anchored"
///from base of atom/movable/setGrabState(): (newstate)
#define COMSIG_MOVABLE_SET_GRAB_STATE "living_set_grab_state"
///Called when the movable tries to change its dynamic light color setting, from base atom/movable/lighting_overlay_set_color(): (color)
#define COMSIG_MOVABLE_LIGHT_OVERLAY_SET_RANGE "movable_light_overlay_set_color"
///Called when the movable tries to change its dynamic light power setting, from base atom/movable/lighting_overlay_set_power(): (power)
#define COMSIG_MOVABLE_LIGHT_OVERLAY_SET_POWER "movable_light_overlay_set_power"
///Called when the movable tries to change its dynamic light range setting, from base atom/movable/lighting_overlay_set_range(): (range)
#define COMSIG_MOVABLE_LIGHT_OVERLAY_SET_COLOR "movable_light_overlay_set_range"
///Called when the movable tries to toggle its dynamic light LIGHTING_ON status, from base atom/movable/lighting_overlay_toggle_on(): (new_state)
#define COMSIG_MOVABLE_LIGHT_OVERLAY_TOGGLE_ON "movable_light_overlay_toggle_on"
///called when the movable's glide size is updated: (new_glide_size)
#define COMSIG_MOVABLE_UPDATE_GLIDE_SIZE "movable_glide_size"
/// from base of atom/movable/Process_Spacemove(): (movement_dir, continuous_move)
#define COMSIG_MOVABLE_SPACEMOVE "spacemove"
	#define COMSIG_MOVABLE_STOP_SPACEMOVE (1<<0)
	///from datum/component/drift/apply_initial_visuals(): ()
#define COMSIG_MOVABLE_DRIFT_VISUAL_ATTEMPT "movable_drift_visual_attempt"
	#define DRIFT_VISUAL_FAILED (1<<0)
	///from datum/component/drift/allow_final_movement(): ()
#define COMSIG_MOVABLE_DRIFT_BLOCK_INPUT "movable_drift_block_input"
	#define DRIFT_ALLOW_INPUT (1<<0)

///signal sent out by an atom when it checks if it can be pulled, for additional checks
#define COMSIG_ATOM_CAN_BE_PULLED "movable_can_be_pulled"
	#define COMSIG_ATOM_CANT_PULL (1 << 0)
///signal sent out by an atom when it is no longer being pulled by something else
#define COMSIG_ATOM_NO_LONGER_PULLED "movable_no_longer_pulled"
///signal sent out by an atom when it is no longer pulling something : (atom/pulling)
#define COMSIG_ATOM_NO_LONGER_PULLING "movable_no_longer_pulling"
///called for each movable in a turf contents on /turf/zImpact(): (atom/movable/A, levels)
#define COMSIG_ATOM_INTERCEPT_Z_FALL "movable_intercept_z_impact"
///called on a movable (NOT living) when it starts pulling (atom/movable/pulled, state, force)
#define COMSIG_ATOM_START_PULL "movable_start_pull"
///called on /living when someone starts pulling (atom/movable/pulled, state, force)
#define COMSIG_LIVING_START_PULL "living_start_pull"
///called on /living when someone is pulled (mob/living/puller)
#define COMSIG_LIVING_GET_PULLED "living_start_pulled"
///called on /living, when pull is attempted, but before it completes, from base of [/mob/living/start_pulling]: (atom/movable/thing, force)
#define COMSIG_LIVING_TRY_PULL "living_try_pull"
	#define COMSIG_LIVING_CANCEL_PULL (1 << 0)
/// Called from /mob/living/update_pull_movespeed
#define COMSIG_LIVING_UPDATING_PULL_MOVESPEED "living_updating_pull_movespeed"
/// Called from /mob/living/PushAM -- Called when this mob is about to push a movable, but before it moves
/// (aotm/movable/being_pushed)
#define COMSIG_LIVING_PUSHING_MOVABLE "living_pushing_movable"
///from base of [/atom/proc/interact]: (mob/user)
#define COMSIG_ATOM_UI_INTERACT "atom_ui_interact"
///called on /living when attempting to pick up an item, from base of /mob/living/put_in_hand_check(): (obj/item/I)
#define COMSIG_LIVING_TRY_PUT_IN_HAND "living_try_put_in_hand"
	/// Can't pick up
	#define COMPONENT_LIVING_CANT_PUT_IN_HAND (1<<0)

// /mob signals

///from base of /mob/Login(): ()
#define COMSIG_MOB_LOGIN "mob_login"
///from base of /mob/Logout(): ()
#define COMSIG_MOB_LOGOUT "mob_logout"
/// Raised by SSserver_maint in fire() on a mob when its client is found to be newly inactive.
#define COMSIG_MOB_GO_INACTIVE "mob_go_afk"
///from base of mob/death(): (gibbed)
#define COMSIG_MOB_DEATH "mob_death"
///from base of mob/set_stat(): (new_stat)
#define COMSIG_MOB_STATCHANGE "mob_statchange"
///from base of mob/clickon(): (atom/A, params)
#define COMSIG_MOB_CLICKON "mob_clickon"
///from base of mob/MiddleClickOn(): (atom/A)
#define COMSIG_MOB_MIDDLECLICKON "mob_middleclickon"
///from base of mob/AltClickOn(): (atom/A)
#define COMSIG_MOB_ALTCLICKON "mob_altclickon"
	#define COMSIG_MOB_CANCEL_CLICKON (1<<0)

/// From base of /client/Move()
#define COMSIG_MOB_CLIENT_PRE_MOVE "mob_client_pre_move"
	/// Should always match COMPONENT_MOVABLE_BLOCK_PRE_MOVE as these are interchangeable and used to block movement.
	#define COMSIG_MOB_CLIENT_BLOCK_PRE_MOVE COMPONENT_MOVABLE_BLOCK_PRE_MOVE
	/// From base of /client/Move()
#define COMSIG_MOB_CLIENT_PRE_LIVING_MOVE "mob_client_pre_living_move"
	/// Should we stop the current living movement attempt
	#define COMSIG_MOB_CLIENT_BLOCK_PRE_LIVING_MOVE COMPONENT_MOVABLE_BLOCK_PRE_MOVE
/// From base of /client/Move()
#define COMSIG_MOB_CLIENT_MOVED "mob_client_moved"
/// From base of /client/proc/change_view() (mob/source, new_size)
#define COMSIG_MOB_CLIENT_CHANGE_VIEW "mob_client_change_view"
/// From base of /mob/proc/reset_perspective() (mob/source)
#define COMSIG_MOB_RESET_PERSPECTIVE "mob_reset_perspective"
/// from base of /client/proc/set_eye() : (atom/old_eye, atom/new_eye)
#define COMSIG_CLIENT_SET_EYE "client_set_eye"
/// from base of /datum/view_data/proc/afterViewChange() : (view)
#define COMSIG_VIEWDATA_UPDATE "viewdata_update"
///from mind/transfer_to. Sent to the receiving mob.
#define COMSIG_MOB_MIND_TRANSFERRED_INTO "mob_mind_transferred_into"

///From base of mob/living/MobBump() (mob/living)
#define COMSIG_LIVING_MOB_BUMP "living_mob_bump"

///from base of obj/allowed(mob/M): (/obj) returns bool, if TRUE the mob has id access to the obj
#define COMSIG_MOB_ALLOWED "mob_allowed"
///from base of mob/anti_magic_check(): (mob/user, magic, holy, tinfoil, chargecost, self, protection_sources)
#define COMSIG_MOB_RECEIVE_MAGIC "mob_receive_magic"
	#define COMPONENT_BLOCK_MAGIC (1<<0)
///from base of mob/create_mob_hud(): ()
#define COMSIG_MOB_HUD_CREATED "mob_hud_created"
///from base of atom/attack_hand(): (mob/user)
#define COMSIG_MOB_ATTACK_HAND "mob_attack_hand"
///from base of /obj/item/attack(): (mob/M, mob/user)
#define COMSIG_MOB_ITEM_ATTACK "mob_item_attack"
	#define COMPONENT_ITEM_NO_ATTACK (1<<0)
///from base of /mob/living/proc/apply_damage(): (damage, damagetype, def_zone)
#define COMSIG_MOB_APPLY_DAMGE "mob_apply_damage"
///from base of obj/item/afterattack(): (atom/target, mob/user, proximity_flag, click_parameters)
#define COMSIG_MOB_ITEM_AFTERATTACK "mob_item_afterattack"
///from base of obj/item/attack_qdeleted(): (atom/target, mob/user, proxiumity_flag, click_parameters)
#define COMSIG_MOB_ITEM_ATTACK_QDELETED "mob_item_attack_qdeleted"
///from base of mob/RangedAttack(): (atom/A, params)
#define COMSIG_MOB_ATTACK_RANGED "mob_attack_ranged"
///from base of /mob/throw_item(): (atom/target)
#define COMSIG_MOB_THROW "mob_throw"
///from base of /mob/verb/examinate(): (atom/target)
#define COMSIG_MOB_EXAMINATE "mob_examinate"
///from /mob/living/handle_eye_contact(): (mob/living/other_mob)
#define COMSIG_MOB_EYECONTACT "mob_eyecontact"
	/// return this if you want to block printing this message to this person, if you want to print your own (does not affect the other person's message)
	#define COMSIG_BLOCK_EYECONTACT (1<<0)
///from base of /mob/update_sight(): ()
#define COMSIG_MOB_UPDATE_SIGHT "mob_update_sight"
////from /mob/living/say(): ()
#define COMSIG_MOB_SAY "mob_say"
	#define COMPONENT_UPPERCASE_SPEECH (1<<0)
	// used to access COMSIG_MOB_SAY argslist
	#define SPEECH_MESSAGE 1
	// #define SPEECH_BUBBLE_TYPE 2
	#define SPEECH_SPANS 3
	// #define SPEECH_SANITIZE 4 - WS edit - lizard tongues don't hiss when speaking Draconic
	#define SPEECH_LANGUAGE 5
	/* #define SPEECH_IGNORE_SPAM 6
	#define SPEECH_FORCED 7 */

///from /mob/say_dead(): (mob/speaker, message)
#define COMSIG_MOB_DEADSAY "mob_deadsay"
	#define MOB_DEADSAY_SIGNAL_INTERCEPT (1<<0)
///from /mob/living/emote(): ()
#define COMSIG_MOB_EMOTE "mob_emote"
///from base of mob/swap_hand(): (obj/item)
#define COMSIG_MOB_SWAP_HANDS "mob_swap_hands"
	#define COMPONENT_BLOCK_SWAP (1<<0)

///from base of mob/living/resist() (/mob/living)
#define COMSIG_LIVING_RESIST "living_resist"
///from base of mob/living/look_up() (/mob/living)
#define COMSIG_LIVING_LOOK_UP "living_look_up"
///from base of mob/living/IgniteMob() (/mob/living)
#define COMSIG_LIVING_IGNITED "living_ignite"
///from base of mob/living/ExtinguishMob() (/mob/living)
#define COMSIG_LIVING_EXTINGUISHED "living_extinguished"
///from base of mob/living/electrocute_act(): (shock_damage, source, siemens_coeff, flags)
#define COMSIG_LIVING_ELECTROCUTE_ACT "living_electrocute_act"
///sent when items with siemen coeff. of 0 block a shock: (power_source, source, siemens_coeff, dist_check)
#define COMSIG_LIVING_SHOCK_PREVENTED "living_shock_prevented"
///sent by stuff like stunbatons and tasers: ()
#define COMSIG_LIVING_MINOR_SHOCK "living_minor_shock"
///from base of mob/living/revive() (full_heal, admin_revive)
#define COMSIG_LIVING_REVIVE "living_revive"
///from base of /mob/living/regenerate_limbs(): (noheal, excluded_limbs)
#define COMSIG_LIVING_REGENERATE_LIMBS "living_regen_limbs"
///from base of /obj/item/bodypart/proc/attach_limb(): (new_limb, special) allows you to fail limb attachment
#define COMSIG_LIVING_ATTACH_LIMB "living_attach_limb"
	#define COMPONENT_NO_ATTACH 1
///from base of mob/living/set_buckled(): (new_buckled)
#define COMSIG_LIVING_SET_BUCKLED "living_set_buckled"

///sent from borg recharge stations: (amount, repairs)
#define COMSIG_PROCESS_BORGCHARGER_OCCUPANT "living_charge"
///sent from borg mobs to itself, for tools to catch an upcoming destroy() due to safe decon (rather than detonation)
#define COMSIG_BORG_SAFE_DECONSTRUCT "borg_safe_decon"

///sent when a mob/login() finishes: (client)
#define COMSIG_MOB_CLIENT_LOGIN "comsig_mob_client_login"
//from base of client/MouseDown(): (/client, object, location, control, params)
#define COMSIG_CLIENT_MOUSEDOWN "client_mousedown"
//from base of client/MouseUp(): (/client, object, location, control, params)
#define COMSIG_CLIENT_MOUSEUP "client_mouseup"
	#define COMPONENT_CLIENT_MOUSEUP_INTERCEPT (1<<0)
//from base of client/MouseUp(): (/client, object, location, control, params)
#define COMSIG_CLIENT_MOUSEDRAG "client_mousedrag"

//ALL OF THESE DO NOT TAKE INTO ACCOUNT WHETHER AMOUNT IS 0 OR LOWER AND ARE SENT REGARDLESS!

///from base of mob/living/Stun() (amount, ignore_canstun)
#define COMSIG_LIVING_STATUS_STUN "living_stun"
///from base of mob/living/Knockdown() (amount, ignore_canstun)
#define COMSIG_LIVING_STATUS_KNOCKDOWN "living_knockdown"
///from base of mob/living/Paralyze() (amount, ignore_canstun)
#define COMSIG_LIVING_STATUS_PARALYZE "living_paralyze"
///from base of mob/living/Immobilize() (amount, ignore_canstun)
#define COMSIG_LIVING_STATUS_IMMOBILIZE "living_immobilize"
///from base of mob/living/Unconscious() (amount, ignore_canstun)
#define COMSIG_LIVING_STATUS_UNCONSCIOUS "living_unconscious"
///from base of mob/living/Sleeping() (amount, ignore_canstun)
#define COMSIG_LIVING_STATUS_SLEEP "living_sleeping"
	#define COMPONENT_NO_STUN (1<<0) //For all of them
///from base of /mob/living/can_track(): (mob/user)
#define COMSIG_LIVING_CAN_TRACK "mob_cantrack"
	#define COMPONENT_CANT_TRACK (1<<0)

///From /datum/component/creamed/Initialize()
#define COMSIG_MOB_CREAMED "mob_creamed"
///From /obj/item/gun/proc/check_botched()
#define COMSIG_MOB_CLUMSY_SHOOT_FOOT "mob_clumsy_shoot_foot"

///When a carbon mob hugs someone, this is called on the carbon that is hugging. (mob/living/hugger, mob/living/hugged)
#define COMSIG_CARBON_HUG "carbon_hug"
///When a carbon mob is hugged, this is called on the carbon that is hugged. (mob/living/hugger)
#define COMSIG_CARBON_HUGGED "carbon_hugged"
///When a carbon mob is headpatted, this is called on the carbon that is headpatted. (mob/living/headpatter)
#define COMSIG_CARBON_HEADPAT "carbon_headpatted"

///When a carbon slips. Called on /turf/open/handle_slip()
#define COMSIG_ON_CARBON_SLIP "carbon_slip"
///When a carbon gets a vending machine tilted on them
#define COMSIG_ON_VENDOR_CRUSH "carbon_vendor_crush"
///from base of mob/living/carbon/soundbang_act(): (list(intensity))
#define COMSIG_CARBON_SOUNDBANG "carbon_soundbang"
///from /item/organ/proc/Insert() (/obj/item/organ/)
#define COMSIG_CARBON_GAIN_ORGAN "carbon_gain_organ"
///from /item/organ/proc/Remove() (/obj/item/organ/)
#define COMSIG_CARBON_LOSE_ORGAN "carbon_lose_organ"
///from /mob/living/carbon/doUnEquip(obj/item/I, force, newloc, no_move, invdrop, silent)
#define COMSIG_CARBON_EQUIP_HAT "carbon_equip_hat"
///from /mob/living/carbon/doUnEquip(obj/item/I, force, newloc, no_move, invdrop, silent)
#define COMSIG_CARBON_UNEQUIP_HAT "carbon_unequip_hat"
///defined twice, in carbon and human's topics, fired when interacting with a valid embedded_object to pull it out (mob/living/carbon/target, /obj/item, /obj/item/bodypart/L)
#define COMSIG_CARBON_EMBED_RIP "item_embed_start_rip"
///called when removing a given item from a mob, from mob/living/carbon/remove_embedded_object(mob/living/carbon/target, /obj/item)
#define COMSIG_CARBON_EMBED_REMOVAL "item_embed_remove_safe"

// /mob/living/simple_animal/hostile signals
#define COMSIG_HOSTILE_ATTACKINGTARGET "hostile_attackingtarget"
	#define COMPONENT_HOSTILE_NO_ATTACK 1

// /obj signals

///from base of obj/deconstruct(): (disassembled)
#define COMSIG_OBJ_DECONSTRUCT "obj_deconstruct"
///from base of code/game/machinery
#define COMSIG_OBJ_DEFAULT_UNFASTEN_WRENCH "obj_default_unfasten_wrench"
///from base of /turf/proc/levelupdate(). (intact) true to hide and false to unhide
#define COMSIG_OBJ_HIDE "obj_hide"
/// from base of [/atom/proc/obj_destruction]: (damage_flag)
#define COMSIG_OBJ_DESTRUCTION "obj_destruction"

/// from base of /obj/item/slimepotion/speed/afterattack(): (obj/target, /obj/src, mob/user)
#define COMSIG_SPEED_POTION_APPLIED "speed_potion"
	#define SPEED_POTION_STOP (1<<0)

// /obj/machinery signals

///from /obj/machinery/obj_break(damage_flag): (damage_flag)
#define COMSIG_MACHINERY_BROKEN "machinery_broken"
///from base power_change() when power is lost
#define COMSIG_MACHINERY_POWER_LOST "machinery_power_lost"
///from base power_change() when power is restored
#define COMSIG_MACHINERY_POWER_RESTORED "machinery_power_restored"

// /obj/machinery/power/supermatter_crystal signals
/// from /obj/machinery/power/supermatter_crystal/process_atmos(); when the SM delam reaches the point of sounding alarms
#define COMSIG_SUPERMATTER_DELAM_START_ALARM "sm_delam_start_alarm"
/// from /obj/machinery/power/supermatter_crystal/process_atmos(); when the SM sounds an audible alarm
#define COMSIG_SUPERMATTER_DELAM_ALARM "sm_delam_alarm"

///from base of obj/item/equipped(): (/mob/equipper, slot)
#define COMSIG_ITEM_EQUIPPED "item_equip"
/// A mob has just equipped an item. Called on [/mob] from base of [/obj/item/equipped()]: (/obj/item/equipped_item, slot)
#define COMSIG_MOB_EQUIPPED_ITEM "mob_equipped_item"
/// A mob has just unequipped an item.
#define COMSIG_MOB_UNEQUIPPED_ITEM "mob_unequipped_item"
///called on [/obj/item] before unequip from base of [mob/proc/doUnEquip]: (force, atom/newloc, no_move, invdrop, silent)
#define COMSIG_ITEM_PRE_UNEQUIP "item_pre_unequip"
	///only the pre unequip can be cancelled
	#define COMPONENT_ITEM_BLOCK_UNEQUIP (1<<0)
///called on [/obj/item] AFTER unequip from base of [mob/proc/doUnEquip]: (force, atom/newloc, no_move, invdrop, silent)
#define COMSIG_ITEM_POST_UNEQUIP "item_post_unequip"
///from base of obj/item/on_grind(): ())
#define COMSIG_ITEM_ON_GRIND "on_grind"
///from base of obj/item/on_juice(): ()
#define COMSIG_ITEM_ON_JUICE "on_juice"
///from /obj/machinery/hydroponics/attackby(obj/item/O, mob/user, params) when an object is used as compost: (mob/user)
#define COMSIG_ITEM_ON_COMPOSTED "on_composted"
///Called when an item is dried by a drying rack:
#define COMSIG_ITEM_DRIED "item_dried"
///from base of obj/item/dropped(): (mob/user)
#define COMSIG_ITEM_DROPPED "item_drop"
///from base of obj/item/pickup(): (/mob/taker)
#define COMSIG_ITEM_PICKUP "item_pickup"

// /obj/item signals
#define COMSIG_ITEM_ATTACK "item_attack" //from base of obj/item/attack(): (/mob/living/target, /mob/living/user)
#define COMSIG_ITEM_ATTACK_SELF "item_attack_self" //from base of obj/item/attack_self(): (/mob)
	#define COMPONENT_NO_INTERACT 1
#define COMSIG_ITEM_ATTACK_OBJ "item_attack_obj" //from base of obj/item/attack_obj(): (/obj, /mob)
	#define COMPONENT_NO_ATTACK_OBJ 1
#define COMSIG_ITEM_PRE_ATTACK "item_pre_attack" //from base of obj/item/pre_attack(): (atom/target, mob/user, params)
	#define COMPONENT_NO_ATTACK 1
#define COMSIG_ITEM_AFTERATTACK "item_afterattack" //from base of obj/item/afterattack(): (atom/target, mob/user, params)
#define COMSIG_ITEM_ATTACK_QDELETED "item_attack_qdeleted" //from base of obj/item/attack_qdeleted(): (atom/target, mob/user, params)
#define COMSIG_ITEM_ATTACK_ZONE "item_attack_zone" //from base of mob/living/carbon/attacked_by(): (mob/living/carbon/target, mob/living/user, hit_zone)
#define COMSIG_ITEM_IMBUE_SOUL "item_imbue_soul" //return a truthy value to prevent ensouling, checked in /obj/effect/proc_holder/spell/targeted/lichdom/cast(): (mob/user)
#define COMSIG_ITEM_MARK_RETRIEVAL "item_mark_retrieval" //called before marking an object for retrieval, checked in /obj/effect/proc_holder/spell/targeted/summonitem/cast() : (mob/user)
	#define COMPONENT_BLOCK_MARK_RETRIEVAL 1
#define COMSIG_ITEM_HIT_REACT "item_hit_react" //from base of obj/item/hit_reaction(): (list/args)
	#define COMPONENT_HIT_REACTION_BLOCK (1<<0)
#define COMSIG_ITEM_WEARERCROSSED "wearer_crossed" //called on item when crossed by something (): (/atom/movable, mob/living/crossed)
#define COMSIG_ITEM_MICROWAVE_ACT "microwave_act" //called on item when microwaved (): (obj/machinery/microwave/M)
#define COMSIG_ITEM_SHARPEN_ACT "sharpen_act" //from base of item/sharpener/attackby(): (amount, max)
	#define COMPONENT_BLOCK_SHARPEN_APPLIED 1
	#define COMPONENT_BLOCK_SHARPEN_BLOCKED 2
	#define COMPONENT_BLOCK_SHARPEN_ALREADY 4
	#define COMPONENT_BLOCK_SHARPEN_MAXED 8
#define COMSIG_TOOL_IN_USE "tool_in_use" ///from base of [/obj/item/proc/tool_check_callback]: (mob/living/user)
#define COMSIG_TOOL_START_USE "tool_start_use" ///from base of [/obj/item/proc/tool_start_check]: (mob/living/user)
#define COMSIG_ITEM_DISABLE_EMBED "item_disable_embed" ///from [/obj/item/proc/disableEmbedding]:
#define COMSIG_MINE_TRIGGERED "minegoboom" ///from [/obj/effect/mine/proc/triggermine]:

///Called when an item is being offered, from [/obj/item/proc/on_offered(mob/living/carbon/offerer)]
#define COMSIG_ITEM_OFFERING "item_offering"
	///Interrupts the offer proc
	#define COMPONENT_OFFER_INTERRUPT (1<<0)
///Called when an someone tries accepting an offered item, from [/obj/item/proc/on_offer_taken(mob/living/carbon/offerer, mob/living/carbon/taker)]
#define COMSIG_ITEM_OFFER_TAKEN "item_offer_taken"
	///Interrupts the offer acceptance
	#define COMPONENT_OFFER_TAKE_INTERRUPT (1<<0)
/// sent from obj/effect/attackby(): (/obj/effect/hit_effect, /mob/living/attacker, params)
#define COMSIG_ITEM_ATTACK_EFFECT "item_effect_attacked"

// /obj/item signals for economy
#define COMSIG_ITEM_SOLD "item_sold" //called when an item is sold by the exports subsystem
#define COMSIG_STRUCTURE_UNWRAPPED "structure_unwrapped" //called when a wrapped up structure is opened by hand
#define COMSIG_ITEM_UNWRAPPED "item_unwrapped" //called when a wrapped up item is opened by hand
	#define COMSIG_ITEM_SPLIT_VALUE 1
#define COMSIG_ITEM_SPLIT_PROFIT "item_split_profits" //Called when getting the item's exact ratio for cargo's profit.
#define COMSIG_ITEM_SPLIT_PROFIT_DRY "item_split_profits_dry" //Called when getting the item's exact ratio for cargo's profit, without selling the item.


// /obj/item/clothing signals
#define COMSIG_SHOES_STEP_ACTION "shoes_step_action" //from base of obj/item/clothing/shoes/proc/step_action(): ()
#define COMSIG_SUIT_SPACE_TOGGLE "suit_space_toggle" //from base of /obj/item/clothing/suit/space/proc/toggle_spacesuit(): (obj/item/clothing/suit/space/suit)

// /obj/item/implant signals
#define COMSIG_IMPLANT_ACTIVATED "implant_activated" //from base of /obj/item/implant/proc/activate(): ()
#define COMSIG_IMPLANT_IMPLANTING "implant_implanting" //from base of /obj/item/implant/proc/implant(): (list/args)
	#define COMPONENT_STOP_IMPLANTING 1
#define COMSIG_IMPLANT_OTHER "implant_other" //called on already installed implants when a new one is being added in /obj/item/implant/proc/implant(): (list/args, obj/item/implant/new_implant)
	//#define COMPONENT_STOP_IMPLANTING 1 //The name makes sense for both
	#define COMPONENT_DELETE_NEW_IMPLANT 2
	#define COMPONENT_DELETE_OLD_IMPLANT 4
#define COMSIG_IMPLANT_EXISTING_UPLINK "implant_uplink_exists"	//called on implants being implanted into someone with an uplink implant: (datum/component/uplink)
	//This uses all return values of COMSIG_IMPLANT_OTHER

// /obj/item/pda signals
#define COMSIG_PDA_CHANGE_RINGTONE "pda_change_ringtone" //called on pda when the user changes the ringtone: (mob/living/user, new_ringtone)
	#define COMPONENT_STOP_RINGTONE_CHANGE 1
#define COMSIG_PDA_CHECK_DETONATE "pda_check_detonate"
	#define COMPONENT_PDA_NO_DETONATE 1

// /obj/item/radio signals
#define COMSIG_RADIO_NEW_FREQUENCY "radio_new_frequency" //called from base of /obj/item/radio/proc/set_frequency(): (list/args)

// /obj/item/pen signals
#define COMSIG_PEN_ROTATED "pen_rotated" //called after rotation in /obj/item/pen/attack_self(): (rotation, mob/living/carbon/user)

// /obj/item/gun signals
#define COMSIG_MOB_FIRED_GUN "mob_fired_gun" //called in /obj/item/gun/process_fire (user, target, params, zone_override)

// /obj/item/grenade signals
#define COMSIG_GRENADE_PRIME "grenade_prime" //called in /obj/item/gun/process_fire (user, target, params, zone_override)
#define COMSIG_GRENADE_ARMED "grenade_armed" //called in /obj/item/gun/process_fire (user, target, params, zone_override)

// /obj/projectile signals (sent to the firer)
#define COMSIG_PROJECTILE_SELF_ON_HIT "projectile_self_on_hit" // from base of /obj/projectile/proc/on_hit(): (atom/movable/firer, atom/target, Angle)
#define COMSIG_PROJECTILE_ON_HIT "projectile_on_hit" // from base of /obj/projectile/proc/on_hit(): (atom/movable/firer, atom/target, Angle)
#define COMSIG_PROJECTILE_BEFORE_FIRE "projectile_before_fire" // from base of /obj/projectile/proc/fire(): (obj/projectile, atom/original_target)
#define COMSIG_PROJECTILE_FIRE "projectile_fire" // from the base of /obj/projectile/proc/fire(): ()
#define COMSIG_PROJECTILE_PREHIT "com_proj_prehit" // sent to targets during the process_hit proc of projectiles
#define COMSIG_PROJECTILE_RANGE_OUT "projectile_range_out" // sent to targets during the process_hit proc of projectiles
#define COMSIG_EMBED_TRY_FORCE "item_try_embed" // sent when trying to force an embed (mainly for projectiles, only used in the embed element)

#define COMSIG_PELLET_CLOUD_INIT "pellet_cloud_init" // sent to targets during the process_hit proc of projectiles

// /obj/mecha signals
#define COMSIG_MECHA_ACTION_ACTIVATE "mecha_action_activate"	//sent from mecha action buttons to the mecha they're linked to

// /mob/living/carbon/human signals
#define COMSIG_HUMAN_EARLY_UNARMED_ATTACK "human_early_unarmed_attack" //from mob/living/carbon/human/UnarmedAttack(): (atom/target, proximity)
#define COMSIG_HUMAN_MELEE_UNARMED_ATTACK "human_melee_unarmed_attack" //from mob/living/carbon/human/UnarmedAttack(): (atom/target, proximity)
#define COMSIG_HUMAN_MELEE_UNARMED_ATTACKBY "human_melee_unarmed_attackby" //from mob/living/carbon/human/UnarmedAttack(): (mob/living/carbon/human/attacker)
#define COMSIG_HUMAN_DISARM_HIT "human_disarm_hit"	//Hit by successful disarm attack (mob/living/carbon/human/attacker,zone_targeted)
#define COMSIG_JOB_RECEIVED "job_received" //Whenever EquipRanked is called, called after job is set

// /datum/species signals
#define COMSIG_SPECIES_GAIN "species_gain" //from datum/species/on_species_gain(): (datum/species/new_species, datum/species/old_species)
#define COMSIG_SPECIES_LOSS "species_loss" //from datum/species/on_species_loss(): (datum/species/lost_species)

// /datum/song signals
#define COMSIG_SONG_START "song_start" //sent to the instrument when a song starts playing
#define COMSIG_SONG_END "song_end" //sent to the instrument when a song stops playing

/*******Component Specific Signals*******/
//Janitor

///(): Returns bitflags of wet values.
#define COMSIG_TURF_IS_WET "check_turf_wet"
///(max_strength, immediate, duration_decrease = INFINITY): Returns bool.
#define COMSIG_TURF_MAKE_DRY "make_turf_try"

///Called on an object to "clean it", such as removing blood decals/overlays, etc. The clean types bitfield is sent with it. Return TRUE if any cleaning was necessary and thus performed.
#define COMSIG_COMPONENT_CLEAN_ACT "clean_act"

//Creamed
#define COMSIG_COMPONENT_CLEAN_FACE_ACT "clean_face_act" //called when you wash your face at a sink: (num/strength)

//Food
#define COMSIG_FOOD_EATEN "food_eaten" //from base of obj/item/reagent_containers/food/snacks/attack(): (mob/living/eater, mob/feeder)

//Gibs
#define COMSIG_GIBS_STREAK "gibs_streak" // from base of /obj/effect/decal/cleanable/blood/gibs/streak(): (list/directions, list/diseases)

//Mood
#define COMSIG_ADD_MOOD_EVENT "add_mood" //Called when you send a mood event from anywhere in the code.
#define COMSIG_ADD_MOOD_EVENT_RND "RND_add_mood" //Mood event that only RnD members listen for
#define COMSIG_CLEAR_MOOD_EVENT "clear_mood" //Called when you clear a mood event from anywhere in the code.

//NTnet
#define COMSIG_COMPONENT_NTNET_RECEIVE "ntnet_receive" //called on an object by its NTNET connection component on receive. (sending_id(number), sending_netname(text), data(datum/netdata))

//Nanites
#define COMSIG_HAS_NANITES "has_nanites" //() returns TRUE if nanites are found
#define COMSIG_NANITE_IS_STEALTHY "nanite_is_stealthy" //() returns TRUE if nanites have stealth
#define COMSIG_NANITE_DELETE "nanite_delete" //() deletes the nanite component
#define COMSIG_NANITE_GET_PROGRAMS "nanite_get_programs" //(list/nanite_programs) - makes the input list a copy the nanites' program list
#define COMSIG_NANITE_GET_VOLUME "nanite_get_volume" //(amount) Returns nanite amount
#define COMSIG_NANITE_SET_VOLUME "nanite_set_volume" //(amount) Sets current nanite volume to the given amount
#define COMSIG_NANITE_ADJUST_VOLUME "nanite_adjust" //(amount) Adjusts nanite volume by the given amount
#define COMSIG_NANITE_SET_MAX_VOLUME "nanite_set_max_volume"	//(amount) Sets maximum nanite volume to the given amount
#define COMSIG_NANITE_SET_CLOUD "nanite_set_cloud" //(amount(0-100)) Sets cloud ID to the given amount
#define COMSIG_NANITE_SET_CLOUD_SYNC "nanite_set_cloud_sync"	//(method) Modify cloud sync status. Method can be toggle, enable or disable
#define COMSIG_NANITE_SET_SAFETY "nanite_set_safety" //(amount) Sets safety threshold to the given amount
#define COMSIG_NANITE_SET_REGEN "nanite_set_regen" //(amount) Sets regeneration rate to the given amount
#define COMSIG_NANITE_SIGNAL "nanite_signal" //(code(1-9999)) Called when sending a nanite signal to a mob.
#define COMSIG_NANITE_COMM_SIGNAL "nanite_comm_signal" //(comm_code(1-9999), comm_message) Called when sending a nanite comm signal to a mob.
#define COMSIG_NANITE_SCAN "nanite_scan" //(mob/user, full_scan) - sends to chat a scan of the nanites to the user, returns TRUE if nanites are detected
#define COMSIG_NANITE_UI_DATA "nanite_ui_data" //(list/data, scan_level) - adds nanite data to the given data list - made for ui_data procs
#define COMSIG_NANITE_ADD_PROGRAM "nanite_add_program" //(datum/nanite_program/new_program, datum/nanite_program/source_program) Called when adding a program to a nanite component
	#define COMPONENT_PROGRAM_INSTALLED 1 //Installation successful
	#define COMPONENT_PROGRAM_NOT_INSTALLED 2 //Installation failed, but there are still nanites
#define COMSIG_NANITE_SYNC "nanite_sync" //(datum/component/nanites, full_overwrite, copy_activation) Called to sync the target's nanites to a given nanite component

// /datum/component/storage signals
#define COMSIG_CONTAINS_STORAGE "is_storage" //() - returns bool.
#define COMSIG_TRY_STORAGE_INSERT "storage_try_insert" //(obj/item/inserting, mob/user, silent, force) - returns bool
#define COMSIG_TRY_STORAGE_SHOW "storage_show_to" //(mob/show_to, force) - returns bool.
#define COMSIG_TRY_STORAGE_HIDE_FROM "storage_hide_from" //(mob/hide_from) - returns bool
#define COMSIG_TRY_STORAGE_HIDE_ALL "storage_hide_all" //returns bool
#define COMSIG_TRY_STORAGE_SET_LOCKSTATE "storage_lock_set_state" //(newstate)
#define COMSIG_IS_STORAGE_LOCKED "storage_get_lockstate" //() - returns bool. MUST CHECK IF STORAGE IS THERE FIRST!
#define COMSIG_TRY_STORAGE_TAKE_TYPE "storage_take_type" //(type, atom/destination, amount = INFINITY, check_adjacent, force, mob/user, list/inserted) - returns bool - type can be a list of types.
#define COMSIG_TRY_STORAGE_FILL_TYPE "storage_fill_type" //(type, amount = INFINITY, force = FALSE) //don't fuck this up. Force will ignore max_items, and amount is normally clamped to max_items.
#define COMSIG_TRY_STORAGE_TAKE "storage_take_obj" //(obj, new_loc, force = FALSE) - returns bool
#define COMSIG_TRY_STORAGE_QUICK_EMPTY "storage_quick_empty" //(loc) - returns bool - if loc is null it will dump at parent location.
#define COMSIG_TRY_STORAGE_RETURN_INVENTORY "storage_return_inventory"	//(list/list_to_inject_results_into, recursively_search_inside_storages = TRUE)
#define COMSIG_TRY_STORAGE_CAN_INSERT "storage_can_equip" //(obj/item/insertion_candidate, mob/user, silent) - returns bool

// /datum/component/two_handed signals
#define COMSIG_TWOHANDED_WIELD "twohanded_wield" //from base of datum/component/two_handed/proc/wield(mob/living/carbon/user): (/mob/user)
	#define COMPONENT_TWOHANDED_BLOCK_WIELD 1
#define COMSIG_TWOHANDED_UNWIELD "twohanded_unwield" //from base of datum/component/two_handed/proc/unwield(mob/living/carbon/user): (/mob/user)

// /datum/action signals
#define COMSIG_ACTION_TRIGGER "action_trigger" //from base of datum/action/proc/Trigger(): (datum/action)
	#define COMPONENT_ACTION_BLOCK_TRIGGER 1

//Xenobio hotkeys
#define COMSIG_XENO_SLIME_CLICK_CTRL "xeno_slime_click_ctrl" //from slime CtrlClickOn(): (/mob)
#define COMSIG_XENO_SLIME_CLICK_ALT "xeno_slime_click_alt" //from slime AltClickOn(): (/mob)
#define COMSIG_XENO_SLIME_CLICK_SHIFT "xeno_slime_click_shift" //from slime ShiftClickOn(): (/mob)
#define COMSIG_XENO_TURF_CLICK_SHIFT "xeno_turf_click_shift" //from turf ShiftClickOn(): (/mob)
#define COMSIG_XENO_TURF_CLICK_CTRL "xeno_turf_click_alt" //from turf AltClickOn(): (/mob)
#define COMSIG_XENO_MONKEY_CLICK_CTRL "xeno_monkey_click_ctrl" //from monkey CtrlClickOn(): (/mob)

// /datum/overmap signals
/// From overmap Move(): (old_x, old_y)
#define COMSIG_OVERMAP_MOVED "overmap_moved"
/// From overmap Dock(): (datum/overmap)
#define COMSIG_OVERMAP_DOCK "overmap_dock"
/// From overmap Undock(): (datum/overmap)
#define COMSIG_OVERMAP_UNDOCK "overmap_undock"

/////////////////////////////////////////////////////////////////////////////////////////////////редфоks

// ---- MechComp signals - Content signals - Use these in your MechComp compatible devices ----

/// Add an input chanel for a device to send into
#define COMSIG_MECHCOMP_ADD_INPUT "mechcomp_add_input"
/// Connect two mechcomp devices together
#define COMSIG_MECHCOMP_ADD_CONFIG "mechcomp_add_config"
/// Connect two mechcomp devices together
#define COMSIG_MECHCOMP_ALLOW_MANUAL_SIGNAL "mechcomp_allow_manual_sigset"
/// Remove all connected devices
#define COMSIG_MECHCOMP_RM_ALL_CONNECTIONS "mechcomp_remove_all_connections"
/// Passing the signal of a message to all connected mechcomp devices for handling (message will be instatiated by the component)
#define COMSIG_MECHCOMP_TRANSMIT_SIGNAL "mechcomp_transmit_signal"
/// Passing a message to all connected mechcomp devices for handling
#define COMSIG_MECHCOMP_TRANSMIT_MSG "mechcomp_transmit_message"
/// Passing the stored message to all connected mechcomp devices for handling
#define COMSIG_MECHCOMP_TRANSMIT_DEFAULT_MSG "mechcomp_transmit_default_message"

// ---- MechComp signals - Internal signals - Do not use these ----

/// Receiving a message from a mechcomp device for handling
#define _COMSIG_MECHCOMP_RECEIVE_MSG "_mechcomp_receive_message"
/// Remove {the caller} from the list of transmitting devices
#define _COMSIG_MECHCOMP_RM_INCOMING "_mechcomp_remove_incoming"
/// Remove {the caller} from the list of receiving devices
#define _COMSIG_MECHCOMP_RM_OUTGOING "_mechcomp_remove_outgoing"
/// Return the component's outgoing connections
#define _COMSIG_MECHCOMP_GET_OUTGOING "_mechcomp_get_outgoing_connections"
/// Return the component's incoming connections
#define _COMSIG_MECHCOMP_GET_INCOMING "_mechcomp_get_incoming_connections"
/// Begin to connect two mechcomp devices together
#define _COMSIG_MECHCOMP_DROPCONNECT "_mechcomp_drop_connect"
/// Connect one MechComp compatible device as a receiver to a trigger. (This is meant to be a private method)
#define _COMSIG_MECHCOMP_LINK "_mechcomp_link_devices"
/// Returns 1
#define _COMSIG_MECHCOMP_COMPATIBLE "_mechcomp_check_compatibility"

// ---- MechComp Dispatch signals - Niche signals - You probably don't want to use these. ----
/// Add a filtered connection, getting user input on the filter
#define _COMSIG_MECHCOMP_DISPATCH_ADD_FILTER "_mechcomp_dispatch_add_filter"
/// Remove a filtered connection
#define _COMSIG_MECHCOMP_DISPATCH_RM_OUTGOING "_mechcomp_dispatch_remove_filter"
/// Test a signal to be sent to a connection
#define _COMSIG_MECHCOMP_DISPATCH_VALIDATE "_mechcomp_dispatch_run_filter"



/////////////////////////////////////////////////////////////////////////////////////////////////вырезанное или измененное тгшниками

//старые сигналы вайрмода??? разобраться и позже удалить
// Component signals
/// From /datum/port/output/set_output: (output_value)
#define COMSIG_PORT_SET_OUTPUT "port_set_output"
/// From /datum/port/input/set_input: (input_value)
#define COMSIG_PORT_SET_INPUT "port_set_input"
/// Sent on the output port when an input port registers on it: (datum/port/input/registered_port)
#define COMSIG_PORT_OUTPUT_CONNECT "port_output_connect"

//Портируем с вайта пытаетмся не сломать игру
///called in /obj/item/gun/fire_gun (user, target, flag, params)
#define COMSIG_GUN_TRY_FIRE "gun_try_fire"
	#define COMPONENT_CANCEL_GUN_FIRE (1<<0)
///called in /obj/item/gun/fire_gun (user, target, flag, params)
#define COMSIG_GUN_TRY_FIRE "gun_try_fire"
	#define COMPONENT_CANCEL_GUN_FIRE (1<<0)
/// When a hostile simple mob loses it's target.
#define COMSIG_HOSTILE_MOB_LOST_TARGET "hostile_mob_lost_target"
// Power signals
/// Sent when an obj/item calls item_use_power: (use_amount, user, check_only)
#define COMSIG_ITEM_POWER_USE "item_use_power"
	#define NO_COMPONENT NONE
	#define COMPONENT_POWER_SUCCESS (1<<0)
	#define COMPONENT_NO_CELL  (1<<1)
	#define COMPONENT_NO_CHARGE (1<<2)
/// Makes it so the mob can use guns regardless of tool user status
#define TRAIT_GUN_NATURAL "gunnatural"
///The gun needs to update the gun hud!
#define COMSIG_UPDATE_AMMO_HUD "update_ammo_hud"
/// /mob/living/proc/updatehealth()
#define COMSIG_MOB_RUN_ARMOR "mob_run_armor"
///called in /obj/item/gun/ballistic/process_chamber (casing)
#define COMSIG_CASING_EJECTED "casing_ejected"
