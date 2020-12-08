
# 표식
tag @s add hasModified
# 마스터
function modify_mob:generic/set_master

### 촤대 체력 ###
    ### 확률 ###
        function modify_mob:generic/operate_per
    ### 기본 ###
        execute if entity @s[type= #minecraft:generic_health_targets, scores= {modifyMob= 1..}] run function modify_mob:max_health/act
    ### 적은 ###
        execute if entity @s[type= #minecraft:less_health_targets, scores= {modifyMob= 1..}] run function modify_mob:max_health/act_less
    ### 많은 ###
        execute if entity @s[type= #minecraft:more_health_targets, scores= {modifyMob= 1..}] run function modify_mob:max_health/act_more
### 촤대 체력 ###

### 이동 속도 ###
    ### 확률 ###
        function modify_mob:generic/operate_per
    ### 기본 ###
        execute if entity @s[scores= {modifyMob= 1..}] run function modify_mob:movement/act
### 이동 속도 ###

### 공격력 ###
    ### 확률 ###
        # 조건 / 거미류 일때
        execute if entity @s[type= #minecraft:all/spiders] run function modify_mob:generic/operate_per
    ### 거미 ###
        execute if entity @s[type= #minecraft:all/spiders, scores= {modifyMob= 1..}] run function modify_mob:attact_damage/act
### 공격력 ###

### 밀치기 ###
    # 조건 / 거미류 일때
        execute if entity @s[type= #minecraft:all/spiders] run function modify_mob:generic/operate_per
    ### 거미 ###
        execute if entity @s[type= #minecraft:all/spiders, scores= {modifyMob= 1..}] run function modify_mob:knockback/act
### 밀치기 ###

### 밀치기 저항 ###
    ### 확률 ###
        function modify_mob:generic/operate_per
    ### 기본 ###
        execute if entity @s[scores= {modifyMob= 1..}] run function modify_mob:knockback_resist/act
### 밀치기 저항 ###

### 증원군 ###
    ### 확률 ###
        execute if entity @s[type= #minecraft:zombies] run function modify_mob:generic/operate_per
    ### 좀비 ###
        execute if entity @s[type= #minecraft:zombies] run function modify_mob:zombie_reinforce/act
### 증원군 ###

### 폭팔 크기 ###
    ### 확률 ###
        execute if entity @s[type= minecraft:creeper] run function modify_mob:generic/operate_per
    ### 크리퍼 ###
        execute if entity @s[type= minecraft:creeper, scores= {modifyMob= 1..}] run function modify_mob:explosion_radius/act
    ### 가스트 화염구 ###
### 폭팔 크기 ###

### 퓨즈 ###
    ### 확률 ###
        execute if entity @s[type= minecraft:creeper] run function modify_mob:generic/operate_per
    ### 크리퍼 ###
        execute if entity @s[type= minecraft:creeper, scores= {modifyMob= 1..}] run function modify_mob:fuse/act
### 퓨즈 ###

### 스켈레톤 활 ###
    ### 확률 ###
        execute if entity @s[type= minecraft:skeleton] run function modify_mob:generic/operate_per
    ### 스켈레톤 ###
        execute if entity @s[type= minecraft:skeleton, scores= {modifyMob= 1..}] run function modify_mob:skeleton_weapon/act
### 스켈레톤 활 ###

### 마녀 포션 ###
    ### 등록 ###
        execute if entity @s[type= minecraft:witch] store result score @s owner0 run data get entity @s UUID[0]
        execute if entity @s[type= minecraft:witch] store result score @s owner1 run data get entity @s UUID[1]
        execute if entity @s[type= minecraft:witch] store result score @s owner2 run data get entity @s UUID[2]
        execute if entity @s[type= minecraft:witch] store result score @s owner3 run data get entity @s UUID[3]
### 마녀 포션 ###