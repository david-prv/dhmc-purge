scoreboard players set @s purge.start 0

worldborder set 4000

team modify purge friendlyFire false
gamemode survival @a
gamerule keepInventory true

difficulty hard

scoreboard players set @a purge.deaths 0
scoreboard players set @a purge.inDeathmatch 0

clear @a
playsound minecraft:item.goat_horn.sound.5 master @a ~ ~ ~ 400
execute as @a run function player_tracker:players/give_compass

title @a times 20 100 20
title @a subtitle {"text":"Arm yourself and prepare!"}
title @a title {"text":"THE PURGE!","bold":true,"color":"dark_red"}

tellraw @a ""
tellraw @a ""
tellraw @a ""
tellraw @a ["",{"text":"This is your emergency broadcast system! The annual minecraft purge is going to take place in "},{"text":"120 minutes","bold":true,"underlined":true},{"text":"! Mine resources, weaponize and prepare for combat. This is not a test!"}]
tellraw @a ""
tellraw @a ""
tellraw @a ""

schedule function purge:start_dm 7200s
#> schedule function purge:start_dm 30s
