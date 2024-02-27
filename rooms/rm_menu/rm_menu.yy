{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rm_menu",
  "creationCodeFile": "rooms/rm_menu/RoomCreationCode.gml",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_37E38EEB","path":"rooms/rm_menu/rm_menu.yy",},
    {"name":"inst_644DF87E","path":"rooms/rm_menu/rm_menu.yy",},
    {"name":"inst_C7B69DA","path":"rooms/rm_menu/rm_menu.yy",},
    {"name":"inst_4287FE10","path":"rooms/rm_menu/rm_menu.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Transitions","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"UI","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_644DF87E","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_play","path":"objects/obj_play/obj_play.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_buttom","path":"objects/obj_buttom/obj_buttom.yy",},"propertyId":{"name":"destino","path":"objects/obj_buttom/obj_buttom.yy",},"value":"rm_cutscene",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":-160.0,"y":32.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_C7B69DA","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_volume","path":"objects/obj_volume/obj_volume.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":-160.0,"y":96.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4287FE10","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_exit","path":"objects/obj_exit/obj_exit.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_buttom","path":"objects/obj_buttom/obj_buttom.yy",},"propertyId":{"name":"on_click","path":"objects/obj_buttom/obj_buttom.yy",},"value":"fn_exit_buttom",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":-160.0,"y":160.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_37E38EEB","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"obj_menu_manager","path":"objects/obj_menu_manager/obj_menu_manager.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":-96.0,"y":64.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"Effect","depth":300,"effectEnabled":true,"effectType":"_effect_recursive_blur","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_RecursiveBlurRadius","type":0,"value":"64",},
        {"name":"g_RecursiveBlurQuality","type":0,"value":"4.6",},
        {"name":"g_RecursiveBlurGamma","type":0,"value":"0",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"sprJogo","path":"sprites/sprJogo/sprJogo.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
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