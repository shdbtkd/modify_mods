
tag @s add hasModified

execute store result score @s owner0 run data get entity @s Owner[0]
execute store result score @s owner1 run data get entity @s Owner[1]
execute store result score @s owner2 run data get entity @s Owner[2]
execute store result score @s owner3 run data get entity @s Owner[3]

execute at @e[tag= hasModified, type= witch] if score @e[distance= ..0, tag= hasModified, type= witch, limit= 1, sort= nearest] owner0 = @s owner0 if score @e[distance= ..0, tag= hasModified, type= witch, limit= 1, sort= nearest] owner1 = @s owner1 if score @e[distance= ..0, tag= hasModified, type= witch, limit= 1, sort= nearest] owner2 = @s owner2 if score @e[distance= ..0, tag= hasModified, type= witch, limit= 1, sort= nearest] owner3 = @s owner3 run function modify_mob:potion/modify