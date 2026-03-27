meta:
  id: d2data
  title: "Diablo II data"
  application: "Diablo II"
  endian: le
  bit-endian: le
  imports:
    - diablo_2_enums

doc: Extra data used for algorithms or transformations.

types:
  itemattrib_t:
    params:
      - id: stat
        type: s4
        enum: d2enum::stats
    seq:
      - id: amount
        type:
          switch-on: stat
          cases:
            d2enum::stats::strength: b8
            d2enum::stats::energy: b7
            d2enum::stats::dexterity: b7
            d2enum::stats::vitality: b7
            d2enum::stats::maxhp: b9
            d2enum::stats::maxmana: b8
            d2enum::stats::maxstamina: b8
            d2enum::stats::item_armor_percent: b9
            d2enum::stats::item_maxdamage_percent: b9
            d2enum::stats::item_mindamage_percent: b9
            d2enum::stats::tohit: b10
            d2enum::stats::toblock: b6
            d2enum::stats::mindamage: b6
            d2enum::stats::maxdamage: b7
            d2enum::stats::secondary_mindamage: b6
            d2enum::stats::secondary_maxdamage: b7
            d2enum::stats::damagepercent: b8
            d2enum::stats::manarecovery: b8
            d2enum::stats::manarecoverybonus: b8
            d2enum::stats::staminarecoverybonus: b8
            d2enum::stats::armorclass: b11
            d2enum::stats::armorclass_vs_missile: b9
            d2enum::stats::armorclass_vs_hth: b8
            d2enum::stats::normal_damage_reduction: b6
            d2enum::stats::magic_damage_reduction: b6
            d2enum::stats::damageresist: b9
            d2enum::stats::magicresist: b9
            d2enum::stats::maxmagicresist: b5
            d2enum::stats::fireresist: b9
            d2enum::stats::maxfireresist: b5
            d2enum::stats::lightresist: b9
            d2enum::stats::maxlightresist: b5
            d2enum::stats::coldresist: b9
            d2enum::stats::maxcoldresist: b5
            d2enum::stats::poisonresist: b9
            d2enum::stats::maxpoisonresist: b5
            d2enum::stats::firemindam: b8
            d2enum::stats::firemaxdam: b9
            d2enum::stats::lightmindam: b6
            d2enum::stats::lightmaxdam: b10
            d2enum::stats::magicmindam: b8
            d2enum::stats::magicmaxdam: b9
            d2enum::stats::coldmindam: b8
            d2enum::stats::coldmaxdam: b9
            d2enum::stats::coldlength: b8
            d2enum::stats::poisonmindam: b10
            d2enum::stats::poisonmaxdam: b10
            d2enum::stats::poisonlength: b9
            d2enum::stats::lifedrainmindam: b7
            d2enum::stats::manadrainmindam: b7
            d2enum::stats::velocitypercent: b7
            d2enum::stats::attackrate: b7
            d2enum::stats::value: b8
            d2enum::stats::durability: b9
            d2enum::stats::maxdurability: b8
            d2enum::stats::hpregen: b6
            d2enum::stats::item_maxdurability_percent: b7
            d2enum::stats::item_maxhp_percent: b6
            d2enum::stats::item_maxmana_percent: b6
            d2enum::stats::item_attackertakesdamage: b7
            d2enum::stats::item_goldbonus: b9
            d2enum::stats::item_magicbonus: b8
            d2enum::stats::item_knockback: b7
            d2enum::stats::item_timeduration: b9
            d2enum::stats::item_addclassskills: b3
            d2enum::stats::item_addexperience: b9
            d2enum::stats::item_healafterkill: b7
            d2enum::stats::item_reducedprices: b7
            d2enum::stats::item_doubleherbduration: b1
            d2enum::stats::item_lightradius: b4
            d2enum::stats::item_lightcolor: b24
            d2enum::stats::item_req_percent: b8
            d2enum::stats::item_levelreq: b7
            d2enum::stats::item_fasterattackrate: b7
            d2enum::stats::item_levelreqpct: b7
            d2enum::stats::item_fastermovevelocity: b7
            d2enum::stats::item_nonclassskill: b6
            d2enum::stats::state: b1
            d2enum::stats::item_fastergethitrate: b7
            d2enum::stats::item_fasterblockrate: b7
            d2enum::stats::item_fastercastrate: b7
            d2enum::stats::item_singleskill: b3
            d2enum::stats::item_restinpeace: b1
            d2enum::stats::curse_resistance: b9
            d2enum::stats::item_poisonlengthresist: b8
            d2enum::stats::item_normaldamage: b9
            d2enum::stats::item_howl: b7
            d2enum::stats::item_stupidity: b7
            d2enum::stats::item_damagetomana: b6
            d2enum::stats::item_ignoretargetac: b1
            d2enum::stats::item_fractionaltargetac: b7
            d2enum::stats::item_preventheal: b7
            d2enum::stats::item_halffreezeduration: b1
            d2enum::stats::item_tohit_percent: b9
            d2enum::stats::item_damagetargetac: b7
            d2enum::stats::item_demondamage_percent: b9
            d2enum::stats::item_undeaddamage_percent: b9
            d2enum::stats::item_demon_tohit: b10
            d2enum::stats::item_undead_tohit: b10
            d2enum::stats::item_throwable: b1
            d2enum::stats::item_elemskill: b3
            d2enum::stats::item_allskills: b3
            d2enum::stats::item_attackertakeslightdamage: b5
            d2enum::stats::item_freeze: b5
            d2enum::stats::item_openwounds: b7
            d2enum::stats::item_crushingblow: b7
            d2enum::stats::item_kickdamage: b7
            d2enum::stats::item_manaafterkill: b7
            d2enum::stats::item_healafterdemonkill: b7
            d2enum::stats::item_extrablood: b7
            d2enum::stats::item_deadlystrike: b7
            d2enum::stats::item_absorbfire_percent: b7
            d2enum::stats::item_absorbfire: b7
            d2enum::stats::item_absorblight_percent: b7
            d2enum::stats::item_absorblight: b7
            d2enum::stats::item_absorbmagic_percent: b7
            d2enum::stats::item_absorbmagic: b7
            d2enum::stats::item_absorbcold_percent: b7
            d2enum::stats::item_absorbcold: b7
            d2enum::stats::item_slow: b7
            d2enum::stats::item_aura: b5
            d2enum::stats::item_indesctructible: b1
            d2enum::stats::item_cannotbefrozen: b1
            d2enum::stats::item_staminadrainpct: b7
            d2enum::stats::item_reanimate: b7
            d2enum::stats::item_pierce: b7
            d2enum::stats::item_magicarrow: b7
            d2enum::stats::item_explosivearrow: b7
            d2enum::stats::item_throw_mindamage: b6
            d2enum::stats::item_throw_maxdamage: b7
            d2enum::stats::attack_vs_montype: b9
            d2enum::stats::damage_vs_montype: b9
            d2enum::stats::fade: b3
            d2enum::stats::bonus_mindamage: b8
            d2enum::stats::bonus_maxdamage: b8
            d2enum::stats::item_pierce_cold_immunity: b10
            d2enum::stats::item_addskill_tab: b3
            d2enum::stats::item_pierce_fire_immunity: b10
            d2enum::stats::item_pierce_light_immunity: b10
            d2enum::stats::item_pierce_poison_immunity: b10
            d2enum::stats::item_pierce_damage_immunity: b10
            d2enum::stats::item_pierce_magic_immunity: b10
            d2enum::stats::item_numsockets: b4
            d2enum::stats::item_skillonattack: b7
            d2enum::stats::item_skillonkill: b7
            d2enum::stats::item_skillondeath: b7
            d2enum::stats::item_skillonhit: b7
            d2enum::stats::item_skillonlevelup: b7
            d2enum::stats::item_charge_noconsume: b7
            d2enum::stats::item_skillongethit: b7
            d2enum::stats::item_charged_skill: b16
            d2enum::stats::item_noconsume: b7
            d2enum::stats::passive_mastery_noconsume: b8
            d2enum::stats::passive_mastery_replenish_oncrit: b8
            d2enum::stats::passive_mastery_gethit_rate: b8
            d2enum::stats::passive_mastery_attack_speed: b8
            d2enum::stats::item_armor_perlevel: b6
            d2enum::stats::item_armorpercent_perlevel: b6
            d2enum::stats::item_hp_perlevel: b6
            d2enum::stats::item_mana_perlevel: b6
            d2enum::stats::item_maxdamage_perlevel: b6
            d2enum::stats::item_maxdamage_percent_perlevel: b6
            d2enum::stats::item_strength_perlevel: b6
            d2enum::stats::item_dexterity_perlevel: b6
            d2enum::stats::item_energy_perlevel: b6
            d2enum::stats::item_vitality_perlevel: b6
            d2enum::stats::item_tohit_perlevel: b6
            d2enum::stats::item_tohitpercent_perlevel: b6
            d2enum::stats::item_cold_damagemax_perlevel: b6
            d2enum::stats::item_fire_damagemax_perlevel: b6
            d2enum::stats::item_ltng_damagemax_perlevel: b6
            d2enum::stats::item_pois_damagemax_perlevel: b6
            d2enum::stats::item_resist_cold_perlevel: b6
            d2enum::stats::item_resist_fire_perlevel: b6
            d2enum::stats::item_resist_ltng_perlevel: b6
            d2enum::stats::item_resist_pois_perlevel: b6
            d2enum::stats::item_absorb_cold_perlevel: b6
            d2enum::stats::item_absorb_fire_perlevel: b6
            d2enum::stats::item_absorb_ltng_perlevel: b6
            d2enum::stats::item_absorb_pois_perlevel: b6
            d2enum::stats::item_thorns_perlevel: b5
            d2enum::stats::item_find_gold_perlevel: b6
            d2enum::stats::item_find_magic_perlevel: b6
            d2enum::stats::item_regenstamina_perlevel: b6
            d2enum::stats::item_stamina_perlevel: b6
            d2enum::stats::item_damage_demon_perlevel: b6
            d2enum::stats::item_damage_undead_perlevel: b6
            d2enum::stats::item_tohit_demon_perlevel: b6
            d2enum::stats::item_tohit_undead_perlevel: b6
            d2enum::stats::item_crushingblow_perlevel: b6
            d2enum::stats::item_openwounds_perlevel: b6
            d2enum::stats::item_kick_damage_perlevel: b6
            d2enum::stats::item_deadlystrike_perlevel: b6
            d2enum::stats::item_replenish_durability: b6
            d2enum::stats::item_replenish_quantity: b6
            d2enum::stats::item_extra_stack: b8
            d2enum::stats::item_armor_bytime: b22
            d2enum::stats::item_armorpercent_bytime: b22
            d2enum::stats::item_hp_bytime: b22
            d2enum::stats::item_mana_bytime: b22
            d2enum::stats::item_maxdamage_bytime: b22
            d2enum::stats::item_maxdamage_percent_bytime: b22
            d2enum::stats::item_strength_bytime: b22
            d2enum::stats::item_dexterity_bytime: b22
            d2enum::stats::item_energy_bytime: b22
            d2enum::stats::item_vitality_bytime: b22
            d2enum::stats::item_tohit_bytime: b22
            d2enum::stats::item_tohitpercent_bytime: b22
            d2enum::stats::item_cold_damagemax_bytime: b22
            d2enum::stats::item_fire_damagemax_bytime: b22
            d2enum::stats::item_ltng_damagemax_bytime: b22
            d2enum::stats::item_pois_damagemax_bytime: b22
            d2enum::stats::item_resist_cold_bytime: b22
            d2enum::stats::item_resist_fire_bytime: b22
            d2enum::stats::item_resist_ltng_bytime: b22
            d2enum::stats::item_resist_pois_bytime: b22
            d2enum::stats::item_absorb_cold_bytime: b22
            d2enum::stats::item_absorb_fire_bytime: b22
            d2enum::stats::item_absorb_ltng_bytime: b22
            d2enum::stats::item_absorb_pois_bytime: b22
            d2enum::stats::item_find_gold_bytime: b22
            d2enum::stats::item_find_magic_bytime: b22
            d2enum::stats::item_regenstamina_bytime: b22
            d2enum::stats::item_stamina_bytime: b22
            d2enum::stats::item_damage_demon_bytime: b22
            d2enum::stats::item_damage_undead_bytime: b22
            d2enum::stats::item_tohit_demon_bytime: b22
            d2enum::stats::item_tohit_undead_bytime: b22
            d2enum::stats::item_crushingblow_bytime: b22
            d2enum::stats::item_openwounds_bytime: b22
            d2enum::stats::item_kick_damage_bytime: b22
            d2enum::stats::item_deadlystrike_bytime: b22
            d2enum::stats::item_pierce_cold: b8
            d2enum::stats::item_pierce_fire: b8
            d2enum::stats::item_pierce_ltng: b8
            d2enum::stats::item_pierce_pois: b8
            d2enum::stats::item_extra_charges: b6
            d2enum::stats::passive_fire_mastery: b9
            d2enum::stats::passive_ltng_mastery: b9
            d2enum::stats::passive_cold_mastery: b9
            d2enum::stats::passive_pois_mastery: b9
            d2enum::stats::passive_fire_pierce: b8
            d2enum::stats::passive_ltng_pierce: b8
            d2enum::stats::passive_cold_pierce: b8
            d2enum::stats::passive_pois_pierce: b8
            d2enum::stats::passive_critical_strike: b8
            d2enum::stats::passive_dodge: b7
            d2enum::stats::passive_avoid: b7
            d2enum::stats::passive_evade: b7
            d2enum::stats::passive_warmth: b8
            d2enum::stats::passive_mastery_melee_th: b8
            d2enum::stats::passive_mastery_melee_dmg: b8
            d2enum::stats::passive_mastery_melee_crit: b8
            d2enum::stats::passive_mastery_throw_th: b8
            d2enum::stats::passive_mastery_throw_dmg: b8
            d2enum::stats::passive_mastery_throw_crit: b8
            d2enum::stats::passive_weaponblock: b8
            d2enum::stats::passive_summon_resist: b8
            d2enum::stats::questitemdifficulty: b2
            d2enum::stats::passive_mag_mastery: b9
            d2enum::stats::passive_mag_pierce: b8
            d2enum::stats::item_magic_damagemax_perlevel: b6
            d2enum::stats::passive_dmg_pierce: b8
            _: b0

  itemparam_t:
    params:
      - id: stat
        type: s4
        enum: d2enum::stats
    seq:
      - id: amount
        type:
          switch-on: stat
          cases:
            d2enum::stats::item_addclassskills: b3
            d2enum::stats::item_nonclassskill: b9
            d2enum::stats::state: b8
            d2enum::stats::item_singleskill: b9
            d2enum::stats::item_aura: b9
            d2enum::stats::item_reanimate: b10
            d2enum::stats::attack_vs_montype: b10
            d2enum::stats::damage_vs_montype: b10
            d2enum::stats::item_addskill_tab: b16
            d2enum::stats::item_skillonattack: b16
            d2enum::stats::item_skillonkill: b16
            d2enum::stats::item_skillondeath: b16
            d2enum::stats::item_skillonhit: b16
            d2enum::stats::item_skillonlevelup: b16
            d2enum::stats::item_skillongethit: b16
            d2enum::stats::item_charged_skill: b16
            _: b0

