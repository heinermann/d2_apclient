meta:
  id: diablo_2_d2s
  title: "Diablo II character save files"
  application: "Diablo II"
  file-extension: d2s
  endian: le
  bit-endian: le
  imports:
    - diablo_2_data
    - diablo_2_enums
    - diablo_2_items

doc-ref: https://github.com/WalterCouto/D2CE/blob/main/d2s_File_Format.md
seq:
  - id: data
    type: d2data
    size: 0
  - id: header
    type: d2header
  - id: quests
    type: d2quests
  - id: waypoints
    type: d2waypoints
  - id: npctalk
    type: d2npcs
  - id: charstats
    type: d2attributes
  - id: skills
    type: d2skills
  - id: inventory
    type: d2items

types:
  d2header:
    seq:
      - id: magic
        contents: [0x55, 0xaa, 0x55, 0xaa]
        doc: Magic 0x55 0xaa 0x55 0xaa
      - id: version
        type: u4
        valid:
          min: 96
      - id: filesize
        type: u4
        valid:
          expr: _ == _io.size
      - id: checksum
        type: u4
        doc: Kaitai TODO
      - id: loadout
        type: u4
        doc: Loadout index for weapon switching (W)
      - id: old_character_name
        type: str
        size: 16
        encoding: ASCII
        if: version < 105
      - id: save_flags
        type: save_flag_t
      - id: progression_flags
        type: u1
        enum: d2enum::char_progression
      - id: unused_save_flags
        type: u2
      - id: character_class
        type: u1
        enum: d2enum::playerclass
      - id: bonus_stats
        type: u1
        doc: unused?
      - id: bonus_skills
        type: u1
        doc: unused?
      - id: level
        type: u1
      - id: creation_time
        type: u4
        doc: unused, always 0
      - id: last_played_time
        type: u4
        doc: Unix timestamp in seconds
      - id: play_time_unused
        type: u4
        doc: unused, always -1
      - id: skill_hotkeys
        type: skill_key
        repeat: expr
        repeat-expr: 16
      - id: left_skill
        type: skill_key
      - id: right_skill
        type: skill_key
      - id: switched_left_skill
        type: skill_key
      - id: switched_right_skill
        type: skill_key
      - id: menu_component
        type: u1
        repeat: expr
        repeat-expr: 16
      - id: menu_comp_color
        type: u1
        repeat: expr
        repeat-expr: 16
      - id: town
        type: town_t
        repeat: expr
        repeat-expr: d2enum::difficulty::num_difficulties.to_i
        doc: Act number. Highest bit (0x80) = difficulty is completed.
      - id: map_seed
        type: u4
      - id: mercenary_data
        type: merc_stats
      - id: unkn1
        type: u1
        repeat: expr
        repeat-expr: 16
      - id: guild_bg_color
        type: u1
      - id: unkn2
        type: u1
        repeat: expr
        repeat-expr: 3
      - id: unkn3
        type: u4
        repeat: expr
        repeat-expr: 'version < 105 ? 1 : 13'
      - id: unkn3b
        type: u1
      - id: d2r_mode
        type: u1
        enum: d2enum::d2r_game_mode
      - id: unkn3c
        type: u2
      - id: d2r_menu_appearance
        size: 12
        type: d2rmenuitem
        repeat: expr
        repeat-expr: 4
      - id: character_name
        type: strz
        size: 'version < 105 ? 61 : 97'
        encoding: UTF-8
      - id: unkn4
        type: u1
        repeat: expr
        repeat-expr: 7
  
  town_t:
    seq:
      - id: town
        type: b7
        enum: d2enum::act
      - id: last_selected
        type: b1

  d2quests:
    seq:
      - id: magic
        contents: "Woo!"
      - id: version
        type: u4
        valid: 6
      - id: size
        type: u2
        valid: 298
      - id: quest_flags
        size: 48 * 2
        type: d2questlist
        repeat: expr
        repeat-expr: d2enum::difficulty::num_difficulties.to_i

  d2questlist:
    seq:
      - id: quests
        type: d2queststate
        repeat: expr
        repeat-expr: d2enum::quest::num_quests.to_i

  d2queststate:
    seq:
      - id: qflag_rewardgranted
        type: b1
      - id: qflag_rewardpending
        type: b1
      - id: qflag_started
        type: b1
      - id: qflag_leavetown
        type: b1
      - id: qflag_enterarea
        type: b1
      - id: qflag_custom1
        type: b1
      - id: qflag_custom2
        type: b1
      - id: qflag_custom3
        type: b1
      - id: qflag_custom4
        type: b1
      - id: qflag_custom5
        type: b1
      - id: qflag_custom6
        type: b1
      - id: qflag_custom7
        type: b1
      - id: qflag_updatequestlog
        type: b1
      - id: qflag_primarygoaldone
        type: b1
      - id: qflag_completednow
        type: b1
      - id: qflag_completedbefore
        type: b1

  d2waypoints:
    seq:
      - id: magic
        contents: "WS"
      - id: version
        type: u4
        valid: 1
      - id: size
        type: u2
        valid: 80
      - id: waypoints
        size: 24
        type: waypoint_t
        repeat: expr
        repeat-expr: d2enum::difficulty::num_difficulties.to_i

  waypoint_t:
    seq:
      - id: magic
        contents: [0x02, 0x01]
      - id: waypoint
        type: b1
        repeat: expr
        repeat-expr: d2enum::waypoint::num_waypoints.to_i

  d2npcs:
    seq:
      - id: magic
        contents: [0x01, 0x77]
      - id: size
        type: u2
        valid: 52
      - id: npc_quest_intro
        size: 8
        type: npc_talk
        repeat: expr
        repeat-expr: d2enum::difficulty::num_difficulties.to_i
      - id: npc_intro
        size: 8
        type: npc_talk
        repeat: expr
        repeat-expr: d2enum::difficulty::num_difficulties.to_i

  npc_talk:
    seq:
      - id: spoken
        type: b1
        repeat: expr
        repeat-expr: d2enum::npc::num_npcs.to_i

  d2attributes:
    seq:
      - id: magic
        contents: "gf"
      - id: attributes
        type: char_attrib_t
        repeat: until
        repeat-until: _.id == d2enum::stats::invalid

  wrap_b9_attrid:
    doc: Prevents byte alignment injected between bits and switch-on
    seq:
      - id: value
        enum: d2enum::stats
        type: b9

  char_attrib_t:
    seq:
      - id: id_raw
        type: wrap_b9_attrid
        valid:
          expr: id == d2enum::stats::invalid or id.to_i <= d2enum::stats::goldbank.to_i
      - id: amount
        type:
          switch-on: id
          cases:
            d2enum::stats::strength: b10
            d2enum::stats::energy: b10
            d2enum::stats::dexterity: b10
            d2enum::stats::vitality: b10
            d2enum::stats::statpts: b10
            d2enum::stats::newskills: b8
            d2enum::stats::hitpoints: b21
            d2enum::stats::maxhp: b21
            d2enum::stats::mana: b21
            d2enum::stats::maxmana: b21
            d2enum::stats::stamina: b21
            d2enum::stats::maxstamina: b21
            d2enum::stats::level: b7
            d2enum::stats::experience: b32
            d2enum::stats::gold: b25
            d2enum::stats::goldbank: b25
    instances:
      id:
        value: id_raw.value

  d2skills:
    doc: Index meaning depends on the character class.
    seq:
      - id: magic
        contents: "if"
      - id: skillpoints
        type: u1
        repeat: expr
        repeat-expr: 30

  skill_key:
    seq:
      - id: skill
        type: b15
        enum: d2enum::skill
      - id: is_left_mouse
        type: b1
        doc: Highest bit (0x8000) indicates hotkey is for the left mouse
      - id: item_slot
        type: u2

  merc_stats:
    seq:
      - id: flags
        type: u4
      - id: seed
        type: u4
      - id: name_id
        type: u2
      - id: hireling_id
        type: u2
        enum: d2enum::hireling
      - id: experience
        type: u4

  d2rmenuitem:
    seq:
      - id: item_type
        type: str
        size: 4
        encoding: ASCII
      - id: color
        type: u1
      - id: mod_type
        type: u1
        enum: d2enum::itemmodtype
      - id: field_6
        type: u2
      - id: flags
        type: b8

  save_flag_t:
    seq:
      - id: save_flag_new
        type: b1
      - id: save_flag_02
        type: b1
      - id: save_flag_hardcore
        type: b1
      - id: save_flag_died_once
        type: b1
      - id: save_flag_10
        type: b1
      - id: save_flag_20 # expansion
        type: b1
      - id: save_flag_40 # ladder
        type: b1
      - id: save_flag_80
        type: b1

  d2items:
    seq:
      - id: magic
        contents: "JM"
      - id: num_items
        type: u2
      - id: items
        type: item_t
        repeat: expr
        repeat-expr: num_items

  d2mercitems:
    seq:
      - id: magic
        contents: "jf"

  d2irongolem:
    seq:
      - id: magic
        contents: "kf"

  item_t:
    seq:
      # BUG: JS fails to parse flags correctly, leading to cascading failures
      - id: flags
        type: iflags
        size: 4
      - id: compact_item
        type: compactitemdata2
        if: flags.iflag_compactsave
      - id: full_item
        type: fullitemdata
        if: not flags.iflag_compactsave
    instances:
      itemcode:
        value: |
          flags.iflag_isear ? 0 :
          flags.iflag_compactsave ? compact_item.itemcode : full_item.itemcode
      imode:
        value: "flags.iflag_compactsave ? compact_item.imode : full_item.imode"

  compactitemdata2:
    seq:
      - id: imode_data
        type: itemdata_imode
      - id: world_position
        type: itemdata_world
        if: imode == d2enum::imode::onground or imode == d2enum::imode::dropping
      - id: inventory_position
        type: itemdata_inventory
        if: imode != d2enum::imode::onground and imode != d2enum::imode::dropping
      - id: ear_info
        type: itemdata_ear
        if: _parent.flags.iflag_isear
      - id: item_code_data
        type: itemcodedef
        if: not _parent.flags.iflag_isear
      - id: gold_info
        type: itemdata_gold
        if: itemcode == d2enum::itemcodes::gold.to_i
      # Quest items
      - id: quest_info
        type: itemdata_quest
        if: |
          itemcode == d2enum::itemcodes::decoy_gidbinn.to_i or
          itemcode == d2enum::itemcodes::the_gidbinn.to_i or
          itemcode == d2enum::itemcodes::wirts_leg.to_i or
          itemcode == d2enum::itemcodes::horadric_malus.to_i or
          itemcode == d2enum::itemcodes::hellforge_hammer.to_i or
          itemcode == d2enum::itemcodes::horadric_staff.to_i or
          itemcode == d2enum::itemcodes::staff_of_kings.to_i or
          itemcode == d2enum::itemcodes::khalims_flail.to_i or
          itemcode == d2enum::itemcodes::khalims_will.to_i or
          itemcode == d2enum::itemcodes::amulet_of_the_viper.to_i or
          itemcode == d2enum::itemcodes::scroll_of_inifuss.to_i or
          itemcode == d2enum::itemcodes::key_to_the_cairn_stones.to_i or
          itemcode == d2enum::itemcodes::the_black_tower_key.to_i or
          itemcode == d2enum::itemcodes::potion_of_life.to_i or
          itemcode == d2enum::itemcodes::a_jade_figurine.to_i or
          itemcode == d2enum::itemcodes::the_golden_bird.to_i or
          itemcode == d2enum::itemcodes::lam_esens_tome.to_i or
          itemcode == d2enum::itemcodes::horadric_scroll.to_i or
          itemcode == d2enum::itemcodes::mephistos_soulstone.to_i or
          itemcode == d2enum::itemcodes::book_of_skill.to_i or
          itemcode == d2enum::itemcodes::khalims_eye.to_i or
          itemcode == d2enum::itemcodes::khalims_heart.to_i or
          itemcode == d2enum::itemcodes::khalims_brain.to_i or
          itemcode == d2enum::itemcodes::malahs_potion.to_i or
          itemcode == d2enum::itemcodes::scroll_of_resistance.to_i
      - id: realmdata
        type: itemdata_realmcode
    instances:
      itemcode:
        value: "_parent.flags.iflag_isear ? 0 : item_code_data.code"
      imode:
        value: imode_data.item_mode

  itemdata_imode:
    seq:
      - id: version_high
        type: b1
        if: _root.header.version > 96
      - id: version_low
        type: b2
        if: _root.header.version > 96
      - id: version_old
        type: b10
        if: _root.header.version <= 96
      - id: item_mode
        type: b3
        enum: d2enum::imode
    instances:
      version:
        value: |
          _root.header.version <= 96 ? version_old :
          version_high ? version_low + 99 : version_low

  itemcodedef:
    seq:
      - id: itemcode_new
        type: itemcode_decoder
        repeat: expr
        repeat-expr: 4
        if: _root.header.version > 96
      - id: itemcode_old
        type: b32
        if: _root.header.version <= 96
    instances:
      code:
        value: |
          _root.header.version <= 96 ? itemcode_old :
          ((itemcode_new[0].result) | (itemcode_new[1].result << 8) | (itemcode_new[2].result << 16) | (itemcode_new[3].result << 24))

  wrap_b1:
    seq:
      - id: value
        type: b1

  itemcode_decoder:
    seq:
      - id: itembits
        type: 'itemcode_decoder_item(_index == 0 ? d2data::itemcodealgo::start.to_i : itembits[_index - 1].next_index)'
        repeat: until
        repeat-until: _root.data.itemcodebits3[_.next_index] != 65535
    instances:
      final_index:
        value: itembits.last.next_index
      result:
        value: _root.data.itemcodebits3[final_index] & 0xFF

  itemcode_decoder_item:
    params:
      - id: index
        type: s4
    seq:
      - id: bit
        type: b1
    instances:
      next_index:
        value: 'bit ? _root.data.itemcodebits1[index] : _root.data.itemcodebits2[index]'

  itemdata_world:
    seq:
      - id: position_x
        type: b16
      - id: position_y
        type: b16

  itemdata_inventory:
    seq:
      - id: inv_location
        type: b4
        enum: d2enum::bodyloc
      - id: inv_x
        type: b4
      - id: inv_y
        type: b4
      - id: inv_page
        type: b3
        enum: d2enum::invpage

  itemdata_gold:
    seq:
      - id: gold_is_big
        type: b1
      - id: gold_big
        type: b32
        if: gold_is_big
      - id: gold_small
        type: b12
        if: not gold_is_big
      - id: gold_unknown
        type: b1

  itemdata_name:
    seq:
      - id: name_utf8  # strz forces byte alignment, we can't have that
        type: b8
        repeat: until
        repeat-until: _ == 0
        if: _root.header.version > 97
      - id: name_ascii  # strz forces byte alignment, we can't have that
        type: b7
        repeat: until
        repeat-until: _ == 0
        if: _root.header.version <= 97

  itemdata_ear:
    seq:
      - id: name
        type: itemdata_name
      - id: ear_file_index
        type: b3
      - id: ear_level
        type: b7

  itemdata_quest:
    seq:
      - id: difficulty
        type: b2

  itemdata_realmcode:
    seq:
      - id: has_realm_code
        type: b1
      - id: realmcode
        type: b8
        repeat: expr
        repeat-expr: 16
        if: has_realm_code and _root.header.version > 96
      - id: realmcode_old
        type: b8
        repeat: expr
        repeat-expr: 12
        if: has_realm_code and _root.header.version <= 96

  iflags:
    seq:
    - id: iflag_newitem       # 0x00000001
      type: b1
    - id: iflag_target        # 0x00000002
      type: b1
    - id: iflag_targeting     # 0x00000004
      type: b1
    - id: iflag_deleted       # 0x00000008
      type: b1
    - id: iflag_identified    # 0x00000010
      type: b1
    - id: iflag_quantity      # 0x00000020
      type: b1
    - id: iflag_switchin      # 0x00000040
      type: b1
    - id: iflag_switchout     # 0x00000080
      type: b1
    - id: iflag_broken        # 0x00000100
      type: b1
    - id: iflag_repaired      # 0x00000200
      type: b1
    - id: iflag_unk1          # 0x00000400
      type: b1
    - id: iflag_socketed      # 0x00000800
      type: b1
    - id: iflag_nosell        # 0x00001000
      type: b1
    - id: iflag_instore       # 0x00002000
      type: b1
    - id: iflag_noequip       # 0x00004000
      type: b1
    - id: iflag_named         # 0x00008000
      type: b1
    - id: iflag_isear         # 0x00010000
      type: b1
    - id: iflag_startitem     # 0x00020000
      type: b1
    - id: iflag_unk2          # 0x00040000
      type: b1
    - id: iflag_init          # 0x00080000
      type: b1
    - id: iflag_unk3          # 0x00100000
      type: b1
    - id: iflag_compactsave   # 0x00200000
      type: b1
    - id: iflag_ethereal      # 0x00400000
      type: b1
    - id: iflag_justsaved     # 0x00800000
      type: b1
    - id: iflag_personalized  # 0x01000000
      type: b1
    - id: iflag_lowquality    # 0x02000000
      type: b1
    - id: iflag_runeword      # 0x04000000
      type: b1
    - id: iflag_item          # 0x08000000
      type: b1

  itemaffixdef:
    seq:
      - id: hasaffix
        type: b1
      - id: affix
        type: b11
        if: hasaffix
        valid:
          expr: affix < 788

  itemdatadef:
    seq:
      - id: socketcount
        type: b3
        valid:
          expr: socketcount <= 6
      - id: seed
        type: b32
      - id: ilvl
        type: b7
      - id: quality
        type: b4
        enum: d2enum::itemmodtype
        valid:
          expr: quality.to_i <= d2enum::itemmodtype::tempered.to_i
      - id: hasaltgfx
        type: b1
      - id: altgfx
        type: b3
        if: hasaltgfx

  itemqualitydef:
    seq:
      - id: fileindex
        type: b3

  bodypartdef:
    seq:
      - id: fileindex
        type: b10

  bookscrolldef:
    seq:
      - id: unk
        type: b5

  itemnormaldef:
    seq:
      - id: charmitem
        type: itemaffixdef
        if: |
          _parent.itemcode == d2enum::itemcodes::small_charm.to_i or
          _parent.itemcode == d2enum::itemcodes::large_charm.to_i or
          _parent.itemcode == d2enum::itemcodes::grand_charm.to_i or
          _parent.itemcode == d2enum::itemcodes::crafted_sunder_charm.to_i
      - id: bodypart
        type: bodypartdef
        if: |
          _parent.itemcode == d2enum::itemcodes::heart.to_i or
          _parent.itemcode == d2enum::itemcodes::brain.to_i or
          _parent.itemcode == d2enum::itemcodes::jawbone.to_i or
          _parent.itemcode == d2enum::itemcodes::eye.to_i or
          _parent.itemcode == d2enum::itemcodes::horn.to_i or
          _parent.itemcode == d2enum::itemcodes::tail.to_i or
          _parent.itemcode == d2enum::itemcodes::flag.to_i or
          _parent.itemcode == d2enum::itemcodes::fang.to_i or
          _parent.itemcode == d2enum::itemcodes::quill.to_i or
          _parent.itemcode == d2enum::itemcodes::soul.to_i or
          _parent.itemcode == d2enum::itemcodes::scalp.to_i or
          _parent.itemcode == d2enum::itemcodes::spleen.to_i
      - id: bookscroll
        type: bookscrolldef
        if: |
          _parent.itemcode == d2enum::itemcodes::scroll_of_town_portal.to_i or
          _parent.itemcode == d2enum::itemcodes::scroll_of_identify.to_i or
          _parent.itemcode == d2enum::itemcodes::scroll_of_knowledge.to_i or
          _parent.itemcode == d2enum::itemcodes::tome_of_town_portal.to_i or
          _parent.itemcode == d2enum::itemcodes::tome_of_identify.to_i

  itemmagicdef:
    seq:
      - id: prefix
        type: b11
        valid:
          expr: prefix < 724
      - id: suffix
        type: b11
        valid:
          expr: suffix < 788

  itemsetdef:
    seq:
      - id: fileindex
        type: b12

  itemmoddef:
    seq:
      - id: prefix
        type: itemaffixdef
      - id: suffix
        type: itemaffixdef

  itemrareaffixes:
    seq:
      - id: rareprefix
        type: b8
        valid:
          expr: rareprefix < 48
      - id: raresuffix
        type: b8
        valid:
          expr: raresuffix < 157

  itemraredef:
    seq:
      - id: rareaffixes
        type: itemrareaffixes
      - id: magicaffixes
        type: itemaffixdef
        repeat: expr
        repeat-expr: 3

  itemuniquedef:
    seq:
      - id: fileindex
        type: b12

  itemtempereddef:
    seq:
      - id: rareaffixes
        type: itemrareaffixes

  itemqualnone:
    seq:
      - id: nothing
        type: b1
        repeat: expr
        repeat-expr: 0

  itemqualdatadef:
    seq:
      - id: data
        type:
          switch-on: _parent.quality
          cases:
            d2enum::itemmodtype::lowquality: itemqualitydef
            d2enum::itemmodtype::normal: itemnormaldef
            d2enum::itemmodtype::hiquality: itemqualitydef
            d2enum::itemmodtype::magic: itemmagicdef
            d2enum::itemmodtype::set: itemsetdef
            d2enum::itemmodtype::rare: itemraredef
            d2enum::itemmodtype::unique: itemuniquedef
            d2enum::itemmodtype::crafted: itemraredef
            d2enum::itemmodtype::tempered: itemtempereddef
            _: itemqualnone
    instances:
      itemcode:
        value: _parent.itemcode

  itemarmorstats:
    seq:
      - id: armorclass
        type: d2data::itemattrib_t(d2enum::stats::armorclass)
      - id: maxdurability
        type: d2data::itemattrib_t(d2enum::stats::maxdurability)
      - id: durability
        type: d2data::itemattrib_t(d2enum::stats::durability)
        if: maxdurability.amount.as<u4> != 0

  itemweaponstats:
    seq:
      - id: attackrate
        type: d2data::itemattrib_t(d2enum::stats::attackrate)
      - id: maxdurability
        type: d2data::itemattrib_t(d2enum::stats::maxdurability)
      - id: durability
        type: d2data::itemattrib_t(d2enum::stats::durability)
        if: maxdurability.amount.as<u4> != 0

  stackabledef:
    seq:
      - id: quantity
        type: b9
        valid:
          expr: |
            (_parent.itemcode == d2enum::itemcodes::tome_of_identify.to_i or _parent.itemcode == d2enum::itemcodes::tome_of_town_portal.to_i) ?
              quantity <= 20 :
            (_parent.itemcode == d2enum::itemcodes::key.to_i) ?
              quantity <= 12 :
            (_parent.itemcode == d2enum::itemcodes::arrows.to_i or _parent.itemcode == d2enum::itemcodes::bolts.to_i) ?
              quantity <= 500 :
            quantity <= 300

  setmaskdef:
    seq:
      - id: mask
        type: b5

  runewordprefixdef:
    seq:
      - id: prefix
        type: b16

  stat_t:
    seq:
      - id: id_raw
        type: wrap_b9_attrid
        valid:
          expr: id == d2enum::stats::invalid or id.to_i <= d2enum::stats::heraldtier.to_i
      - id: param
        type: d2data::itemparam_t(id)
      - id: amount
        type: d2data::itemattrib_t(id)
    instances:
      id:
        value: id_raw.value

  statlistdef:
    params:
      - id: parent_idx
        type: u4
    seq:
      - id: statlist
        type: stat_t
        if: parent_idx < 0 or (parent_idx >= 0 and ((1 << parent_idx) & _parent.setmask_value) != 0)
        repeat: until
        repeat-until: _.id == d2enum::stats::invalid
        valid:
          expr: |
            statlist.size < 2 or
            statlist.size >= 2 and (statlist[statlist.size - 1].id.to_i != 0 or statlist[statlist.size - 2].id.to_i != 0)

  unk_bits_def:
    seq:
      - id: unk1
        type: b1

  bullshit_bit_def:
    seq:
      - id: whatever
        type: b1
        doc: extra bit to help fix bogus alignment stuff

  # TODO
  fullitemdata:
    seq:
      - id: imode_data
        type: itemdata_imode
      - id: world_position
        type: itemdata_world
        if: imode == d2enum::imode::onground or imode == d2enum::imode::dropping
      - id: inventory_position
        type: itemdata_inventory
        if: imode != d2enum::imode::onground and imode != d2enum::imode::dropping
      - id: item_code_data
        type: itemcodedef
      - id: itemcomp_hack
        type: d2data::itemcomp_util(itemcode)
      - id: itemattrs
        type: itemdatadef
      - id: oneaffix
        type: itemaffixdef
      - id: itemqualdata
        type: itemqualdatadef
      - id: runewordprefix
        type: runewordprefixdef
        if: _parent.flags.iflag_runeword
      - id: ear_info
        type: itemdata_ear
        if: _parent.flags.iflag_isear
      - id: personalization
        type: itemdata_name
        if: _parent.flags.iflag_personalized
      - id: realmdata
        type: itemdata_realmcode
      - id: unknown
        type: unk_bits_def
        if: _root.header.version >= 105
      - id: armor
        type: itemarmorstats
        if: itemcomp_hack.isarmor
      - id: weapon
        type: itemweaponstats
        if: itemcomp_hack.isweapon
      - id: gold_info
        type: itemdata_gold
        if: itemcode == d2enum::itemcodes::gold.to_i
      - id: stack_info
        type: stackabledef
        if: itemcomp_hack.isstackable
      - id: num_sockets
        type: d2data::itemattrib_t(d2enum::stats::item_numsockets)
        if: _parent.flags.iflag_socketed
        valid:
          expr: num_sockets.amount.as<u4> <= 6
      - id: set_mask
        type: setmaskdef
        if: quality == d2enum::itemmodtype::set
      - id: statlists
        type: statlistdef(_index - 1)
        repeat: expr
        repeat-expr: "1 + (quality == d2enum::itemmodtype::set ? 5 : 0) + (_parent.flags.iflag_runeword ? 1 : 0)"
      - id: bullshit_bit
        type: bullshit_bit_def

    instances:
      imode:
        value: imode_data.item_mode
      quality:
        value: itemattrs.quality
      itemcode:
        value: item_code_data.code
      setmask_value:
        value: |
          quality == d2enum::itemmodtype::set ? set_mask.mask : 0

    ## TODO finish
