{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rm_jogo",
  "creationCodeFile": "rooms/rm_jogo/RoomCreationCode.gml",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_634CB8DD","path":"rooms/rm_jogo/rm_jogo.yy",},
    {"name":"inst_33162EE5","path":"rooms/rm_jogo/rm_jogo.yy",},
    {"name":"inst_5FCD01AB","path":"rooms/rm_jogo/rm_jogo.yy",},
    {"name":"inst_1774D030","path":"rooms/rm_jogo/rm_jogo.yy",},
    {"name":"inst_6A048CA1","path":"rooms/rm_jogo/rm_jogo.yy",},
    {"name":"inst_511AFD70","path":"rooms/rm_jogo/rm_jogo.yy",},
    {"name":"inst_23FA59A2","path":"rooms/rm_jogo/rm_jogo.yy",},
    {"name":"inst_45D929F","path":"rooms/rm_jogo/rm_jogo.yy",},
    {"name":"inst_4758615B","path":"rooms/rm_jogo/rm_jogo.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Transitions","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMREffectLayer","resourceVersion":"1.0","name":"Effect","depth":100,"effectEnabled":true,"effectType":"_effect_recursive_blur","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_RecursiveBlurRadius","type":0,"value":"64",},
        {"name":"g_RecursiveBlurQuality","type":0,"value":"5",},
        {"name":"g_RecursiveBlurGamma","type":0,"value":"0",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"UI","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1774D030","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oTrash","path":"objects/oTrash/oTrash.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oTrash","path":"objects/oTrash/oTrash.yy",},"propertyId":{"name":"tipo","path":"objects/oTrash/oTrash.yy",},"value":"papel",},
          ],"rotation":0.0,"scaleX":0.31707317,"scaleY":0.30935252,"x":159.0,"y":727.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6A048CA1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oTrash","path":"objects/oTrash/oTrash.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oTrash","path":"objects/oTrash/oTrash.yy",},"propertyId":{"name":"tipo","path":"objects/oTrash/oTrash.yy",},"value":"plastico",},
          ],"rotation":0.0,"scaleX":0.31707317,"scaleY":0.30935252,"x":335.99945,"y":727.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_511AFD70","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oPause","path":"objects/oPause/oPause.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":32.0,"y":32.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_23FA59A2","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oHudText","path":"objects/oHudText/oHudText.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oHudText","path":"objects/oHudText/oHudText.yy",},"propertyId":{"name":"tipo","path":"objects/oHudText/oHudText.yy",},"value":"tempo",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":416.0,"y":32.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_45D929F","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oHudText","path":"objects/oHudText/oHudText.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oHudText","path":"objects/oHudText/oHudText.yy",},"propertyId":{"name":"tipo","path":"objects/oHudText/oHudText.yy",},"value":"pontos",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oHudText","path":"objects/oHudText/oHudText.yy",},"propertyId":{"name":"index","path":"objects/oHudText/oHudText.yy",},"value":"1",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":416.0,"y":64.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_4758615B","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oHudText","path":"objects/oHudText/oHudText.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oHudText","path":"objects/oHudText/oHudText.yy",},"propertyId":{"name":"tipo","path":"objects/oHudText/oHudText.yy",},"value":"onda",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oHudText","path":"objects/oHudText/oHudText.yy",},"propertyId":{"name":"index","path":"objects/oHudText/oHudText.yy",},"value":"1",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":416.0,"y":96.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Limites","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_634CB8DD","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oLimit","path":"objects/oLimit/oLimit.yy",},"properties":[],"rotation":0.0,"scaleX":16.0,"scaleY":0.65625,"x":256.0,"y":653.5,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_33162EE5","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oLimit","path":"objects/oLimit/oLimit.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":20.75,"x":527.0,"y":332.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5FCD01AB","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oLimit","path":"objects/oLimit/oLimit.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":20.75,"x":-17.0,"y":332.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"bkBar","animationFPS":30.0,"animationSpeedType":0,"colour":2954369048,"depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"sBar","path":"sprites/sBar/sBar.yy",},"stretch":true,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":650,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":2.0,"animationSpeedType":0,"colour":4294967295,"depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"sBkMangrove","path":"sprites/sBkMangrove/sBkMangrove.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": true,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 65.0,
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