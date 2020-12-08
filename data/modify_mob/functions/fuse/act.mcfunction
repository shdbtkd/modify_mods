
# 확률 얻기
loot spawn ~ ~ ~ loot modify_mob:operate_per
execute store result score @s perResult run data get entity @e[type= item, limit=1, sort= nearest, nbt= {Item: {tag: {clearThis: 1b}}}] Item.tag.Damage
scoreboard players remove @s perResult 31
# kill
function modify_mob:generic/kill_clear_this

# 확률 계산
scoreboard players operation @s modifyMob = fuseCreeper modifyMob
scoreboard players operation @s modifyMob *= @s perResult
scoreboard players operation @s modifyMob /= genericPerMax perResult

# 최소값 추가
scoreboard players add @s modifyMob 10
# 결과 적용
execute store result entity @s Fuse byte 1 run scoreboard players get @s modifyMob