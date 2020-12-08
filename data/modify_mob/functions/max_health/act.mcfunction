
# 확률 얻기
loot spawn ~ ~ ~ loot modify_mob:operate_per
execute store result score @s perResult run data get entity @e[type= item, limit=1, sort= nearest, nbt= {Item: {tag: {clearThis: 1b}}}] Item.tag.Damage
scoreboard players remove @s perResult 31
# kill
function modify_mob:generic/kill_clear_this

# 확률 계산
scoreboard players operation @s modifyMob = genericMaxHealth modifyMob
scoreboard players operation @s modifyMob *= @s perResult
scoreboard players operation @s modifyMob /= genericPerMax perResult

# 최소값 지정
execute store result score @s movementStore run attribute @s minecraft:generic.max_health get
scoreboard players operation @s modifyMob += @s maxHealthStore
# 결과 적용
execute store result entity @s Attributes[{ Name: "minecraft:generic.max_health" }].Base double 1 run scoreboard players get @s modifyMob
execute store result entity @s Health float 1 run scoreboard players get @s modifyMob

