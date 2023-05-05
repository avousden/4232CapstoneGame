GameController.xp += valueExp;
GameController.killCount ++;

var chance = irandom_range(0,100);
if (chance > 50) GameController.gold += valueGold;
