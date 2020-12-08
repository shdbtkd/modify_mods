
# 확률 얻기
loot spawn ~ ~ ~ loot modify_mob:operate_per
execute store result score @s perResult run data get entity @e[type= item, limit=1, sort= nearest, nbt= {Item: {tag: {clearThis: 1b}}}] Item.tag.Damage
scoreboard players remove @s perResult 31
# kill
function modify_mob:generic/kill_clear_this

# 확률 계산
execute if score @s perResult <= genericModifierPer modifyMob run scoreboard players set @s modifyMob 1
execute unless score @s perResult <= genericModifierPer modifyMob run scoreboard players set @s modifyMob 0

execute if entity @s[tag= master] run scoreboard players set @s modifyMob 1