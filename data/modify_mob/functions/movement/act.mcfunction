
# 확률 얻기
loot spawn ~ ~ ~ loot modify_mob:operate_per
execute store result score @s perResult run data get entity @e[type= item, limit=1, sort= nearest, nbt= {Item: {tag: {clearThis: 1b}}}] Item.tag.Damage
scoreboard players remove @s perResult 31
# kill
function modify_mob:generic/kill_clear_this

# 확률 계산
scoreboard players operation @s modifyMob = genericMovement modifyMob
scoreboard players operation @s modifyMob *= @s perResult
scoreboard players operation @s modifyMob /= genericPerMax perResult

# 기본 값 저장
execute store result score @s movementStore run attribute @s minecraft:generic.movement_speed get 1000
# 기본 값 더하기
scoreboard players operation @s modifyMob += @s movementStore

# 결과 적용
execute store result entity @s Attributes[{ Name: "minecraft:generic.movement_speed" }].Base double 0.001 run scoreboard players get @s modifyMob
