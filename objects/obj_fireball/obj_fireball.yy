{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_fireball",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_Attack1","path":"objects/obj_Attack1/obj_Attack1.yy",},"propertyId":{"name":"damage","path":"objects/obj_Attack1/obj_Attack1.yy",},"value":"obj_Player.strength + 10",},
  ],
  "parent": {
    "name": "Attacks",
    "path": "folders/Objects/Attacks.yy",
  },
  "parentObjectId": {
    "name": "obj_Attack1",
    "path": "objects/obj_Attack1/obj_Attack1.yy",
  },
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"attackSound","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"fireAttack","varType":5,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_fireball",
    "path": "sprites/spr_fireball/spr_fireball.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}