scoreboard players set @s purge.stop 0

worldborder set 4000
team modify purge friendlyFire false
gamemode survival @a

difficulty peaceful

scoreboard players set @a purge.inDeathmatch 0
scoreboard players set @a purge.deaths 0

bossbar set purge.timer visible false
bossbar set purge.timer value 7200
bossbar set purge.timer name "Deathmatch starts in ..."

schedule clear purge:prep_tick
scoreboard players set purge.timer purge.accumulator 7200

playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 400

clear @a

tellraw @a ""
tellraw @a ""
tellraw @a ""
tellraw @a {"text":"This is your emergency broadcast system! The purge has come to an end. The unauthorized use of weapons and murder are now illegal again. Congratulations to the survivors!"}
tellraw @a ""
tellraw @a ""
tellraw @a ""

schedule clear purge:start_dm

title @a times 20 100 20
title @a subtitle {"text":"Congratulations to all survivors!","color":"green"}
title @a title {"text":"The Purge ended!","bold":true,"color":"dark_green"}
