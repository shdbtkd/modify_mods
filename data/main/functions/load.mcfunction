scoreboard objectives add modifyMob dummy
execute unless score genericModifierPer modifyMob matches 0.. run scoreboard players set genericModifierPer modifyMob 35
execute unless score masterModifierPer modifyMob matches 0.. run scoreboard players set masterModifierPer modifyMob 0
execute unless score genericMaxHealth modifyMob matches 0.. run scoreboard players set genericMaxHealth modifyMob 40
execute unless score lessMaxHealth modifyMob matches 0.. run scoreboard players set lessMaxHealth modifyMob 25
execute unless score moresMaxHealth modifyMob matches 0.. run scoreboard players set moresMaxHealth modifyMob 100
execute unless score genericMovement modifyMob matches 0.. run scoreboard players set genericMovement modifyMob 100
execute unless score genericAttackDamage modifyMob matches 0.. run scoreboard players set genericAttackDamage modifyMob 38
execute unless score genericAttackKnockback modifyMob matches 0.. run scoreboard players set genericAttackKnockback modifyMob 50
# execute unless score genericKnockbackResistance modifyMob matches 0.. run scoreboard players set genericKnockbackResistance modifyMob 1
# execute unless score poweredCreeper modifyMob matches 0.. run scoreboard players set poweredCreeper modifyMob 6
execute unless score explosionRadius modifyMob matches 0.. run scoreboard players set explosionRadius modifyMob 6
execute unless score fuseCreeper modifyMob matches 0.. run scoreboard players set fuseCreeper modifyMob 30
execute unless score skeletonLevitate modifyMob matches 0.. run scoreboard players set skeletonLevitate modifyMob 30

scoreboard objectives add perResult dummy
scoreboard players set genericPerMax perResult 100

scoreboard objectives add maxHealthStore dummy
scoreboard objectives add movementStore dummy
scoreboard objectives add DamageStore dummy

scoreboard objectives add owner0 dummy
scoreboard objectives add owner1 dummy
scoreboard objectives add owner2 dummy
scoreboard objectives add owner3 dummy