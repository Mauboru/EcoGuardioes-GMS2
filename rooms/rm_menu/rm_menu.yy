{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rm_menu",
  "creationCodeFile": "rooms/rm_menu/RoomCreationCode.gml",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_644DF87E","path":"rooms/rm_menu/rm_menu.yy",},
    {"name":"inst_C7B69DA","path":"rooms/rm_menu/rm_menu.yy",},
    {"name":"inst_4287FE10","path":"rooms/rm_menu/rm_menu.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Transitions","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"UI","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_644DF87E","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_play","path":"objects/obj_play/obj_play.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_buttom","path":"objects/obj_buttom/obj_buttom.yy",},"propertyId":{"name":"destino","path":"objects/obj_buttom/obj_buttom.yy",},"value":"rm_map",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":-64.0,"y":96.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_C7B69DA","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_volume","path":"objects/obj_volume/obj_volume.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":-64.0,"y":160.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4287FE10","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_exit","path":"objects/obj_exit/obj_exit.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_buttom","path":"objects/obj_buttom/obj_buttom.yy",},"propertyId":{"name":"on_click","path":"objects/obj_buttom/obj_buttom.yy",},"value":"fn_exit_buttom",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":-64.0,"y":224.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Title","animationFPS":0.0,"animationSpeedType":0,"colour":4294967295,"depth":300,"effectEnabled":true,"effectType":"_filter_heathaze","gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_Distort1Speed","type":0,"value":"0.01",},
        {"name":"g_Distort2Speed","type":0,"value":"0.025",},
        {"name":"g_Distort1Scale","type":0,"value":"13.3",},
        {"name":"g_Distort1Scale","type":0,"value":"1.3",},
        {"name":"g_Distort2Scale","type":0,"value":"33.3",},
        {"name":"g_Distort2Scale","type":0,"value":"3.3",},
        {"name":"g_Distort1Amount","type":0,"value":"2",},
        {"name":"g_Distort2Amount","type":0,"value":"4",},
        {"name":"g_ChromaSpreadAmount","type":0,"value":"0.5",},
        {"name":"g_CamOffsetScale","type":0,"value":"1",},
        {"name":"g_DistortTexture","type":2,"value":"_filter_heathaze_noise_sprite",},
      ],"spriteId":{"name":"spr_title_menu","path":"sprites/spr_title_menu/spr_title_menu.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":-80,},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"Effect_particles","depth":400,"effectEnabled":true,"effectType":"_effect_windblown_particles","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"param_sprite","type":2,"value":"spr_lixos",},
        {"name":"param_num_particles","type":0,"value":"60",},
        {"name":"param_particle_spawn_time","type":0,"value":"100",},
        {"name":"param_particle_spawn_all_at_start","type":0,"value":"1",},
        {"name":"param_warmup_frames","type":0,"value":"0",},
        {"name":"param_particle_mass_min","type":0,"value":"0.005",},
        {"name":"param_particle_mass_max","type":0,"value":"0.01",},
        {"name":"param_particle_start_sprite_scale","type":0,"value":"1",},
        {"name":"param_particle_end_sprite_scale","type":0,"value":"1",},
        {"name":"param_particle_col_1","type":1,"value":"#FFFFFFFF",},
        {"name":"param_particle_col_alt_1","type":1,"value":"#FFFFFFFF",},
        {"name":"param_particle_col_2","type":1,"value":"#FFFFFFFF",},
        {"name":"param_particle_col_alt_2","type":1,"value":"#FFFFFFFF",},
        {"name":"param_particle_col_2_pos","type":0,"value":"0.33",},
        {"name":"param_particle_col_enabled_2","type":0,"value":"0",},
        {"name":"param_particle_col_3","type":1,"value":"#FFFFFFFF",},
        {"name":"param_particle_col_alt_3","type":1,"value":"#FFFFFFFF",},
        {"name":"param_particle_col_3_pos","type":0,"value":"0.66",},
        {"name":"param_particle_col_enabled_3","type":0,"value":"0",},
        {"name":"param_particle_col_4","type":1,"value":"#FFFFFFFF",},
        {"name":"param_particle_col_alt_4","type":1,"value":"#FFFFFFFF",},
        {"name":"param_particle_initial_velocity_range_x_min","type":0,"value":"-100",},
        {"name":"param_particle_initial_velocity_range_x_max","type":0,"value":"100",},
        {"name":"param_particle_initial_velocity_range_y_min","type":0,"value":"-100",},
        {"name":"param_particle_initial_velocity_range_y_max","type":0,"value":"100",},
        {"name":"param_particle_initial_rotation_min","type":0,"value":"0",},
        {"name":"param_particle_initial_rotation_max","type":0,"value":"360",},
        {"name":"param_particle_rot_speed_min","type":0,"value":"-360",},
        {"name":"param_particle_rot_speed_max","type":0,"value":"360",},
        {"name":"param_particle_align_vel","type":0,"value":"1",},
        {"name":"param_particle_lifetime_min","type":0,"value":"100",},
        {"name":"param_particle_lifetime_max","type":0,"value":"100",},
        {"name":"param_particle_update_skip","type":0,"value":"1",},
        {"name":"param_particle_spawn_border_prop","type":0,"value":"0.25",},
        {"name":"param_particle_src_blend","type":0,"value":"5",},
        {"name":"param_particle_dest_blend","type":0,"value":"6",},
        {"name":"param_trails_only","type":0,"value":"0",},
        {"name":"param_trail_chance","type":0,"value":"40",},
        {"name":"param_trail_lifetime_min","type":0,"value":"0.5",},
        {"name":"param_trail_lifetime_max","type":0,"value":"1",},
        {"name":"param_trail_thickness_min","type":0,"value":"0.15",},
        {"name":"param_trail_thickness_max","type":0,"value":"0.15",},
        {"name":"param_trail_col_1","type":1,"value":"#19FFFFFF",},
        {"name":"param_trail_col_alt_1","type":1,"value":"#3FFFFFFF",},
        {"name":"param_trail_col_2","type":1,"value":"#19FFFFFF",},
        {"name":"param_trail_col_alt_2","type":1,"value":"#3FFFFFFF",},
        {"name":"param_trail_col_2_pos","type":0,"value":"0.5",},
        {"name":"param_trail_col_enabled_2","type":0,"value":"1",},
        {"name":"param_trail_col_3","type":1,"value":"#19FFFFFF",},
        {"name":"param_trail_col_alt_3","type":1,"value":"#3FFFFFFF",},
        {"name":"param_trail_col_3_pos","type":0,"value":"0.66",},
        {"name":"param_trail_col_enabled_3","type":0,"value":"0",},
        {"name":"param_trail_col_4","type":1,"value":"#00FFFFFF",},
        {"name":"param_trail_col_alt_4","type":1,"value":"#00FFFFFF",},
        {"name":"param_trail_min_segment_length","type":0,"value":"20",},
        {"name":"param_trail_src_blend","type":0,"value":"5",},
        {"name":"param_trail_dest_blend","type":0,"value":"6",},
        {"name":"param_num_blowers","type":0,"value":"3",},
        {"name":"param_blower_size_min","type":0,"value":"0.2",},
        {"name":"param_blower_size_max","type":0,"value":"0.6",},
        {"name":"param_blower_speed_min","type":0,"value":"0.2",},
        {"name":"param_blower_speed_max","type":0,"value":"0.5",},
        {"name":"param_blower_rot_speed_min","type":0,"value":"-180",},
        {"name":"param_blower_rot_speed_max","type":0,"value":"180",},
        {"name":"param_blower_force_min","type":0,"value":"5",},
        {"name":"param_blower_force_max","type":0,"value":"15",},
        {"name":"param_blower_camvec_scale","type":0,"value":"-1",},
        {"name":"param_force_grid_sizex","type":0,"value":"8",},
        {"name":"param_force_grid_sizey","type":0,"value":"8",},
        {"name":"param_wind_vector_x","type":0,"value":"-4",},
        {"name":"param_wind_vector_y","type":0,"value":"-1",},
        {"name":"param_dragcoeff","type":0,"value":"1",},
        {"name":"param_grav_accel","type":0,"value":"300",},
        {"name":"param_debug_grid","type":0,"value":"0",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":2.0,"animationSpeedType":0,"colour":4294967295,"depth":500,"effectEnabled":true,"effectType":"_effect_recursive_blur","gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_RecursiveBlurRadius","type":0,"value":"20",},
        {"name":"g_RecursiveBlurQuality","type":0,"value":"5",},
        {"name":"g_RecursiveBlurGamma","type":0,"value":"0",},
      ],"spriteId":{"name":"spr_bk_menu","path":"sprites/spr_bk_menu/spr_bk_menu.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 800,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 512,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":800,"hspeed":-1,"hview":800,"inherit":false,"objectId":null,"vborder":32,"visible":true,"vspeed":-1,"wport":512,"wview":512,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": true,
    "inheritViewSettings": false,
  },
  "volume": 1.0,
}