#  baseitemstattype:
#    params:
#      - id: isarmor
#        type: b1
#      - id: isweapon
#        type: b1
#      - id: isstackable
#        type: b1
#
#  armortype:
#    seq:
#      - id: stat
#        type: baseitemstattype(true, false, false)
#
#  weapontype:
#    seq:
#      - id: stat
#        type: baseitemstattype(false, true, false)
#
#  stackableweapontype:
#    seq:
#      - id: stat
#        type: baseitemstattype(false, true, true)
#
#  miscitemtype:
#    seq:
#      - id: stat
#        type: baseitemstattype(false, false, false)
#
#  stackablemiscitemtype:
#    seq:
#      - id: stat
#        type: baseitemstattype(false, false, true)

  itemcomp_util:
    params:
      - id: itemcode
        type: u4
    instances:
      isarmor:
        value: |
          itemcode == d2enum::itemcodes::cap.to_i or
          itemcode == d2enum::itemcodes::skull_cap.to_i or
          itemcode == d2enum::itemcodes::helm.to_i or
          itemcode == d2enum::itemcodes::full_helm.to_i or
          itemcode == d2enum::itemcodes::great_helm.to_i or
          itemcode == d2enum::itemcodes::crown.to_i or
          itemcode == d2enum::itemcodes::mask.to_i or
          itemcode == d2enum::itemcodes::quilted_armor.to_i or
          itemcode == d2enum::itemcodes::leather_armor.to_i or
          itemcode == d2enum::itemcodes::hard_leather_armor.to_i or
          itemcode == d2enum::itemcodes::studded_leather.to_i or
          itemcode == d2enum::itemcodes::ring_mail.to_i or
          itemcode == d2enum::itemcodes::scale_mail.to_i or
          itemcode == d2enum::itemcodes::chain_mail.to_i or
          itemcode == d2enum::itemcodes::breast_plate.to_i or
          itemcode == d2enum::itemcodes::splint_mail.to_i or
          itemcode == d2enum::itemcodes::plate_mail.to_i or
          itemcode == d2enum::itemcodes::field_plate.to_i or
          itemcode == d2enum::itemcodes::gothic_plate.to_i or
          itemcode == d2enum::itemcodes::full_plate_mail.to_i or
          itemcode == d2enum::itemcodes::ancient_armor.to_i or
          itemcode == d2enum::itemcodes::light_plate.to_i or
          itemcode == d2enum::itemcodes::buckler.to_i or
          itemcode == d2enum::itemcodes::small_shield.to_i or
          itemcode == d2enum::itemcodes::large_shield.to_i or
          itemcode == d2enum::itemcodes::kite_shield.to_i or
          itemcode == d2enum::itemcodes::tower_shield.to_i or
          itemcode == d2enum::itemcodes::gothic_shield.to_i or
          itemcode == d2enum::itemcodes::leather_gloves.to_i or
          itemcode == d2enum::itemcodes::heavy_gloves.to_i or
          itemcode == d2enum::itemcodes::chain_gloves.to_i or
          itemcode == d2enum::itemcodes::light_gauntlets.to_i or
          itemcode == d2enum::itemcodes::gauntlets.to_i or
          itemcode == d2enum::itemcodes::boots.to_i or
          itemcode == d2enum::itemcodes::heavy_boots.to_i or
          itemcode == d2enum::itemcodes::chain_boots.to_i or
          itemcode == d2enum::itemcodes::light_plated_boots.to_i or
          itemcode == d2enum::itemcodes::greaves.to_i or
          itemcode == d2enum::itemcodes::sash.to_i or
          itemcode == d2enum::itemcodes::light_belt.to_i or
          itemcode == d2enum::itemcodes::belt.to_i or
          itemcode == d2enum::itemcodes::heavy_belt.to_i or
          itemcode == d2enum::itemcodes::plated_belt.to_i or
          itemcode == d2enum::itemcodes::bone_helm.to_i or
          itemcode == d2enum::itemcodes::bone_shield.to_i or
          itemcode == d2enum::itemcodes::spiked_shield.to_i or
          itemcode == d2enum::itemcodes::war_hat.to_i or
          itemcode == d2enum::itemcodes::sallet.to_i or
          itemcode == d2enum::itemcodes::casque.to_i or
          itemcode == d2enum::itemcodes::basinet.to_i or
          itemcode == d2enum::itemcodes::winged_helm.to_i or
          itemcode == d2enum::itemcodes::grand_crown.to_i or
          itemcode == d2enum::itemcodes::death_mask.to_i or
          itemcode == d2enum::itemcodes::ghost_armor.to_i or
          itemcode == d2enum::itemcodes::serpentskin_armor.to_i or
          itemcode == d2enum::itemcodes::demonhide_armor.to_i or
          itemcode == d2enum::itemcodes::trellised_armor.to_i or
          itemcode == d2enum::itemcodes::linked_mail.to_i or
          itemcode == d2enum::itemcodes::tigulated_mail.to_i or
          itemcode == d2enum::itemcodes::mesh_armor.to_i or
          itemcode == d2enum::itemcodes::cuirass.to_i or
          itemcode == d2enum::itemcodes::russet_armor.to_i or
          itemcode == d2enum::itemcodes::templar_coat.to_i or
          itemcode == d2enum::itemcodes::sharktooth_armor.to_i or
          itemcode == d2enum::itemcodes::embossed_plate.to_i or
          itemcode == d2enum::itemcodes::chaos_armor.to_i or
          itemcode == d2enum::itemcodes::ornate_armor.to_i or
          itemcode == d2enum::itemcodes::mage_plate.to_i or
          itemcode == d2enum::itemcodes::defender.to_i or
          itemcode == d2enum::itemcodes::round_shield.to_i or
          itemcode == d2enum::itemcodes::scutum.to_i or
          itemcode == d2enum::itemcodes::dragon_shield.to_i or
          itemcode == d2enum::itemcodes::pavise.to_i or
          itemcode == d2enum::itemcodes::ancient_shield.to_i or
          itemcode == d2enum::itemcodes::demonhide_gloves.to_i or
          itemcode == d2enum::itemcodes::sharkskin_gloves.to_i or
          itemcode == d2enum::itemcodes::heavy_bracers.to_i or
          itemcode == d2enum::itemcodes::battle_gauntlets.to_i or
          itemcode == d2enum::itemcodes::war_gauntlets.to_i or
          itemcode == d2enum::itemcodes::demonhide_boots.to_i or
          itemcode == d2enum::itemcodes::sharkskin_boots.to_i or
          itemcode == d2enum::itemcodes::mesh_boots.to_i or
          itemcode == d2enum::itemcodes::battle_boots.to_i or
          itemcode == d2enum::itemcodes::war_boots.to_i or
          itemcode == d2enum::itemcodes::demonhide_sash.to_i or
          itemcode == d2enum::itemcodes::sharkskin_belt.to_i or
          itemcode == d2enum::itemcodes::mesh_belt.to_i or
          itemcode == d2enum::itemcodes::battle_belt.to_i or
          itemcode == d2enum::itemcodes::war_belt.to_i or
          itemcode == d2enum::itemcodes::grim_helm.to_i or
          itemcode == d2enum::itemcodes::grim_shield.to_i or
          itemcode == d2enum::itemcodes::barbed_shield.to_i or
          itemcode == d2enum::itemcodes::wolf_head.to_i or
          itemcode == d2enum::itemcodes::hawk_helm.to_i or
          itemcode == d2enum::itemcodes::antlers.to_i or
          itemcode == d2enum::itemcodes::falcon_mask.to_i or
          itemcode == d2enum::itemcodes::spirit_mask.to_i or
          itemcode == d2enum::itemcodes::jawbone_cap.to_i or
          itemcode == d2enum::itemcodes::fanged_helm.to_i or
          itemcode == d2enum::itemcodes::horned_helm.to_i or
          itemcode == d2enum::itemcodes::assault_helmet.to_i or
          itemcode == d2enum::itemcodes::avenger_guard.to_i or
          itemcode == d2enum::itemcodes::targe.to_i or
          itemcode == d2enum::itemcodes::rondache.to_i or
          itemcode == d2enum::itemcodes::heraldic_shield.to_i or
          itemcode == d2enum::itemcodes::aerin_shield.to_i or
          itemcode == d2enum::itemcodes::crown_shield.to_i or
          itemcode == d2enum::itemcodes::preserved_head.to_i or
          itemcode == d2enum::itemcodes::zombie_head.to_i or
          itemcode == d2enum::itemcodes::unraveller_head.to_i or
          itemcode == d2enum::itemcodes::gargoyle_head.to_i or
          itemcode == d2enum::itemcodes::demon_head.to_i or
          itemcode == d2enum::itemcodes::circlet.to_i or
          itemcode == d2enum::itemcodes::coronet.to_i or
          itemcode == d2enum::itemcodes::tiara.to_i or
          itemcode == d2enum::itemcodes::diadem.to_i or
          itemcode == d2enum::itemcodes::shako.to_i or
          itemcode == d2enum::itemcodes::hydraskull.to_i or
          itemcode == d2enum::itemcodes::armet.to_i or
          itemcode == d2enum::itemcodes::giant_conch.to_i or
          itemcode == d2enum::itemcodes::spired_helm.to_i or
          itemcode == d2enum::itemcodes::corona.to_i or
          itemcode == d2enum::itemcodes::demonhead.to_i or
          itemcode == d2enum::itemcodes::dusk_shroud.to_i or
          itemcode == d2enum::itemcodes::wyrmhide.to_i or
          itemcode == d2enum::itemcodes::scarab_husk.to_i or
          itemcode == d2enum::itemcodes::wire_fleece.to_i or
          itemcode == d2enum::itemcodes::diamond_mail.to_i or
          itemcode == d2enum::itemcodes::loricated_mail.to_i or
          itemcode == d2enum::itemcodes::boneweave.to_i or
          itemcode == d2enum::itemcodes::great_hauberk.to_i or
          itemcode == d2enum::itemcodes::balrog_skin.to_i or
          itemcode == d2enum::itemcodes::hellforge_plate.to_i or
          itemcode == d2enum::itemcodes::kraken_shell.to_i or
          itemcode == d2enum::itemcodes::lacquered_plate.to_i or
          itemcode == d2enum::itemcodes::shadow_plate.to_i or
          itemcode == d2enum::itemcodes::sacred_armor.to_i or
          itemcode == d2enum::itemcodes::archon_plate.to_i or
          itemcode == d2enum::itemcodes::heater.to_i or
          itemcode == d2enum::itemcodes::luna.to_i or
          itemcode == d2enum::itemcodes::hyperion.to_i or
          itemcode == d2enum::itemcodes::monarch.to_i or
          itemcode == d2enum::itemcodes::aegis.to_i or
          itemcode == d2enum::itemcodes::ward.to_i or
          itemcode == d2enum::itemcodes::bramble_mitts.to_i or
          itemcode == d2enum::itemcodes::vampirebone_gloves.to_i or
          itemcode == d2enum::itemcodes::vambraces.to_i or
          itemcode == d2enum::itemcodes::crusader_gauntlets.to_i or
          itemcode == d2enum::itemcodes::ogre_gauntlets.to_i or
          itemcode == d2enum::itemcodes::wyrmhide_boots.to_i or
          itemcode == d2enum::itemcodes::scarabshell_boots.to_i or
          itemcode == d2enum::itemcodes::boneweave_boots.to_i or
          itemcode == d2enum::itemcodes::mirrored_boots.to_i or
          itemcode == d2enum::itemcodes::myrmidon_greaves.to_i or
          itemcode == d2enum::itemcodes::spiderweb_sash.to_i or
          itemcode == d2enum::itemcodes::vampirefang_belt.to_i or
          itemcode == d2enum::itemcodes::mithril_coil.to_i or
          itemcode == d2enum::itemcodes::troll_belt.to_i or
          itemcode == d2enum::itemcodes::colossus_girdle.to_i or
          itemcode == d2enum::itemcodes::bone_visage.to_i or
          itemcode == d2enum::itemcodes::troll_nest.to_i or
          itemcode == d2enum::itemcodes::blade_barrier.to_i or
          itemcode == d2enum::itemcodes::alpha_helm.to_i or
          itemcode == d2enum::itemcodes::griffon_headress.to_i or
          itemcode == d2enum::itemcodes::hunters_guise.to_i or
          itemcode == d2enum::itemcodes::sacred_feathers.to_i or
          itemcode == d2enum::itemcodes::totemic_mask.to_i or
          itemcode == d2enum::itemcodes::jawbone_visor.to_i or
          itemcode == d2enum::itemcodes::lion_helm.to_i or
          itemcode == d2enum::itemcodes::rage_mask.to_i or
          itemcode == d2enum::itemcodes::savage_helmet.to_i or
          itemcode == d2enum::itemcodes::slayer_guard.to_i or
          itemcode == d2enum::itemcodes::akaran_targe.to_i or
          itemcode == d2enum::itemcodes::akaran_rondache.to_i or
          itemcode == d2enum::itemcodes::protector_shield.to_i or
          itemcode == d2enum::itemcodes::gilded_shield.to_i or
          itemcode == d2enum::itemcodes::royal_shield.to_i or
          itemcode == d2enum::itemcodes::mummified_trophy.to_i or
          itemcode == d2enum::itemcodes::fetish_trophy.to_i or
          itemcode == d2enum::itemcodes::sexton_trophy.to_i or
          itemcode == d2enum::itemcodes::cantor_trophy.to_i or
          itemcode == d2enum::itemcodes::heirophant_trophy.to_i or
          itemcode == d2enum::itemcodes::blood_spirit.to_i or
          itemcode == d2enum::itemcodes::sun_spirit.to_i or
          itemcode == d2enum::itemcodes::earth_spirit.to_i or
          itemcode == d2enum::itemcodes::sky_spirit.to_i or
          itemcode == d2enum::itemcodes::dream_spirit.to_i or
          itemcode == d2enum::itemcodes::carnage_helm.to_i or
          itemcode == d2enum::itemcodes::fury_visor.to_i or
          itemcode == d2enum::itemcodes::destroyer_helm.to_i or
          itemcode == d2enum::itemcodes::conqueror_crown.to_i or
          itemcode == d2enum::itemcodes::guardian_crown.to_i or
          itemcode == d2enum::itemcodes::sacred_targe.to_i or
          itemcode == d2enum::itemcodes::sacred_rondache.to_i or
          itemcode == d2enum::itemcodes::ancient_shield_exp.to_i or
          itemcode == d2enum::itemcodes::zakarum_shield.to_i or
          itemcode == d2enum::itemcodes::vortex_shield.to_i or
          itemcode == d2enum::itemcodes::minion_skull.to_i or
          itemcode == d2enum::itemcodes::hellspawn_skull.to_i or
          itemcode == d2enum::itemcodes::overseer_skull.to_i or
          itemcode == d2enum::itemcodes::succubus_skull.to_i or
          itemcode == d2enum::itemcodes::bloodlord_skull.to_i or
          itemcode == d2enum::itemcodes::old_book.to_i or
          itemcode == d2enum::itemcodes::tome.to_i or
          itemcode == d2enum::itemcodes::codex.to_i or
          itemcode == d2enum::itemcodes::compendium.to_i or
          itemcode == d2enum::itemcodes::grimoire.to_i or
          itemcode == d2enum::itemcodes::burnt_text.to_i or
          itemcode == d2enum::itemcodes::dark_tome.to_i or
          itemcode == d2enum::itemcodes::dark_codex.to_i or
          itemcode == d2enum::itemcodes::possessed_compendium.to_i or
          itemcode == d2enum::itemcodes::possessed_grimoire.to_i or
          itemcode == d2enum::itemcodes::forgotten_volume.to_i or
          itemcode == d2enum::itemcodes::occult_tome.to_i or
          itemcode == d2enum::itemcodes::occult_codex.to_i or
          itemcode == d2enum::itemcodes::blasphemous_compendium.to_i or
          itemcode == d2enum::itemcodes::blasphemous_grimoire.to_i
      isweapon:
        value: |
          itemcode == d2enum::itemcodes::hand_axe.to_i or
          itemcode == d2enum::itemcodes::axe.to_i or
          itemcode == d2enum::itemcodes::double_axe.to_i or
          itemcode == d2enum::itemcodes::military_pick.to_i or
          itemcode == d2enum::itemcodes::war_axe.to_i or
          itemcode == d2enum::itemcodes::large_axe.to_i or
          itemcode == d2enum::itemcodes::broad_axe.to_i or
          itemcode == d2enum::itemcodes::battle_axe.to_i or
          itemcode == d2enum::itemcodes::great_axe.to_i or
          itemcode == d2enum::itemcodes::giant_axe.to_i or
          itemcode == d2enum::itemcodes::wand.to_i or
          itemcode == d2enum::itemcodes::yew_wand.to_i or
          itemcode == d2enum::itemcodes::bone_wand.to_i or
          itemcode == d2enum::itemcodes::grim_wand.to_i or
          itemcode == d2enum::itemcodes::club.to_i or
          itemcode == d2enum::itemcodes::scepter.to_i or
          itemcode == d2enum::itemcodes::grand_scepter.to_i or
          itemcode == d2enum::itemcodes::war_scepter.to_i or
          itemcode == d2enum::itemcodes::spiked_club.to_i or
          itemcode == d2enum::itemcodes::mace.to_i or
          itemcode == d2enum::itemcodes::morning_star.to_i or
          itemcode == d2enum::itemcodes::flail.to_i or
          itemcode == d2enum::itemcodes::war_hammer.to_i or
          itemcode == d2enum::itemcodes::maul.to_i or
          itemcode == d2enum::itemcodes::great_maul.to_i or
          itemcode == d2enum::itemcodes::short_sword.to_i or
          itemcode == d2enum::itemcodes::scimitar.to_i or
          itemcode == d2enum::itemcodes::saber.to_i or
          itemcode == d2enum::itemcodes::falchion.to_i or
          itemcode == d2enum::itemcodes::crystal_sword.to_i or
          itemcode == d2enum::itemcodes::broad_sword.to_i or
          itemcode == d2enum::itemcodes::long_sword.to_i or
          itemcode == d2enum::itemcodes::war_sword.to_i or
          itemcode == d2enum::itemcodes::two_handed_sword.to_i or
          itemcode == d2enum::itemcodes::claymore.to_i or
          itemcode == d2enum::itemcodes::giant_sword.to_i or
          itemcode == d2enum::itemcodes::bastard_sword.to_i or
          itemcode == d2enum::itemcodes::flamberge.to_i or
          itemcode == d2enum::itemcodes::great_sword.to_i or
          itemcode == d2enum::itemcodes::dagger.to_i or
          itemcode == d2enum::itemcodes::dirk.to_i or
          itemcode == d2enum::itemcodes::kriss.to_i or
          itemcode == d2enum::itemcodes::blade.to_i or
          itemcode == d2enum::itemcodes::throwing_knife.to_i or
          itemcode == d2enum::itemcodes::throwing_axe.to_i or
          itemcode == d2enum::itemcodes::balanced_knife.to_i or
          itemcode == d2enum::itemcodes::balanced_axe.to_i or
          itemcode == d2enum::itemcodes::javelin.to_i or
          itemcode == d2enum::itemcodes::pilum.to_i or
          itemcode == d2enum::itemcodes::short_spear.to_i or
          itemcode == d2enum::itemcodes::glaive.to_i or
          itemcode == d2enum::itemcodes::throwing_spear.to_i or
          itemcode == d2enum::itemcodes::spear.to_i or
          itemcode == d2enum::itemcodes::trident.to_i or
          itemcode == d2enum::itemcodes::brandistock.to_i or
          itemcode == d2enum::itemcodes::spetum.to_i or
          itemcode == d2enum::itemcodes::pike.to_i or
          itemcode == d2enum::itemcodes::bardiche.to_i or
          itemcode == d2enum::itemcodes::voulge.to_i or
          itemcode == d2enum::itemcodes::scythe.to_i or
          itemcode == d2enum::itemcodes::poleaxe.to_i or
          itemcode == d2enum::itemcodes::halberd.to_i or
          itemcode == d2enum::itemcodes::war_scythe.to_i or
          itemcode == d2enum::itemcodes::short_staff.to_i or
          itemcode == d2enum::itemcodes::long_staff.to_i or
          itemcode == d2enum::itemcodes::gnarled_staff.to_i or
          itemcode == d2enum::itemcodes::battle_staff.to_i or
          itemcode == d2enum::itemcodes::war_staff.to_i or
          itemcode == d2enum::itemcodes::short_bow.to_i or
          itemcode == d2enum::itemcodes::hunters_bow.to_i or
          itemcode == d2enum::itemcodes::long_bow.to_i or
          itemcode == d2enum::itemcodes::composite_bow.to_i or
          itemcode == d2enum::itemcodes::short_battle_bow.to_i or
          itemcode == d2enum::itemcodes::long_battle_bow.to_i or
          itemcode == d2enum::itemcodes::short_war_bow.to_i or
          itemcode == d2enum::itemcodes::long_war_bow.to_i or
          itemcode == d2enum::itemcodes::light_crossbow.to_i or
          itemcode == d2enum::itemcodes::crossbow.to_i or
          itemcode == d2enum::itemcodes::heavy_crossbow.to_i or
          itemcode == d2enum::itemcodes::repeating_crossbow.to_i or
          itemcode == d2enum::itemcodes::rancid_gas_potion.to_i or
          itemcode == d2enum::itemcodes::oil_potion.to_i or
          itemcode == d2enum::itemcodes::choking_gas_potion.to_i or
          itemcode == d2enum::itemcodes::exploding_potion.to_i or
          itemcode == d2enum::itemcodes::strangling_gas_potion.to_i or
          itemcode == d2enum::itemcodes::fulminating_potion.to_i or
          itemcode == d2enum::itemcodes::decoy_gidbinn.to_i or
          itemcode == d2enum::itemcodes::the_gidbinn.to_i or
          itemcode == d2enum::itemcodes::wirts_leg.to_i or
          itemcode == d2enum::itemcodes::horadric_malus.to_i or
          itemcode == d2enum::itemcodes::hellforge_hammer.to_i or
          itemcode == d2enum::itemcodes::horadric_staff.to_i or
          itemcode == d2enum::itemcodes::staff_of_kings.to_i or
          itemcode == d2enum::itemcodes::hatchet.to_i or
          itemcode == d2enum::itemcodes::cleaver.to_i or
          itemcode == d2enum::itemcodes::twin_axe.to_i or
          itemcode == d2enum::itemcodes::crowbill.to_i or
          itemcode == d2enum::itemcodes::naga.to_i or
          itemcode == d2enum::itemcodes::military_axe.to_i or
          itemcode == d2enum::itemcodes::bearded_axe.to_i or
          itemcode == d2enum::itemcodes::tabar.to_i or
          itemcode == d2enum::itemcodes::gothic_axe.to_i or
          itemcode == d2enum::itemcodes::ancient_axe.to_i or
          itemcode == d2enum::itemcodes::burnt_wand.to_i or
          itemcode == d2enum::itemcodes::petrified_wand.to_i or
          itemcode == d2enum::itemcodes::tomb_wand.to_i or
          itemcode == d2enum::itemcodes::grave_wand.to_i or
          itemcode == d2enum::itemcodes::cudgel.to_i or
          itemcode == d2enum::itemcodes::rune_scepter.to_i or
          itemcode == d2enum::itemcodes::holy_water_sprinkler.to_i or
          itemcode == d2enum::itemcodes::divine_scepter.to_i or
          itemcode == d2enum::itemcodes::barbed_club.to_i or
          itemcode == d2enum::itemcodes::flanged_mace.to_i or
          itemcode == d2enum::itemcodes::jagged_star.to_i or
          itemcode == d2enum::itemcodes::knout.to_i or
          itemcode == d2enum::itemcodes::battle_hammer.to_i or
          itemcode == d2enum::itemcodes::war_club.to_i or
          itemcode == d2enum::itemcodes::martel_de_fer.to_i or
          itemcode == d2enum::itemcodes::gladius.to_i or
          itemcode == d2enum::itemcodes::cutlass.to_i or
          itemcode == d2enum::itemcodes::shamshir.to_i or
          itemcode == d2enum::itemcodes::tulwar.to_i or
          itemcode == d2enum::itemcodes::dimensional_blade.to_i or
          itemcode == d2enum::itemcodes::battle_sword.to_i or
          itemcode == d2enum::itemcodes::rune_sword.to_i or
          itemcode == d2enum::itemcodes::ancient_sword.to_i or
          itemcode == d2enum::itemcodes::espandon.to_i or
          itemcode == d2enum::itemcodes::dacian_falx.to_i or
          itemcode == d2enum::itemcodes::tusk_sword.to_i or
          itemcode == d2enum::itemcodes::gothic_sword.to_i or
          itemcode == d2enum::itemcodes::zweihander.to_i or
          itemcode == d2enum::itemcodes::executioner_sword.to_i or
          itemcode == d2enum::itemcodes::poignard.to_i or
          itemcode == d2enum::itemcodes::rondel.to_i or
          itemcode == d2enum::itemcodes::cinquedeas.to_i or
          itemcode == d2enum::itemcodes::stilleto.to_i or
          itemcode == d2enum::itemcodes::battle_dart.to_i or
          itemcode == d2enum::itemcodes::francisca.to_i or
          itemcode == d2enum::itemcodes::war_dart.to_i or
          itemcode == d2enum::itemcodes::hurlbat.to_i or
          itemcode == d2enum::itemcodes::war_javelin.to_i or
          itemcode == d2enum::itemcodes::great_pilum.to_i or
          itemcode == d2enum::itemcodes::simbilan.to_i or
          itemcode == d2enum::itemcodes::spiculum.to_i or
          itemcode == d2enum::itemcodes::harpoon.to_i or
          itemcode == d2enum::itemcodes::war_spear.to_i or
          itemcode == d2enum::itemcodes::fuscina.to_i or
          itemcode == d2enum::itemcodes::war_fork.to_i or
          itemcode == d2enum::itemcodes::yari.to_i or
          itemcode == d2enum::itemcodes::lance.to_i or
          itemcode == d2enum::itemcodes::lochaber_axe.to_i or
          itemcode == d2enum::itemcodes::bill.to_i or
          itemcode == d2enum::itemcodes::battle_scythe.to_i or
          itemcode == d2enum::itemcodes::partizan.to_i or
          itemcode == d2enum::itemcodes::bec_de_corbin.to_i or
          itemcode == d2enum::itemcodes::grim_scythe.to_i or
          itemcode == d2enum::itemcodes::jo_staff.to_i or
          itemcode == d2enum::itemcodes::quarterstaff.to_i or
          itemcode == d2enum::itemcodes::cedar_staff.to_i or
          itemcode == d2enum::itemcodes::gothic_staff.to_i or
          itemcode == d2enum::itemcodes::rune_staff.to_i or
          itemcode == d2enum::itemcodes::edge_bow.to_i or
          itemcode == d2enum::itemcodes::razor_bow.to_i or
          itemcode == d2enum::itemcodes::cedar_bow.to_i or
          itemcode == d2enum::itemcodes::double_bow.to_i or
          itemcode == d2enum::itemcodes::short_siege_bow.to_i or
          itemcode == d2enum::itemcodes::long_siege_bow.to_i or
          itemcode == d2enum::itemcodes::rune_bow.to_i or
          itemcode == d2enum::itemcodes::gothic_bow.to_i or
          itemcode == d2enum::itemcodes::arbalest.to_i or
          itemcode == d2enum::itemcodes::siege_crossbow.to_i or
          itemcode == d2enum::itemcodes::ballista.to_i or
          itemcode == d2enum::itemcodes::chu_ko_nu.to_i or
          itemcode == d2enum::itemcodes::khalims_flail.to_i or
          itemcode == d2enum::itemcodes::khalims_will.to_i or
          itemcode == d2enum::itemcodes::katar.to_i or
          itemcode == d2enum::itemcodes::wrist_blade.to_i or
          itemcode == d2enum::itemcodes::hatchet_hands.to_i or
          itemcode == d2enum::itemcodes::cestus.to_i or
          itemcode == d2enum::itemcodes::claws.to_i or
          itemcode == d2enum::itemcodes::blade_talons.to_i or
          itemcode == d2enum::itemcodes::scissors_katar.to_i or
          itemcode == d2enum::itemcodes::quhab.to_i or
          itemcode == d2enum::itemcodes::wrist_spike.to_i or
          itemcode == d2enum::itemcodes::fascia.to_i or
          itemcode == d2enum::itemcodes::hand_scythe.to_i or
          itemcode == d2enum::itemcodes::greater_claws.to_i or
          itemcode == d2enum::itemcodes::greater_talons.to_i or
          itemcode == d2enum::itemcodes::scissors_quhab.to_i or
          itemcode == d2enum::itemcodes::suwayyah.to_i or
          itemcode == d2enum::itemcodes::wrist_sword.to_i or
          itemcode == d2enum::itemcodes::war_fist.to_i or
          itemcode == d2enum::itemcodes::battle_cestus.to_i or
          itemcode == d2enum::itemcodes::feral_claws.to_i or
          itemcode == d2enum::itemcodes::runic_talons.to_i or
          itemcode == d2enum::itemcodes::scissors_suwayyah.to_i or
          itemcode == d2enum::itemcodes::tomahawk.to_i or
          itemcode == d2enum::itemcodes::small_crescent.to_i or
          itemcode == d2enum::itemcodes::ettin_axe.to_i or
          itemcode == d2enum::itemcodes::war_spike.to_i or
          itemcode == d2enum::itemcodes::berserker_axe.to_i or
          itemcode == d2enum::itemcodes::feral_axe.to_i or
          itemcode == d2enum::itemcodes::silver_edged_axe.to_i or
          itemcode == d2enum::itemcodes::decapitator.to_i or
          itemcode == d2enum::itemcodes::champion_axe.to_i or
          itemcode == d2enum::itemcodes::glorious_axe.to_i or
          itemcode == d2enum::itemcodes::polished_wand.to_i or
          itemcode == d2enum::itemcodes::ghost_wand.to_i or
          itemcode == d2enum::itemcodes::lich_wand.to_i or
          itemcode == d2enum::itemcodes::unearthed_wand.to_i or
          itemcode == d2enum::itemcodes::truncheon.to_i or
          itemcode == d2enum::itemcodes::mighty_scepter.to_i or
          itemcode == d2enum::itemcodes::seraph_rod.to_i or
          itemcode == d2enum::itemcodes::caduceus.to_i or
          itemcode == d2enum::itemcodes::tyrant_club.to_i or
          itemcode == d2enum::itemcodes::reinforced_mace.to_i or
          itemcode == d2enum::itemcodes::devil_star.to_i or
          itemcode == d2enum::itemcodes::scourge.to_i or
          itemcode == d2enum::itemcodes::legendary_mallet.to_i or
          itemcode == d2enum::itemcodes::ogre_maul.to_i or
          itemcode == d2enum::itemcodes::thunder_maul.to_i or
          itemcode == d2enum::itemcodes::falcata.to_i or
          itemcode == d2enum::itemcodes::ataghan.to_i or
          itemcode == d2enum::itemcodes::elegant_blade.to_i or
          itemcode == d2enum::itemcodes::hydra_edge.to_i or
          itemcode == d2enum::itemcodes::phase_blade.to_i or
          itemcode == d2enum::itemcodes::conquest_sword.to_i or
          itemcode == d2enum::itemcodes::cryptic_sword.to_i or
          itemcode == d2enum::itemcodes::mythical_sword.to_i or
          itemcode == d2enum::itemcodes::legend_sword.to_i or
          itemcode == d2enum::itemcodes::highland_blade.to_i or
          itemcode == d2enum::itemcodes::balrog_blade.to_i or
          itemcode == d2enum::itemcodes::champion_sword.to_i or
          itemcode == d2enum::itemcodes::colossal_sword.to_i or
          itemcode == d2enum::itemcodes::colossus_blade.to_i or
          itemcode == d2enum::itemcodes::bone_knife.to_i or
          itemcode == d2enum::itemcodes::mithral_point.to_i or
          itemcode == d2enum::itemcodes::fanged_knife.to_i or
          itemcode == d2enum::itemcodes::legend_spike.to_i or
          itemcode == d2enum::itemcodes::flying_knife.to_i or
          itemcode == d2enum::itemcodes::flying_axe.to_i or
          itemcode == d2enum::itemcodes::winged_knife.to_i or
          itemcode == d2enum::itemcodes::winged_axe.to_i or
          itemcode == d2enum::itemcodes::hyperion_javelin.to_i or
          itemcode == d2enum::itemcodes::stygian_pilum.to_i or
          itemcode == d2enum::itemcodes::balrog_spear.to_i or
          itemcode == d2enum::itemcodes::ghost_glaive.to_i or
          itemcode == d2enum::itemcodes::winged_harpoon.to_i or
          itemcode == d2enum::itemcodes::hyperion_spear.to_i or
          itemcode == d2enum::itemcodes::stygian_pike.to_i or
          itemcode == d2enum::itemcodes::mancatcher.to_i or
          itemcode == d2enum::itemcodes::ghost_spear.to_i or
          itemcode == d2enum::itemcodes::war_pike.to_i or
          itemcode == d2enum::itemcodes::ogre_axe.to_i or
          itemcode == d2enum::itemcodes::colossus_voulge.to_i or
          itemcode == d2enum::itemcodes::thresher.to_i or
          itemcode == d2enum::itemcodes::cryptic_axe.to_i or
          itemcode == d2enum::itemcodes::great_poleaxe.to_i or
          itemcode == d2enum::itemcodes::giant_thresher.to_i or
          itemcode == d2enum::itemcodes::walking_stick.to_i or
          itemcode == d2enum::itemcodes::stalagmite.to_i or
          itemcode == d2enum::itemcodes::elder_staff.to_i or
          itemcode == d2enum::itemcodes::shillelagh.to_i or
          itemcode == d2enum::itemcodes::archon_staff.to_i or
          itemcode == d2enum::itemcodes::spider_bow.to_i or
          itemcode == d2enum::itemcodes::blade_bow.to_i or
          itemcode == d2enum::itemcodes::shadow_bow.to_i or
          itemcode == d2enum::itemcodes::great_bow.to_i or
          itemcode == d2enum::itemcodes::diamond_bow.to_i or
          itemcode == d2enum::itemcodes::crusader_bow.to_i or
          itemcode == d2enum::itemcodes::ward_bow.to_i or
          itemcode == d2enum::itemcodes::hydra_bow.to_i or
          itemcode == d2enum::itemcodes::pellet_bow.to_i or
          itemcode == d2enum::itemcodes::gorgon_crossbow.to_i or
          itemcode == d2enum::itemcodes::colossus_crossbow.to_i or
          itemcode == d2enum::itemcodes::demon_crossbow.to_i or
          itemcode == d2enum::itemcodes::eagle_orb.to_i or
          itemcode == d2enum::itemcodes::sacred_globe.to_i or
          itemcode == d2enum::itemcodes::smoked_sphere.to_i or
          itemcode == d2enum::itemcodes::clasped_orb.to_i or
          itemcode == d2enum::itemcodes::jareds_stone.to_i or
          itemcode == d2enum::itemcodes::stag_bow.to_i or
          itemcode == d2enum::itemcodes::reflex_bow.to_i or
          itemcode == d2enum::itemcodes::maiden_spear.to_i or
          itemcode == d2enum::itemcodes::maiden_pike.to_i or
          itemcode == d2enum::itemcodes::maiden_javelin.to_i or
          itemcode == d2enum::itemcodes::glowing_orb.to_i or
          itemcode == d2enum::itemcodes::crystalline_globe.to_i or
          itemcode == d2enum::itemcodes::cloudy_sphere.to_i or
          itemcode == d2enum::itemcodes::sparkling_ball.to_i or
          itemcode == d2enum::itemcodes::swirling_crystal.to_i or
          itemcode == d2enum::itemcodes::ashwood_bow.to_i or
          itemcode == d2enum::itemcodes::ceremonial_bow.to_i or
          itemcode == d2enum::itemcodes::ceremonial_spear.to_i or
          itemcode == d2enum::itemcodes::ceremonial_pike.to_i or
          itemcode == d2enum::itemcodes::ceremonial_javelin.to_i or
          itemcode == d2enum::itemcodes::heavenly_stone.to_i or
          itemcode == d2enum::itemcodes::eldritch_orb.to_i or
          itemcode == d2enum::itemcodes::demon_heart.to_i or
          itemcode == d2enum::itemcodes::vortex_orb.to_i or
          itemcode == d2enum::itemcodes::dimensional_shard.to_i or
          itemcode == d2enum::itemcodes::matriarchal_bow.to_i or
          itemcode == d2enum::itemcodes::grand_matron_bow.to_i or
          itemcode == d2enum::itemcodes::matriarchal_spear.to_i or
          itemcode == d2enum::itemcodes::matriarchal_pike.to_i or
          itemcode == d2enum::itemcodes::matriarchal_javelin.to_i
      isstackable:
        value: |
          itemcode == d2enum::itemcodes::tome_of_town_portal.to_i or
          itemcode == d2enum::itemcodes::tome_of_identify.to_i or
          itemcode == d2enum::itemcodes::gold.to_i or
          itemcode == d2enum::itemcodes::arrows.to_i or
          itemcode == d2enum::itemcodes::bolts.to_i or
          itemcode == d2enum::itemcodes::key.to_i or
          itemcode == d2enum::itemcodes::small_red_potion.to_i or
          itemcode == d2enum::itemcodes::large_red_potion.to_i or
          itemcode == d2enum::itemcodes::small_blue_potion.to_i or
          itemcode == d2enum::itemcodes::large_blue_potion.to_i or
          itemcode == d2enum::itemcodes::throwing_knife.to_i or
          itemcode == d2enum::itemcodes::throwing_axe.to_i or
          itemcode == d2enum::itemcodes::balanced_knife.to_i or
          itemcode == d2enum::itemcodes::balanced_axe.to_i or
          itemcode == d2enum::itemcodes::javelin.to_i or
          itemcode == d2enum::itemcodes::pilum.to_i or
          itemcode == d2enum::itemcodes::short_spear.to_i or
          itemcode == d2enum::itemcodes::glaive.to_i or
          itemcode == d2enum::itemcodes::throwing_spear.to_i or
          itemcode == d2enum::itemcodes::rancid_gas_potion.to_i or
          itemcode == d2enum::itemcodes::oil_potion.to_i or
          itemcode == d2enum::itemcodes::choking_gas_potion.to_i or
          itemcode == d2enum::itemcodes::exploding_potion.to_i or
          itemcode == d2enum::itemcodes::strangling_gas_potion.to_i or
          itemcode == d2enum::itemcodes::fulminating_potion.to_i or
          itemcode == d2enum::itemcodes::battle_dart.to_i or
          itemcode == d2enum::itemcodes::francisca.to_i or
          itemcode == d2enum::itemcodes::war_dart.to_i or
          itemcode == d2enum::itemcodes::hurlbat.to_i or
          itemcode == d2enum::itemcodes::war_javelin.to_i or
          itemcode == d2enum::itemcodes::great_pilum.to_i or
          itemcode == d2enum::itemcodes::simbilan.to_i or
          itemcode == d2enum::itemcodes::spiculum.to_i or
          itemcode == d2enum::itemcodes::harpoon.to_i or
          itemcode == d2enum::itemcodes::flying_knife.to_i or
          itemcode == d2enum::itemcodes::flying_axe.to_i or
          itemcode == d2enum::itemcodes::winged_knife.to_i or
          itemcode == d2enum::itemcodes::winged_axe.to_i or
          itemcode == d2enum::itemcodes::hyperion_javelin.to_i or
          itemcode == d2enum::itemcodes::stygian_pilum.to_i or
          itemcode == d2enum::itemcodes::balrog_spear.to_i or
          itemcode == d2enum::itemcodes::ghost_glaive.to_i or
          itemcode == d2enum::itemcodes::winged_harpoon.to_i or
          itemcode == d2enum::itemcodes::maiden_javelin.to_i or
          itemcode == d2enum::itemcodes::ceremonial_javelin.to_i or
          itemcode == d2enum::itemcodes::matriarchal_javelin.to_i

