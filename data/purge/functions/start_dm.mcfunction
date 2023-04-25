worldborder set 500 1800
team modify purge friendlyFire true
gamerule keepInventory false

difficulty hard

scoreboard players set @a purge.deaths 0
scoreboard players set @a purge.inDeathmatch 1

playsound minecraft:item.goat_horn.sound.2 master @a ~ ~ ~ 400

tellraw @a ""
tellraw @a ""
tellraw @a ""
tellraw @a {"text":"This is your emergency broadcast system! Announcing the commencement of the annual minecraft purge! Weapons of class four and lower have been authorized for use during the purge. All other weapons are restricted."}
tellraw @a ""
tellraw @a ""
tellraw @a ""

title @a times 20 100 20
title @a subtitle ["",{"text":"The world will ","color":"red"},{"text":"shrink","bold":true,"underlined":true,"color":"red"},{"text":" now!","color":"red"}]
title @a title {"text":"Safety phase over!","bold":true,"color":"dark_red"}