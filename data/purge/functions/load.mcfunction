team add purge "Purge"
team modify purge color aqua
team modify purge friendlyFire false

difficulty peaceful

scoreboard objectives add purge.start trigger
scoreboard objectives add purge.stop trigger
scoreboard objectives add purge.isAdmin dummy
scoreboard objectives add purge.inDeathmatch dummy
scoreboard objectives add purge.deaths deathCount

scoreboard players set @a purge.deaths 0
scoreboard players set @a purge.inDeathmatch 0

tellraw @p {"text":"Purge Datapack loaded successfully!","color":"dark_green"}