# FIXME: instances in included modules don't get instantiated before other data is read
# FIXME: Literal 2D arrays are bugged in the C++11 compiler, making erroneous copies of unique_ptr
#instances:
#  itemstatcosttxt:
#    #["Stat", "CSvBits", "Save Bits", "Save Add", "Save Param Bits"],
#    value: |
#      [
#        [d2enum::stats::strength.to_i, 10, 8, 32, 0],
#        [d2enum::stats::energy.to_i, 10, 7, 32, 0],
#        [d2enum::stats::dexterity.to_i, 10, 7, 32, 0],
#        [d2enum::stats::vitality.to_i, 10, 7, 32, 0],
#        [d2enum::stats::statpts.to_i, 10, 0, 0, 0],
#        [d2enum::stats::newskills.to_i, 8, 0, 0, 0],
#        [d2enum::stats::hitpoints.to_i, 21, 0, 0, 0],
#        [d2enum::stats::maxhp.to_i, 21, 9, 32, 0],
#        [d2enum::stats::mana.to_i, 21, 0, 0, 0],
#        [d2enum::stats::maxmana.to_i, 21, 8, 32, 0],
#        [d2enum::stats::stamina.to_i, 21, 0, 0, 0],
#        [d2enum::stats::maxstamina.to_i, 21, 8, 32, 0],
#        [d2enum::stats::level.to_i, 7, 0, 0, 0],
#        [d2enum::stats::experience.to_i, 32, 0, 0, 0],
#        [d2enum::stats::gold.to_i, 25, 0, 0, 0],
#        [d2enum::stats::goldbank.to_i, 25, 0, 0, 0],
#        [d2enum::stats::item_armor_percent.to_i, 0, 9, 0, 0],
#        [d2enum::stats::item_maxdamage_percent.to_i, 0, 9, 0, 0],
#        [d2enum::stats::item_mindamage_percent.to_i, 0, 9, 0, 0],
#        [d2enum::stats::tohit.to_i, 0, 10, 0, 0],
#        [d2enum::stats::toblock.to_i, 0, 6, 0, 0],
#        [d2enum::stats::mindamage.to_i, 0, 6, 0, 0],
#        [d2enum::stats::maxdamage.to_i, 0, 7, 0, 0],
#        [d2enum::stats::secondary_mindamage.to_i, 0, 6, 0, 0],
#        [d2enum::stats::secondary_maxdamage.to_i, 0, 7, 0, 0],
#        [d2enum::stats::damagepercent.to_i, 0, 8, 0, 0],
#        [d2enum::stats::manarecovery.to_i, 0, 8, 0, 0],
#        [d2enum::stats::manarecoverybonus.to_i, 0, 8, 0, 0],
#        [d2enum::stats::staminarecoverybonus.to_i, 0, 8, 0, 0],
#        [d2enum::stats::lastexp.to_i, 0, 0, 0, 0],
#        [d2enum::stats::nextexp.to_i, 0, 0, 0, 0],
#        [d2enum::stats::armorclass.to_i, 0, 11, 10, 0],
#        [d2enum::stats::armorclass_vs_missile.to_i, 0, 9, 0, 0],
#        [d2enum::stats::armorclass_vs_hth.to_i, 0, 8, 0, 0],
#        [d2enum::stats::normal_damage_reduction.to_i, 0, 6, 0, 0],
#        [d2enum::stats::magic_damage_reduction.to_i, 0, 6, 0, 0],
#        [d2enum::stats::damageresist.to_i, 0, 9, 200, 0],
#        [d2enum::stats::magicresist.to_i, 0, 9, 200, 0],
#        [d2enum::stats::maxmagicresist.to_i, 0, 5, 0, 0],
#        [d2enum::stats::fireresist.to_i, 0, 9, 200, 0],
#        [d2enum::stats::maxfireresist.to_i, 0, 5, 0, 0],
#        [d2enum::stats::lightresist.to_i, 0, 9, 200, 0],
#        [d2enum::stats::maxlightresist.to_i, 0, 5, 0, 0],
#        [d2enum::stats::coldresist.to_i, 0, 9, 200, 0],
#        [d2enum::stats::maxcoldresist.to_i, 0, 5, 0, 0],
#        [d2enum::stats::poisonresist.to_i, 0, 9, 200, 0],
#        [d2enum::stats::maxpoisonresist.to_i, 0, 5, 0, 0],
#        [d2enum::stats::damageaura.to_i, 0, 0, 0, 0],
#        [d2enum::stats::firemindam.to_i, 0, 8, 0, 0],
#        [d2enum::stats::firemaxdam.to_i, 0, 9, 0, 0],
#        [d2enum::stats::lightmindam.to_i, 0, 6, 0, 0],
#        [d2enum::stats::lightmaxdam.to_i, 0, 10, 0, 0],
#        [d2enum::stats::magicmindam.to_i, 0, 8, 0, 0],
#        [d2enum::stats::magicmaxdam.to_i, 0, 9, 0, 0],
#        [d2enum::stats::coldmindam.to_i, 0, 8, 0, 0],
#        [d2enum::stats::coldmaxdam.to_i, 0, 9, 0, 0],
#        [d2enum::stats::coldlength.to_i, 0, 8, 0, 0],
#        [d2enum::stats::poisonmindam.to_i, 0, 10, 0, 0],
#        [d2enum::stats::poisonmaxdam.to_i, 0, 10, 0, 0],
#        [d2enum::stats::poisonlength.to_i, 0, 9, 0, 0],
#        [d2enum::stats::lifedrainmindam.to_i, 0, 7, 0, 0],
#        [d2enum::stats::lifedrainmaxdam.to_i, 0, 0, 0, 0],
#        [d2enum::stats::manadrainmindam.to_i, 0, 7, 0, 0],
#        [d2enum::stats::manadrainmaxdam.to_i, 0, 0, 0, 0],
#        [d2enum::stats::stamdrainmindam.to_i, 0, 0, 0, 0],
#        [d2enum::stats::stamdrainmaxdam.to_i, 0, 0, 0, 0],
#        [d2enum::stats::stunlength.to_i, 0, 0, 0, 0],
#        [d2enum::stats::velocitypercent.to_i, 0, 7, 30, 0],
#        [d2enum::stats::attackrate.to_i, 0, 7, 30, 0],
#        [d2enum::stats::other_animrate.to_i, 0, 0, 0, 0],
#        [d2enum::stats::quantity.to_i, 0, 0, 0, 0],
#        [d2enum::stats::value.to_i, 0, 8, 100, 0],
#        [d2enum::stats::durability.to_i, 0, 9, 0, 0],
#        [d2enum::stats::maxdurability.to_i, 0, 8, 0, 0],
#        [d2enum::stats::hpregen.to_i, 0, 6, 30, 0],
#        [d2enum::stats::item_maxdurability_percent.to_i, 0, 7, 20, 0],
#        [d2enum::stats::item_maxhp_percent.to_i, 0, 6, 10, 0],
#        [d2enum::stats::item_maxmana_percent.to_i, 0, 6, 10, 0],
#        [d2enum::stats::item_attackertakesdamage.to_i, 0, 7, 0, 0],
#        [d2enum::stats::item_goldbonus.to_i, 0, 9, 100, 0],
#        [d2enum::stats::item_magicbonus.to_i, 0, 8, 100, 0],
#        [d2enum::stats::item_knockback.to_i, 0, 7, 0, 0],
#        [d2enum::stats::item_timeduration.to_i, 0, 9, 20, 0],
#        [d2enum::stats::item_addclassskills.to_i, 0, 3, 0, 3],
#        [d2enum::stats::unsentparam1.to_i, 0, 0, 0, 0],
#        [d2enum::stats::item_addexperience.to_i, 0, 9, 50, 0],
#        [d2enum::stats::item_healafterkill.to_i, 0, 7, 0, 0],
#        [d2enum::stats::item_reducedprices.to_i, 0, 7, 0, 0],
#        [d2enum::stats::item_doubleherbduration.to_i, 0, 1, 0, 0],
#        [d2enum::stats::item_lightradius.to_i, 0, 4, 4, 0],
#        [d2enum::stats::item_lightcolor.to_i, 0, 24, 0, 0],
#        [d2enum::stats::item_req_percent.to_i, 0, 8, 100, 0],
#        [d2enum::stats::item_levelreq.to_i, 0, 7, 0, 0],
#        [d2enum::stats::item_fasterattackrate.to_i, 0, 7, 20, 0],
#        [d2enum::stats::item_levelreqpct.to_i, 0, 7, 64, 0],
#        [d2enum::stats::lastblockframe.to_i, 0, 0, 0, 0],
#        [d2enum::stats::item_fastermovevelocity.to_i, 0, 7, 20, 0],
#        [d2enum::stats::item_nonclassskill.to_i, 0, 6, 0, 9],
#        [d2enum::stats::state.to_i, 0, 1, 0, 8],
#        [d2enum::stats::item_fastergethitrate.to_i, 0, 7, 20, 0],
#        [d2enum::stats::monster_playercount.to_i, 0, 0, 0, 0],
#        [d2enum::stats::skill_poison_override_length.to_i, 0, 0, 0, 0],
#        [d2enum::stats::item_fasterblockrate.to_i, 0, 7, 20, 0],
#        [d2enum::stats::skill_bypass_undead.to_i, 0, 0, 0, 0],
#        [d2enum::stats::skill_bypass_demons.to_i, 0, 0, 0, 0],
#        [d2enum::stats::item_fastercastrate.to_i, 0, 7, 20, 0],
#        [d2enum::stats::skill_bypass_beasts.to_i, 0, 0, 0, 0],
#        [d2enum::stats::item_singleskill.to_i, 0, 3, 0, 9],
#        [d2enum::stats::item_restinpeace.to_i, 0, 1, 0, 0],
#        [d2enum::stats::curse_resistance.to_i, 0, 9, 0, 0],
#        [d2enum::stats::item_poisonlengthresist.to_i, 0, 8, 20, 0],
#        [d2enum::stats::item_normaldamage.to_i, 0, 9, 20, 0],
#        [d2enum::stats::item_howl.to_i, 0, 7, -1, 0],
#        [d2enum::stats::item_stupidity.to_i, 0, 7, 0, 0],
#        [d2enum::stats::item_damagetomana.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_ignoretargetac.to_i, 0, 1, 0, 0],
#        [d2enum::stats::item_fractionaltargetac.to_i, 0, 7, 0, 0],
#        [d2enum::stats::item_preventheal.to_i, 0, 7, 0, 0],
#        [d2enum::stats::item_halffreezeduration.to_i, 0, 1, 0, 0],
#        [d2enum::stats::item_tohit_percent.to_i, 0, 9, 20, 0],
#        [d2enum::stats::item_damagetargetac.to_i, 0, 7, 128, 0],
#        [d2enum::stats::item_demondamage_percent.to_i, 0, 9, 20, 0],
#        [d2enum::stats::item_undeaddamage_percent.to_i, 0, 9, 20, 0],
#        [d2enum::stats::item_demon_tohit.to_i, 0, 10, 128, 0],
#        [d2enum::stats::item_undead_tohit.to_i, 0, 10, 128, 0],
#        [d2enum::stats::item_throwable.to_i, 0, 1, 0, 0],
#        [d2enum::stats::item_elemskill.to_i, 0, 3, 0, 3],
#        [d2enum::stats::item_allskills.to_i, 0, 3, 0, 0],
#        [d2enum::stats::item_attackertakeslightdamage.to_i, 0, 5, 0, 0],
#        [d2enum::stats::ironmaiden_level.to_i, 0, 0, 0, 0],
#        [d2enum::stats::lifetap_level.to_i, 0, 0, 0, 0],
#        [d2enum::stats::thorns_percent.to_i, 0, 0, 0, 0],
#        [d2enum::stats::bonearmor.to_i, 0, 0, 0, 0],
#        [d2enum::stats::bonearmormax.to_i, 0, 0, 0, 0],
#        [d2enum::stats::item_freeze.to_i, 0, 5, 0, 0],
#        [d2enum::stats::item_openwounds.to_i, 0, 7, 0, 0],
#        [d2enum::stats::item_crushingblow.to_i, 0, 7, 0, 0],
#        [d2enum::stats::item_kickdamage.to_i, 0, 7, 0, 0],
#        [d2enum::stats::item_manaafterkill.to_i, 0, 7, 0, 0],
#        [d2enum::stats::item_healafterdemonkill.to_i, 0, 7, 0, 0],
#        [d2enum::stats::item_extrablood.to_i, 0, 7, 0, 0],
#        [d2enum::stats::item_deadlystrike.to_i, 0, 7, 0, 0],
#        [d2enum::stats::item_absorbfire_percent.to_i, 0, 7, 0, 0],
#        [d2enum::stats::item_absorbfire.to_i, 0, 7, 0, 0],
#        [d2enum::stats::item_absorblight_percent.to_i, 0, 7, 0, 0],
#        [d2enum::stats::item_absorblight.to_i, 0, 7, 0, 0],
#        [d2enum::stats::item_absorbmagic_percent.to_i, 0, 7, 0, 0],
#        [d2enum::stats::item_absorbmagic.to_i, 0, 7, 0, 0],
#        [d2enum::stats::item_absorbcold_percent.to_i, 0, 7, 0, 0],
#        [d2enum::stats::item_absorbcold.to_i, 0, 7, 0, 0],
#        [d2enum::stats::item_slow.to_i, 0, 7, 0, 0],
#        [d2enum::stats::item_aura.to_i, 0, 5, 0, 9],
#        [d2enum::stats::item_indesctructible.to_i, 0, 1, 0, 0],
#        [d2enum::stats::item_cannotbefrozen.to_i, 0, 1, 0, 0],
#        [d2enum::stats::item_staminadrainpct.to_i, 0, 7, 20, 0],
#        [d2enum::stats::item_reanimate.to_i, 0, 7, 0, 10],
#        [d2enum::stats::item_pierce.to_i, 0, 7, 0, 0],
#        [d2enum::stats::item_magicarrow.to_i, 0, 7, 0, 0],
#        [d2enum::stats::item_explosivearrow.to_i, 0, 7, 0, 0],
#        [d2enum::stats::item_throw_mindamage.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_throw_maxdamage.to_i, 0, 7, 0, 0],
#        [d2enum::stats::skill_handofathena.to_i, 0, 0, 0, 0],
#        [d2enum::stats::skill_staminapercent.to_i, 0, 0, 0, 0],
#        [d2enum::stats::skill_passive_staminapercent.to_i, 0, 0, 0, 0],
#        [d2enum::stats::skill_concentration.to_i, 0, 0, 0, 0],
#        [d2enum::stats::skill_enchant.to_i, 0, 0, 0, 0],
#        [d2enum::stats::skill_pierce.to_i, 0, 0, 0, 0],
#        [d2enum::stats::skill_conviction.to_i, 0, 0, 0, 0],
#        [d2enum::stats::skill_chillingarmor.to_i, 0, 0, 0, 0],
#        [d2enum::stats::skill_frenzy.to_i, 0, 0, 0, 0],
#        [d2enum::stats::skill_decrepify.to_i, 0, 0, 0, 0],
#        [d2enum::stats::skill_armor_percent.to_i, 0, 0, 0, 0],
#        [d2enum::stats::alignment.to_i, 0, 0, 0, 0],
#        [d2enum::stats::target0.to_i, 0, 0, 0, 0],
#        [d2enum::stats::target1.to_i, 0, 0, 0, 0],
#        [d2enum::stats::goldlost.to_i, 0, 0, 0, 0],
#        [d2enum::stats::conversion_level.to_i, 0, 0, 0, 0],
#        [d2enum::stats::conversion_maxhp.to_i, 0, 0, 0, 0],
#        [d2enum::stats::unit_dooverlay.to_i, 0, 0, 0, 0],
#        [d2enum::stats::attack_vs_montype.to_i, 0, 9, 0, 10],
#        [d2enum::stats::damage_vs_montype.to_i, 0, 9, 0, 10],
#        [d2enum::stats::fade.to_i, 0, 3, 0, 0],
#        [d2enum::stats::armor_override_percent.to_i, 0, 0, 0, 0],
#        [d2enum::stats::lasthitreactframe.to_i, 0, 0, 0, 0],
#        [d2enum::stats::create_season.to_i, 0, 0, 0, 0],
#        [d2enum::stats::bonus_mindamage.to_i, 0, 8, 0, 0],
#        [d2enum::stats::bonus_maxdamage.to_i, 0, 8, 0, 0],
#        [d2enum::stats::item_pierce_cold_immunity.to_i, 0, 10, 0, 0],
#        [d2enum::stats::item_addskill_tab.to_i, 0, 3, 0, 16],
#        [d2enum::stats::item_pierce_fire_immunity.to_i, 0, 10, 0, 0],
#        [d2enum::stats::item_pierce_light_immunity.to_i, 0, 10, 0, 0],
#        [d2enum::stats::item_pierce_poison_immunity.to_i, 0, 10, 0, 0],
#        [d2enum::stats::item_pierce_damage_immunity.to_i, 0, 10, 0, 0],
#        [d2enum::stats::item_pierce_magic_immunity.to_i, 0, 10, 0, 0],
#        [d2enum::stats::item_numsockets.to_i, 0, 4, 0, 0],
#        [d2enum::stats::item_skillonattack.to_i, 0, 7, 0, 16],
#        [d2enum::stats::item_skillonkill.to_i, 0, 7, 0, 16],
#        [d2enum::stats::item_skillondeath.to_i, 0, 7, 0, 16],
#        [d2enum::stats::item_skillonhit.to_i, 0, 7, 0, 16],
#        [d2enum::stats::item_skillonlevelup.to_i, 0, 7, 0, 16],
#        [d2enum::stats::item_charge_noconsume.to_i, 0, 7, 0, 0],
#        [d2enum::stats::item_skillongethit.to_i, 0, 7, 0, 16],
#        [d2enum::stats::modifierlist_castid.to_i, 0, 0, 0, 0],
#        [d2enum::stats::passive_mastery_item_req_percent.to_i, 0, 0, 0, 0],
#        [d2enum::stats::item_charged_skill.to_i, 0, 16, 0, 16],
#        [d2enum::stats::item_noconsume.to_i, 0, 7, 0, 0],
#        [d2enum::stats::passive_mastery_noconsume.to_i, 0, 8, 0, 0],
#        [d2enum::stats::passive_mastery_replenish_oncrit.to_i, 0, 8, 0, 0],
#        [d2enum::stats::missile_thorns_percent.to_i, 0, 0, 0, 0],
#        [d2enum::stats::passive_mastery_item_level_req_percent.to_i, 0, 0, 0, 0],
#        [d2enum::stats::ua_escalation.to_i, 0, 0, 0, 0],
#        [d2enum::stats::ua_defeated.to_i, 0, 0, 0, 0],
#        [d2enum::stats::passive_mastery_gethit_rate.to_i, 0, 8, 0, 0],
#        [d2enum::stats::passive_mastery_attack_speed.to_i, 0, 8, 0, 0],
#        [d2enum::stats::item_armor_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_armorpercent_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_hp_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_mana_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_maxdamage_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_maxdamage_percent_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_strength_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_dexterity_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_energy_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_vitality_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_tohit_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_tohitpercent_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_cold_damagemax_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_fire_damagemax_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_ltng_damagemax_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_pois_damagemax_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_resist_cold_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_resist_fire_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_resist_ltng_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_resist_pois_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_absorb_cold_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_absorb_fire_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_absorb_ltng_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_absorb_pois_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_thorns_perlevel.to_i, 0, 5, 0, 0],
#        [d2enum::stats::item_find_gold_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_find_magic_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_regenstamina_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_stamina_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_damage_demon_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_damage_undead_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_tohit_demon_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_tohit_undead_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_crushingblow_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_openwounds_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_kick_damage_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_deadlystrike_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_find_gems_perlevel.to_i, 0, 0, 0, 0],
#        [d2enum::stats::item_replenish_durability.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_replenish_quantity.to_i, 0, 6, 0, 0],
#        [d2enum::stats::item_extra_stack.to_i, 0, 8, 0, 0],
#        [d2enum::stats::item_find_item.to_i, 0, 0, 0, 0],
#        [d2enum::stats::item_slash_damage.to_i, 0, 0, 0, 0],
#        [d2enum::stats::item_slash_damage_percent.to_i, 0, 0, 0, 0],
#        [d2enum::stats::item_crush_damage.to_i, 0, 0, 0, 0],
#        [d2enum::stats::item_crush_damage_percent.to_i, 0, 0, 0, 0],
#        [d2enum::stats::item_thrust_damage.to_i, 0, 0, 0, 0],
#        [d2enum::stats::item_thrust_damage_percent.to_i, 0, 0, 0, 0],
#        [d2enum::stats::item_absorb_slash.to_i, 0, 0, 0, 0],
#        [d2enum::stats::item_absorb_crush.to_i, 0, 0, 0, 0],
#        [d2enum::stats::item_absorb_thrust.to_i, 0, 0, 0, 0],
#        [d2enum::stats::item_absorb_slash_percent.to_i, 0, 0, 0, 0],
#        [d2enum::stats::item_absorb_crush_percent.to_i, 0, 0, 0, 0],
#        [d2enum::stats::item_absorb_thrust_percent.to_i, 0, 0, 0, 0],
#        [d2enum::stats::item_armor_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_armorpercent_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_hp_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_mana_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_maxdamage_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_maxdamage_percent_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_strength_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_dexterity_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_energy_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_vitality_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_tohit_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_tohitpercent_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_cold_damagemax_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_fire_damagemax_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_ltng_damagemax_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_pois_damagemax_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_resist_cold_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_resist_fire_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_resist_ltng_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_resist_pois_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_absorb_cold_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_absorb_fire_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_absorb_ltng_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_absorb_pois_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_find_gold_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_find_magic_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_regenstamina_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_stamina_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_damage_demon_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_damage_undead_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_tohit_demon_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_tohit_undead_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_crushingblow_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_openwounds_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_kick_damage_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_deadlystrike_bytime.to_i, 0, 22, 0, 0],
#        [d2enum::stats::item_find_gems_bytime.to_i, 0, 0, 0, 0],
#        [d2enum::stats::item_pierce_cold.to_i, 0, 8, 50, 0],
#        [d2enum::stats::item_pierce_fire.to_i, 0, 8, 50, 0],
#        [d2enum::stats::item_pierce_ltng.to_i, 0, 8, 50, 0],
#        [d2enum::stats::item_pierce_pois.to_i, 0, 8, 50, 0],
#        [d2enum::stats::item_damage_vs_monster.to_i, 0, 0, 0, 0],
#        [d2enum::stats::item_damage_percent_vs_monster.to_i, 0, 0, 0, 0],
#        [d2enum::stats::item_tohit_vs_monster.to_i, 0, 0, 0, 0],
#        [d2enum::stats::item_tohit_percent_vs_monster.to_i, 0, 0, 0, 0],
#        [d2enum::stats::item_ac_vs_monster.to_i, 0, 0, 0, 0],
#        [d2enum::stats::item_ac_percent_vs_monster.to_i, 0, 0, 0, 0],
#        [d2enum::stats::firelength.to_i, 0, 0, 0, 0],
#        [d2enum::stats::burningmin.to_i, 0, 0, 0, 0],
#        [d2enum::stats::burningmax.to_i, 0, 0, 0, 0],
#        [d2enum::stats::progressive_damage.to_i, 0, 0, 0, 0],
#        [d2enum::stats::progressive_steal.to_i, 0, 0, 0, 0],
#        [d2enum::stats::progressive_other.to_i, 0, 0, 0, 0],
#        [d2enum::stats::progressive_fire.to_i, 0, 0, 0, 0],
#        [d2enum::stats::progressive_cold.to_i, 0, 0, 0, 0],
#        [d2enum::stats::progressive_lightning.to_i, 0, 0, 0, 0],
#        [d2enum::stats::item_extra_charges.to_i, 0, 6, 0, 0],
#        [d2enum::stats::progressive_tohit.to_i, 0, 0, 0, 0],
#        [d2enum::stats::poison_count.to_i, 0, 0, 0, 0],
#        [d2enum::stats::damage_framerate.to_i, 0, 0, 0, 0],
#        [d2enum::stats::pierce_idx.to_i, 0, 0, 0, 0],
#        [d2enum::stats::passive_fire_mastery.to_i, 0, 9, 50, 0],
#        [d2enum::stats::passive_ltng_mastery.to_i, 0, 9, 50, 0],
#        [d2enum::stats::passive_cold_mastery.to_i, 0, 9, 50, 0],
#        [d2enum::stats::passive_pois_mastery.to_i, 0, 9, 50, 0],
#        [d2enum::stats::passive_fire_pierce.to_i, 0, 8, 0, 0],
#        [d2enum::stats::passive_ltng_pierce.to_i, 0, 8, 0, 0],
#        [d2enum::stats::passive_cold_pierce.to_i, 0, 8, 0, 0],
#        [d2enum::stats::passive_pois_pierce.to_i, 0, 8, 0, 0],
#        [d2enum::stats::passive_critical_strike.to_i, 0, 8, 0, 0],
#        [d2enum::stats::passive_dodge.to_i, 0, 7, 0, 0],
#        [d2enum::stats::passive_avoid.to_i, 0, 7, 0, 0],
#        [d2enum::stats::passive_evade.to_i, 0, 7, 0, 0],
#        [d2enum::stats::passive_warmth.to_i, 0, 8, 0, 0],
#        [d2enum::stats::passive_mastery_melee_th.to_i, 0, 8, 0, 0],
#        [d2enum::stats::passive_mastery_melee_dmg.to_i, 0, 8, 0, 0],
#        [d2enum::stats::passive_mastery_melee_crit.to_i, 0, 8, 0, 0],
#        [d2enum::stats::passive_mastery_throw_th.to_i, 0, 8, 0, 0],
#        [d2enum::stats::passive_mastery_throw_dmg.to_i, 0, 8, 0, 0],
#        [d2enum::stats::passive_mastery_throw_crit.to_i, 0, 8, 0, 0],
#        [d2enum::stats::passive_weaponblock.to_i, 0, 8, 0, 0],
#        [d2enum::stats::passive_summon_resist.to_i, 0, 8, 0, 0],
#        [d2enum::stats::modifierlist_skill.to_i, 0, 0, 0, 0],
#        [d2enum::stats::modifierlist_level.to_i, 0, 0, 0, 0],
#        [d2enum::stats::last_sent_hp_pct.to_i, 0, 0, 0, 0],
#        [d2enum::stats::source_unit_type.to_i, 0, 0, 0, 0],
#        [d2enum::stats::source_unit_id.to_i, 0, 0, 0, 0],
#        [d2enum::stats::shortparam1.to_i, 0, 0, 0, 0],
#        [d2enum::stats::questitemdifficulty.to_i, 0, 2, 0, 0],
#        [d2enum::stats::passive_mag_mastery.to_i, 0, 9, 50, 0],
#        [d2enum::stats::passive_mag_pierce.to_i, 0, 8, 0, 0],
#        [d2enum::stats::skill_cooldown.to_i, 0, 0, 0, 0],
#        [d2enum::stats::skill_missile_damage_scale.to_i, 0, 0, 0, 0],
#        [d2enum::stats::psychicward.to_i, 0, 0, 0, 0],
#        [d2enum::stats::psychicwardmax.to_i, 0, 0, 0, 0],
#        [d2enum::stats::skill_channeling_tick.to_i, 0, 0, 0, 0],
#        [d2enum::stats::customization_index.to_i, 0, 0, 0, 0],
#        [d2enum::stats::item_magic_damagemax_perlevel.to_i, 0, 6, 0, 0],
#        [d2enum::stats::passive_dmg_pierce.to_i, 0, 8, 0, 0],
#        [d2enum::stats::heraldtier.to_i, 0, 0, 0, 0],
#      ]

  # FIXME: Literal 2D arrays are bugged in the C++11 compiler, making erroneous copies of unique_ptr
