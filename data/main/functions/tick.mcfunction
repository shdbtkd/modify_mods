
execute as @e[tag= !hasModified] at @s if entity @s[type= #minecraft:modify_targets] unless score @s modifyMob matches 0.. run function modify_mob:all

execute as @e[tag= !hasModified, type= potion] run function modify_mob:potion/register