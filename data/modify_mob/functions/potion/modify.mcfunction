loot spawn ~ ~ ~ loot modify_mob:modify_potion

execute as @e[type= item, nbt= {Item: {id: "minecraft:splash_potion", tag: {clearThis: 1b}}}] run tag @s add modify_potion-target
execute if entity @e[tag= modify_potion-target, limit= 1] run function modify_mob:potion/append