#  itemcodebits:
#    value: |
#      [
#        [259, 65535, 65535, 0],
#        [305, 65535, 65535, 1],
#        [259, 65535, 65535, 2],
#        [337, 65535, 65535, 3],
#        [305, 65535, 65535, 4],
#        [283, 65535, 65535, 5],
#        [258, 65535, 65535, 6],
#        [352, 65535, 65535, 7],
#        [336, 65535, 65535, 8],
#        [321, 65535, 65535, 9],
#        [304, 65535, 65535, 10],
#        [293, 65535, 65535, 11],
#        [283, 65535, 65535, 12],
#        [273, 65535, 65535, 13],
#        [258, 65535, 65535, 14],
#        [360, 65535, 65535, 15],
#        [352, 65535, 65535, 16],
#        [344, 65535, 65535, 17],
#        [336, 65535, 65535, 18],
#        [328, 65535, 65535, 19],
#        [320, 65535, 65535, 20],
#        [313, 65535, 65535, 21],
#        [304, 65535, 65535, 22],
#        [297, 65535, 65535, 23],
#        [292, 65535, 65535, 24],
#        [288, 65535, 65535, 25],
#        [282, 65535, 65535, 26],
#        [278, 65535, 65535, 27],
#        [273, 65535, 65535, 28],
#        [267, 65535, 65535, 29],
#        [257, 65535, 65535, 30],
#        [363, 65535, 65535, 31],
#        [509, 65535, 65535, 32],
#        [356, 65535, 65535, 33],
#        [351, 65535, 65535, 34],
#        [348, 65535, 65535, 35],
#        [344, 65535, 65535, 36],
#        [340, 65535, 65535, 37],
#        [335, 65535, 65535, 38],
#        [332, 65535, 65535, 39],
#        [328, 65535, 65535, 40],
#        [324, 65535, 65535, 41],
#        [320, 65535, 65535, 42],
#        [316, 65535, 65535, 43],
#        [312, 65535, 65535, 44],
#        [309, 65535, 65535, 45],
#        [303, 65535, 65535, 46],
#        [300, 65535, 65535, 47],
#        [477, 65535, 65535, 48],
#        [481, 65535, 65535, 49],
#        [484, 65535, 65535, 50],
#        [479, 65535, 65535, 51],
#        [477, 65535, 65535, 52],
#        [475, 65535, 65535, 53],
#        [480, 65535, 65535, 54],
#        [494, 65535, 65535, 55],
#        [483, 65535, 65535, 56],
#        [494, 65535, 65535, 57],
#        [272, 65535, 65535, 58],
#        [270, 65535, 65535, 59],
#        [267, 65535, 65535, 60],
#        [263, 65535, 65535, 61],
#        [257, 65535, 65535, 62],
#        [364, 65535, 65535, 63],
#        [362, 65535, 65535, 64],
#        [361, 65535, 65535, 65],
#        [359, 65535, 65535, 66],
#        [357, 65535, 65535, 67],
#        [355, 65535, 65535, 68],
#        [354, 65535, 65535, 69],
#        [351, 65535, 65535, 70],
#        [349, 65535, 65535, 71],
#        [347, 65535, 65535, 72],
#        [346, 65535, 65535, 73],
#        [343, 65535, 65535, 74],
#        [342, 65535, 65535, 75],
#        [340, 65535, 65535, 76],
#        [338, 65535, 65535, 77],
#        [335, 65535, 65535, 78],
#        [333, 65535, 65535, 79],
#        [331, 65535, 65535, 80],
#        [330, 65535, 65535, 81],
#        [327, 65535, 65535, 82],
#        [326, 65535, 65535, 83],
#        [324, 65535, 65535, 84],
#        [322, 65535, 65535, 85],
#        [319, 65535, 65535, 86],
#        [318, 65535, 65535, 87],
#        [316, 65535, 65535, 88],
#        [314, 65535, 65535, 89],
#        [312, 65535, 65535, 90],
#        [310, 65535, 65535, 91],
#        [308, 65535, 65535, 92],
#        [307, 65535, 65535, 93],
#        [303, 65535, 65535, 94],
#        [301, 65535, 65535, 95],
#        [299, 65535, 65535, 96],
#        [498, 65535, 65535, 97],
#        [501, 65535, 65535, 98],
#        [492, 65535, 65535, 99],
#        [486, 65535, 65535, 100],
#        [486, 65535, 65535, 101],
#        [485, 65535, 65535, 102],
#        [496, 65535, 65535, 103],
#        [490, 65535, 65535, 104],
#        [482, 65535, 65535, 105],
#        [474, 65535, 65535, 106],
#        [485, 65535, 65535, 107],
#        [497, 65535, 65535, 108],
#        [493, 65535, 65535, 109],
#        [484, 65535, 65535, 110],
#        [482, 65535, 65535, 111],
#        [495, 65535, 65535, 112],
#        [476, 65535, 65535, 113],
#        [497, 65535, 65535, 114],
#        [500, 65535, 65535, 115],
#        [493, 65535, 65535, 116],
#        [489, 65535, 65535, 117],
#        [480, 65535, 65535, 118],
#        [489, 65535, 65535, 119],
#        [491, 65535, 65535, 120],
#        [478, 65535, 65535, 121],
#        [476, 65535, 65535, 122],
#        [265, 65535, 65535, 123],
#        [263, 65535, 65535, 124],
#        [261, 65535, 65535, 125],
#        [256, 65535, 65535, 126],
#        [260, 65535, 65535, 127],
#        [364, 65535, 65535, 128],
#        [363, 65535, 65535, 129],
#        [362, 65535, 65535, 130],
#        [361, 65535, 65535, 131],
#        [360, 65535, 65535, 132],
#        [359, 65535, 65535, 133],
#        [358, 65535, 65535, 134],
#        [358, 65535, 65535, 135],
#        [357, 65535, 65535, 136],
#        [356, 65535, 65535, 137],
#        [355, 65535, 65535, 138],
#        [354, 65535, 65535, 139],
#        [353, 65535, 65535, 140],
#        [353, 65535, 65535, 141],
#        [350, 65535, 65535, 142],
#        [350, 65535, 65535, 143],
#        [349, 65535, 65535, 144],
#        [348, 65535, 65535, 145],
#        [347, 65535, 65535, 146],
#        [346, 65535, 65535, 147],
#        [345, 65535, 65535, 148],
#        [345, 65535, 65535, 149],
#        [343, 65535, 65535, 150],
#        [342, 65535, 65535, 151],
#        [341, 65535, 65535, 152],
#        [341, 65535, 65535, 153],
#        [339, 65535, 65535, 154],
#        [339, 65535, 65535, 155],
#        [338, 65535, 65535, 156],
#        [337, 65535, 65535, 157],
#        [334, 65535, 65535, 158],
#        [334, 65535, 65535, 159],
#        [333, 65535, 65535, 160],
#        [332, 65535, 65535, 161],
#        [331, 65535, 65535, 162],
#        [330, 65535, 65535, 163],
#        [329, 65535, 65535, 164],
#        [329, 65535, 65535, 165],
#        [327, 65535, 65535, 166],
#        [326, 65535, 65535, 167],
#        [325, 65535, 65535, 168],
#        [325, 65535, 65535, 169],
#        [323, 65535, 65535, 170],
#        [323, 65535, 65535, 171],
#        [322, 65535, 65535, 172],
#        [321, 65535, 65535, 173],
#        [319, 65535, 65535, 174],
#        [318, 65535, 65535, 175],
#        [317, 65535, 65535, 176],
#        [317, 65535, 65535, 177],
#        [315, 65535, 65535, 178],
#        [315, 65535, 65535, 179],
#        [314, 65535, 65535, 180],
#        [313, 65535, 65535, 181],
#        [311, 65535, 65535, 182],
#        [311, 65535, 65535, 183],
#        [310, 65535, 65535, 184],
#        [309, 65535, 65535, 185],
#        [308, 65535, 65535, 186],
#        [307, 65535, 65535, 187],
#        [306, 65535, 65535, 188],
#        [306, 65535, 65535, 189],
#        [302, 65535, 65535, 190],
#        [302, 65535, 65535, 191],
#        [301, 65535, 65535, 192],
#        [300, 65535, 65535, 193],
#        [299, 65535, 65535, 194],
#        [298, 65535, 65535, 195],
#        [298, 65535, 65535, 196],
#        [297, 65535, 65535, 197],
#        [296, 65535, 65535, 198],
#        [296, 65535, 65535, 199],
#        [295, 65535, 65535, 200],
#        [295, 65535, 65535, 201],
#        [294, 65535, 65535, 202],
#        [294, 65535, 65535, 203],
#        [293, 65535, 65535, 204],
#        [292, 65535, 65535, 205],
#        [291, 65535, 65535, 206],
#        [291, 65535, 65535, 207],
#        [290, 65535, 65535, 208],
#        [290, 65535, 65535, 209],
#        [289, 65535, 65535, 210],
#        [289, 65535, 65535, 211],
#        [288, 65535, 65535, 212],
#        [287, 65535, 65535, 213],
#        [287, 65535, 65535, 214],
#        [286, 65535, 65535, 215],
#        [286, 65535, 65535, 216],
#        [285, 65535, 65535, 217],
#        [285, 65535, 65535, 218],
#        [284, 65535, 65535, 219],
#        [284, 65535, 65535, 220],
#        [282, 65535, 65535, 221],
#        [281, 65535, 65535, 222],
#        [281, 65535, 65535, 223],
#        [280, 65535, 65535, 224],
#        [280, 65535, 65535, 225],
#        [279, 65535, 65535, 226],
#        [279, 65535, 65535, 227],
#        [278, 65535, 65535, 228],
#        [277, 65535, 65535, 229],
#        [277, 65535, 65535, 230],
#        [276, 65535, 65535, 231],
#        [276, 65535, 65535, 232],
#        [275, 65535, 65535, 233],
#        [275, 65535, 65535, 234],
#        [274, 65535, 65535, 235],
#        [274, 65535, 65535, 236],
#        [272, 65535, 65535, 237],
#        [271, 65535, 65535, 238],
#        [271, 65535, 65535, 239],
#        [270, 65535, 65535, 240],
#        [269, 65535, 65535, 241],
#        [269, 65535, 65535, 242],
#        [268, 65535, 65535, 243],
#        [268, 65535, 65535, 244],
#        [266, 65535, 65535, 245],
#        [266, 65535, 65535, 246],
#        [265, 65535, 65535, 247],
#        [264, 65535, 65535, 248],
#        [264, 65535, 65535, 249],
#        [262, 65535, 65535, 250],
#        [262, 65535, 65535, 251],
#        [261, 65535, 65535, 252],
#        [260, 65535, 65535, 253],
#        [256, 65535, 65535, 254],
#        [365, 65535, 65535, 255],
#        [365, 126, 254, 65535],
#        [367, 30, 62, 65535],
#        [366, 6, 14, 65535],
#        [369, 0, 2, 65535],
#        [366, 127, 253, 65535],
#        [370, 125, 252, 65535],
#        [369, 250, 251, 65535],
#        [371, 61, 124, 65535],
#        [372, 248, 249, 65535],
#        [371, 247, 123, 65535],
#        [373, 245, 246, 65535],
#        [373, 29, 60, 65535],
#        [372, 243, 244, 65535],
#        [374, 241, 242, 65535],
#        [375, 240, 59, 65535],
#        [375, 238, 239, 65535],
#        [376, 58, 237, 65535],
#        [376, 13, 28, 65535],
#        [377, 235, 236, 65535],
#        [378, 233, 234, 65535],
#        [379, 231, 232, 65535],
#        [379, 229, 230, 65535],
#        [378, 228, 27, 65535],
#        [367, 226, 227, 65535],
#        [380, 224, 225, 65535],
#        [381, 222, 223, 65535],
#        [381, 26, 221, 65535],
#        [382, 5, 12, 65535],
#        [383, 219, 220, 65535],
#        [383, 217, 218, 65535],
#        [385, 215, 216, 65535],
#        [385, 213, 214, 65535],
#        [384, 212, 25, 65535],
#        [386, 210, 211, 65535],
#        [387, 208, 209, 65535],
#        [388, 206, 207, 65535],
#        [388, 24, 205, 65535],
#        [387, 204, 11, 65535],
#        [389, 202, 203, 65535],
#        [389, 200, 201, 65535],
#        [390, 198, 199, 65535],
#        [391, 23, 197, 65535],
#        [399, 195, 196, 65535],
#        [390, 96, 194, 65535],
#        [382, 193, 47, 65535],
#        [391, 95, 192, 65535],
#        [392, 190, 191, 65535],
#        [394, 46, 94, 65535],
#        [392, 10, 22, 65535],
#        [394, 1, 4, 65535],
#        [395, 188, 189, 65535],
#        [404, 187, 93, 65535],
#        [393, 92, 186, 65535],
#        [395, 185, 45, 65535],
#        [396, 91, 184, 65535],
#        [396, 182, 183, 65535],
#        [397, 44, 90, 65535],
#        [397, 181, 21, 65535],
#        [398, 89, 180, 65535],
#        [400, 178, 179, 65535],
#        [399, 43, 88, 65535],
#        [398, 176, 177, 65535],
#        [400, 175, 87, 65535],
#        [409, 86, 174, 65535],
#        [401, 20, 42, 65535],
#        [401, 173, 9, 65535],
#        [402, 85, 172, 65535],
#        [407, 170, 171, 65535],
#        [402, 41, 84, 65535],
#        [403, 168, 169, 65535],
#        [368, 167, 83, 65535],
#        [403, 82, 166, 65535],
#        [404, 19, 40, 65535],
#        [405, 164, 165, 65535],
#        [415, 163, 81, 65535],
#        [411, 80, 162, 65535],
#        [393, 161, 39, 65535],
#        [405, 79, 160, 65535],
#        [406, 158, 159, 65535],
#        [406, 38, 78, 65535],
#        [408, 8, 18, 65535],
#        [408, 157, 3, 65535],
#        [418, 77, 156, 65535],
#        [416, 154, 155, 65535],
#        [409, 37, 76, 65535],
#        [410, 152, 153, 65535],
#        [411, 151, 75, 65535],
#        [410, 74, 150, 65535],
#        [412, 17, 36, 65535],
#        [412, 148, 149, 65535],
#        [370, 147, 73, 65535],
#        [419, 72, 146, 65535],
#        [413, 145, 35, 65535],
#        [413, 71, 144, 65535],
#        [374, 142, 143, 65535],
#        [414, 34, 70, 65535],
#        [415, 7, 16, 65535],
#        [416, 140, 141, 65535],
#        [377, 139, 69, 65535],
#        [414, 68, 138, 65535],
#        [417, 137, 33, 65535],
#        [418, 67, 136, 65535],
#        [417, 134, 135, 65535],
#        [384, 133, 66, 65535],
#        [419, 132, 15, 65535],
#        [386, 131, 65, 65535],
#        [380, 64, 130, 65535],
#        [407, 129, 31, 65535],
#        [368, 63, 128, 65535],
#        [420, 256, 255, 65535],
#        [420, 260, 258, 65535],
#        [421, 279, 257, 65535],
#        [422, 326, 364, 65535],
#        [422, 262, 259, 65535],
#        [423, 261, 346, 65535],
#        [446, 265, 263, 65535],
#        [424, 264, 268, 65535],
#        [425, 267, 266, 65535],
#        [424, 269, 350, 65535],
#        [425, 270, 271, 65535],
#        [426, 273, 272, 65535],
#        [426, 274, 354, 65535],
#        [421, 278, 275, 65535],
#        [427, 277, 276, 65535],
#        [427, 280, 362, 65535],
#        [428, 282, 281, 65535],
#        [429, 300, 283, 65535],
#        [428, 285, 284, 65535],
#        [429, 359, 288, 65535],
#        [430, 287, 286, 65535],
#        [430, 289, 361, 65535],
#        [431, 293, 290, 65535],
#        [431, 292, 291, 65535],
#        [442, 295, 294, 65535],
#        [432, 296, 299, 65535],
#        [433, 301, 297, 65535],
#        [432, 304, 302, 65535],
#        [434, 332, 308, 65535],
#        [435, 305, 303, 65535],
#        [435, 309, 306, 65535],
#        [436, 311, 310, 65535],
#        [436, 313, 312, 65535],
#        [437, 317, 314, 65535],
#        [437, 316, 298, 65535],
#        [438, 318, 315, 65535],
#        [439, 321, 320, 65535],
#        [439, 324, 322, 65535],
#        [433, 327, 325, 65535],
#        [440, 328, 307, 65535],
#        [438, 333, 329, 65535],
#        [441, 335, 334, 65535],
#        [442, 363, 323, 65535],
#        [443, 337, 336, 65535],
#        [440, 340, 319, 65535],
#        [441, 343, 341, 65535],
#        [443, 331, 342, 65535],
#        [445, 345, 344, 65535],
#        [444, 349, 348, 65535],
#        [445, 355, 351, 65535],
#        [446, 352, 330, 65535],
#        [447, 339, 353, 65535],
#        [444, 358, 356, 65535],
#        [434, 338, 357, 65535],
#        [423, 360, 347, 65535],
#        [447, 366, 365, 65535],
#        [448, 378, 367, 65535],
#        [449, 369, 368, 65535],
#        [450, 370, 419, 65535],
#        [450, 374, 372, 65535],
#        [451, 375, 373, 65535],
#        [451, 376, 377, 65535],
#        [452, 380, 379, 65535],
#        [453, 383, 381, 65535],
#        [452, 384, 382, 65535],
#        [448, 386, 385, 65535],
#        [453, 387, 388, 65535],
#        [455, 392, 390, 65535],
#        [454, 403, 391, 65535],
#        [455, 393, 418, 65535],
#        [456, 394, 395, 65535],
#        [457, 397, 396, 65535],
#        [456, 398, 399, 65535],
#        [454, 400, 405, 65535],
#        [457, 401, 402, 65535],
#        [458, 404, 409, 65535],
#        [459, 410, 406, 65535],
#        [459, 407, 389, 65535],
#        [460, 411, 408, 65535],
#        [460, 417, 413, 65535],
#        [458, 414, 412, 65535],
#        [449, 415, 371, 65535],
#        [461, 420, 416, 65535],
#        [461, 430, 421, 65535],
#        [462, 422, 446, 65535],
#        [463, 423, 424, 65535],
#        [462, 426, 425, 65535],
#        [464, 429, 427, 65535],
#        [465, 431, 428, 65535],
#        [466, 438, 433, 65535],
#        [464, 434, 432, 65535],
#        [466, 437, 435, 65535],
#        [467, 439, 436, 65535],
#        [467, 445, 440, 65535],
#        [465, 442, 441, 65535],
#        [463, 444, 443, 65535],
#        [468, 448, 447, 65535],
#        [468, 451, 449, 65535],
#        [469, 450, 460, 65535],
#        [470, 455, 452, 65535],
#        [471, 453, 459, 65535],
#        [470, 456, 454, 65535],
#        [469, 458, 457, 65535],
#        [471, 462, 461, 65535],
#        [472, 463, 467, 65535],
#        [472, 466, 464, 65535],
#        [473, 468, 465, 65535],
#        [473, 470, 469, 65535],
#        [474, 472, 471, 65535],
#        [475, 473, 106, 65535],
#        [478, 474, 53, 65535],
#        [479, 113, 122, 65535],
#        [481, 48, 52, 65535],
#        [483, 475, 121, 65535],
#        [487, 51, 476, 65535],
#        [487, 54, 118, 65535],
#        [488, 477, 49, 65535],
#        [488, 111, 105, 65535],
#        [490, 478, 56, 65535],
#        [491, 110, 50, 65535],
#        [492, 102, 107, 65535],
#        [495, 100, 101, 65535],
#        [496, 480, 479, 65535],
#        [498, 482, 481, 65535],
#        [499, 117, 119, 65535],
#        [499, 104, 483, 65535],
#        [500, 120, 484, 65535],
#        [501, 485, 99, 65535],
#        [502, 109, 116, 65535],
#        [502, 55, 57, 65535],
#        [503, 112, 486, 65535],
#        [503, 487, 103, 65535],
#        [504, 108, 114, 65535],
#        [504, 488, 97, 65535],
#        [505, 490, 489, 65535],
#        [505, 491, 115, 65535],
#        [506, 98, 492, 65535],
#        [506, 494, 493, 65535],
#        [507, 496, 495, 65535],
#        [507, 498, 497, 65535],
#        [508, 500, 499, 65535],
#        [508, 502, 501, 65535],
#        [509, 504, 503, 65535],
#        [510, 506, 505, 65535],
#        [510, 507, 32, 65535],
#        [65535, 509, 508, 65535],
#      ]

