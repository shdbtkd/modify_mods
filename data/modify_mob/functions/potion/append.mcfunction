
data modify entity @s Item.tag.CustomPotionEffects append from entity @e[tag= modify_potion-target, limit= 1] Item.tag.CustomPotionEffects[0]
kill @e[tag= modify_potion-target, limit= 1]
execute if entity @e[tag= modify_potion-target, limit= 1] run function modify_mob:potion/append