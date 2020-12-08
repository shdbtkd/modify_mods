
# 확률 얻기
loot spawn ~ ~ ~ loot modify_mob:operate_per
execute store result score @s perResult run data get entity @e[type= item, limit=1, sort= nearest, nbt= {Item: {tag: {clearThis: 1b}}}] Item.tag.Damage
scoreboard players remove @s perResult 31
# kill
function modify_mob:generic/kill_clear_this

# 활 인첸트
loot replace entity @s weapon.offhand loot modify_mob:skeleton_enchanted_book
data modify entity @s HandItems[{id: "minecraft:bow"}].tag.Enchantments append from entity @s HandItems[{id: "minecraft:enchanted_book"}].tag.Enchantments[0]

# 화살 드롭
loot replace entity @s weapon.offhand loot modify_mob:skeleton_tipped_arrow

# 확률 계산
scoreboard players operation @s modifyMob = skeletonLevitate modifyMob
scoreboard players operation @s modifyMob *= @s perResult
scoreboard players operation @s modifyMob /= genericPerMax perResult

# 기본값
scoreboard players add @s modifyMob 20

# 적용
execute store result entity @s HandItems[{id: "minecraft:tipped_arrow"}].tag.CustomPotionEffects[0].Amplifier byte 1 run scoreboard players get @s modifyMob