enums:
  itemcodealgo:
    510: start

instances:
  itemcodebits0:
    value: |
      [
        259,
        305,
        259,
        337,
        305,
        283,
        258,
        352,
        336,
        321,
        304,
        293,
        283,
        273,
        258,
        360,
        352,
        344,
        336,
        328,
        320,
        313,
        304,
        297,
        292,
        288,
        282,
        278,
        273,
        267,
        257,
        363,
        509,
        356,
        351,
        348,
        344,
        340,
        335,
        332,
        328,
        324,
        320,
        316,
        312,
        309,
        303,
        300,
        477,
        481,
        484,
        479,
        477,
        475,
        480,
        494,
        483,
        494,
        272,
        270,
        267,
        263,
        257,
        364,
        362,
        361,
        359,
        357,
        355,
        354,
        351,
        349,
        347,
        346,
        343,
        342,
        340,
        338,
        335,
        333,
        331,
        330,
        327,
        326,
        324,
        322,
        319,
        318,
        316,
        314,
        312,
        310,
        308,
        307,
        303,
        301,
        299,
        498,
        501,
        492,
        486,
        486,
        485,
        496,
        490,
        482,
        474,
        485,
        497,
        493,
        484,
        482,
        495,
        476,
        497,
        500,
        493,
        489,
        480,
        489,
        491,
        478,
        476,
        265,
        263,
        261,
        256,
        260,
        364,
        363,
        362,
        361,
        360,
        359,
        358,
        358,
        357,
        356,
        355,
        354,
        353,
        353,
        350,
        350,
        349,
        348,
        347,
        346,
        345,
        345,
        343,
        342,
        341,
        341,
        339,
        339,
        338,
        337,
        334,
        334,
        333,
        332,
        331,
        330,
        329,
        329,
        327,
        326,
        325,
        325,
        323,
        323,
        322,
        321,
        319,
        318,
        317,
        317,
        315,
        315,
        314,
        313,
        311,
        311,
        310,
        309,
        308,
        307,
        306,
        306,
        302,
        302,
        301,
        300,
        299,
        298,
        298,
        297,
        296,
        296,
        295,
        295,
        294,
        294,
        293,
        292,
        291,
        291,
        290,
        290,
        289,
        289,
        288,
        287,
        287,
        286,
        286,
        285,
        285,
        284,
        284,
        282,
        281,
        281,
        280,
        280,
        279,
        279,
        278,
        277,
        277,
        276,
        276,
        275,
        275,
        274,
        274,
        272,
        271,
        271,
        270,
        269,
        269,
        268,
        268,
        266,
        266,
        265,
        264,
        264,
        262,
        262,
        261,
        260,
        256,
        365,
        365,
        367,
        366,
        369,
        366,
        370,
        369,
        371,
        372,
        371,
        373,
        373,
        372,
        374,
        375,
        375,
        376,
        376,
        377,
        378,
        379,
        379,
        378,
        367,
        380,
        381,
        381,
        382,
        383,
        383,
        385,
        385,
        384,
        386,
        387,
        388,
        388,
        387,
        389,
        389,
        390,
        391,
        399,
        390,
        382,
        391,
        392,
        394,
        392,
        394,
        395,
        404,
        393,
        395,
        396,
        396,
        397,
        397,
        398,
        400,
        399,
        398,
        400,
        409,
        401,
        401,
        402,
        407,
        402,
        403,
        368,
        403,
        404,
        405,
        415,
        411,
        393,
        405,
        406,
        406,
        408,
        408,
        418,
        416,
        409,
        410,
        411,
        410,
        412,
        412,
        370,
        419,
        413,
        413,
        374,
        414,
        415,
        416,
        377,
        414,
        417,
        418,
        417,
        384,
        419,
        386,
        380,
        407,
        368,
        420,
        420,
        421,
        422,
        422,
        423,
        446,
        424,
        425,
        424,
        425,
        426,
        426,
        421,
        427,
        427,
        428,
        429,
        428,
        429,
        430,
        430,
        431,
        431,
        442,
        432,
        433,
        432,
        434,
        435,
        435,
        436,
        436,
        437,
        437,
        438,
        439,
        439,
        433,
        440,
        438,
        441,
        442,
        443,
        440,
        441,
        443,
        445,
        444,
        445,
        446,
        447,
        444,
        434,
        423,
        447,
        448,
        449,
        450,
        450,
        451,
        451,
        452,
        453,
        452,
        448,
        453,
        455,
        454,
        455,
        456,
        457,
        456,
        454,
        457,
        458,
        459,
        459,
        460,
        460,
        458,
        449,
        461,
        461,
        462,
        463,
        462,
        464,
        465,
        466,
        464,
        466,
        467,
        467,
        465,
        463,
        468,
        468,
        469,
        470,
        471,
        470,
        469,
        471,
        472,
        472,
        473,
        473,
        474,
        475,
        478,
        479,
        481,
        483,
        487,
        487,
        488,
        488,
        490,
        491,
        492,
        495,
        496,
        498,
        499,
        499,
        500,
        501,
        502,
        502,
        503,
        503,
        504,
        504,
        505,
        505,
        506,
        506,
        507,
        507,
        508,
        508,
        509,
        510,
        510,
        65535,
      ]

  itemcodebits1:
    value: |
      [
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        126,
        30,
        6,
        0,
        127,
        125,
        250,
        61,
        248,
        247,
        245,
        29,
        243,
        241,
        240,
        238,
        58,
        13,
        235,
        233,
        231,
        229,
        228,
        226,
        224,
        222,
        26,
        5,
        219,
        217,
        215,
        213,
        212,
        210,
        208,
        206,
        24,
        204,
        202,
        200,
        198,
        23,
        195,
        96,
        193,
        95,
        190,
        46,
        10,
        1,
        188,
        187,
        92,
        185,
        91,
        182,
        44,
        181,
        89,
        178,
        43,
        176,
        175,
        86,
        20,
        173,
        85,
        170,
        41,
        168,
        167,
        82,
        19,
        164,
        163,
        80,
        161,
        79,
        158,
        38,
        8,
        157,
        77,
        154,
        37,
        152,
        151,
        74,
        17,
        148,
        147,
        72,
        145,
        71,
        142,
        34,
        7,
        140,
        139,
        68,
        137,
        67,
        134,
        133,
        132,
        131,
        64,
        129,
        63,
        256,
        260,
        279,
        326,
        262,
        261,
        265,
        264,
        267,
        269,
        270,
        273,
        274,
        278,
        277,
        280,
        282,
        300,
        285,
        359,
        287,
        289,
        293,
        292,
        295,
        296,
        301,
        304,
        332,
        305,
        309,
        311,
        313,
        317,
        316,
        318,
        321,
        324,
        327,
        328,
        333,
        335,
        363,
        337,
        340,
        343,
        331,
        345,
        349,
        355,
        352,
        339,
        358,
        338,
        360,
        366,
        378,
        369,
        370,
        374,
        375,
        376,
        380,
        383,
        384,
        386,
        387,
        392,
        403,
        393,
        394,
        397,
        398,
        400,
        401,
        404,
        410,
        407,
        411,
        417,
        414,
        415,
        420,
        430,
        422,
        423,
        426,
        429,
        431,
        438,
        434,
        437,
        439,
        445,
        442,
        444,
        448,
        451,
        450,
        455,
        453,
        456,
        458,
        462,
        463,
        466,
        468,
        470,
        472,
        473,
        474,
        113,
        48,
        475,
        51,
        54,
        477,
        111,
        478,
        110,
        102,
        100,
        480,
        482,
        117,
        104,
        120,
        485,
        109,
        55,
        112,
        487,
        108,
        488,
        490,
        491,
        98,
        494,
        496,
        498,
        500,
        502,
        504,
        506,
        507,
        509,
      ]

  itemcodebits2:
    value: |
      [
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        254,
        62,
        14,
        2,
        253,
        252,
        251,
        124,
        249,
        123,
        246,
        60,
        244,
        242,
        59,
        239,
        237,
        28,
        236,
        234,
        232,
        230,
        27,
        227,
        225,
        223,
        221,
        12,
        220,
        218,
        216,
        214,
        25,
        211,
        209,
        207,
        205,
        11,
        203,
        201,
        199,
        197,
        196,
        194,
        47,
        192,
        191,
        94,
        22,
        4,
        189,
        93,
        186,
        45,
        184,
        183,
        90,
        21,
        180,
        179,
        88,
        177,
        87,
        174,
        42,
        9,
        172,
        171,
        84,
        169,
        83,
        166,
        40,
        165,
        81,
        162,
        39,
        160,
        159,
        78,
        18,
        3,
        156,
        155,
        76,
        153,
        75,
        150,
        36,
        149,
        73,
        146,
        35,
        144,
        143,
        70,
        16,
        141,
        69,
        138,
        33,
        136,
        135,
        66,
        15,
        65,
        130,
        31,
        128,
        255,
        258,
        257,
        364,
        259,
        346,
        263,
        268,
        266,
        350,
        271,
        272,
        354,
        275,
        276,
        362,
        281,
        283,
        284,
        288,
        286,
        361,
        290,
        291,
        294,
        299,
        297,
        302,
        308,
        303,
        306,
        310,
        312,
        314,
        298,
        315,
        320,
        322,
        325,
        307,
        329,
        334,
        323,
        336,
        319,
        341,
        342,
        344,
        348,
        351,
        330,
        353,
        356,
        357,
        347,
        365,
        367,
        368,
        419,
        372,
        373,
        377,
        379,
        381,
        382,
        385,
        388,
        390,
        391,
        418,
        395,
        396,
        399,
        405,
        402,
        409,
        406,
        389,
        408,
        413,
        412,
        371,
        416,
        421,
        446,
        424,
        425,
        427,
        428,
        433,
        432,
        435,
        436,
        440,
        441,
        443,
        447,
        449,
        460,
        452,
        459,
        454,
        457,
        461,
        467,
        464,
        465,
        469,
        471,
        106,
        53,
        122,
        52,
        121,
        476,
        118,
        49,
        105,
        56,
        50,
        107,
        101,
        479,
        481,
        119,
        483,
        484,
        99,
        116,
        57,
        486,
        103,
        114,
        97,
        489,
        115,
        492,
        493,
        495,
        497,
        499,
        501,
        503,
        505,
        32,
        508,
      ]

  itemcodebits3:
    value: |
      [
        0,
        1,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
        9,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20,
        21,
        22,
        23,
        24,
        25,
        26,
        27,
        28,
        29,
        30,
        31,
        32,
        33,
        34,
        35,
        36,
        37,
        38,
        39,
        40,
        41,
        42,
        43,
        44,
        45,
        46,
        47,
        48,
        49,
        50,
        51,
        52,
        53,
        54,
        55,
        56,
        57,
        58,
        59,
        60,
        61,
        62,
        63,
        64,
        65,
        66,
        67,
        68,
        69,
        70,
        71,
        72,
        73,
        74,
        75,
        76,
        77,
        78,
        79,
        80,
        81,
        82,
        83,
        84,
        85,
        86,
        87,
        88,
        89,
        90,
        91,
        92,
        93,
        94,
        95,
        96,
        97,
        98,
        99,
        100,
        101,
        102,
        103,
        104,
        105,
        106,
        107,
        108,
        109,
        110,
        111,
        112,
        113,
        114,
        115,
        116,
        117,
        118,
        119,
        120,
        121,
        122,
        123,
        124,
        125,
        126,
        127,
        128,
        129,
        130,
        131,
        132,
        133,
        134,
        135,
        136,
        137,
        138,
        139,
        140,
        141,
        142,
        143,
        144,
        145,
        146,
        147,
        148,
        149,
        150,
        151,
        152,
        153,
        154,
        155,
        156,
        157,
        158,
        159,
        160,
        161,
        162,
        163,
        164,
        165,
        166,
        167,
        168,
        169,
        170,
        171,
        172,
        173,
        174,
        175,
        176,
        177,
        178,
        179,
        180,
        181,
        182,
        183,
        184,
        185,
        186,
        187,
        188,
        189,
        190,
        191,
        192,
        193,
        194,
        195,
        196,
        197,
        198,
        199,
        200,
        201,
        202,
        203,
        204,
        205,
        206,
        207,
        208,
        209,
        210,
        211,
        212,
        213,
        214,
        215,
        216,
        217,
        218,
        219,
        220,
        221,
        222,
        223,
        224,
        225,
        226,
        227,
        228,
        229,
        230,
        231,
        232,
        233,
        234,
        235,
        236,
        237,
        238,
        239,
        240,
        241,
        242,
        243,
        244,
        245,
        246,
        247,
        248,
        249,
        250,
        251,
        252,
        253,
        254,
        255,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
        65535,
      ]
