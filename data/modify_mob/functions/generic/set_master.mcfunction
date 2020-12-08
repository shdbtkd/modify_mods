
# 확률 얻기
loot spawn ~ ~ ~ loot modify_mob:operate_per
execute store result score @s perResult run data get entity @e[type= item, limit=1, sort= nearest, nbt= {Item: {tag: {clearThis: 1b}}}] Item.tag.Damage
scoreboard players remove @s perResult 31
# kill
function modify_mob:generic/kill_clear_this
# 적용
execute if score @s perResult <= masterModifierPer modifyMob run tag @s add master
execute if score @s perResult <= masterModifierPer modifyMob run scoreboard players set masterModifierPer modifyMob 0
execute unless score @s perResult <= masterModifierPer modifyMob run scoreboard players add masterModifierPer modifyMob 1
