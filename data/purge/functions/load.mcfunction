team add purge "Purge"
team modify purge color aqua
team modify purge friendlyFire false

bossbar add purge.timer "Deathmatch starts in ..."
bossbar set purge.timer style progress
bossbar set purge.timer color red
bossbar set purge.timer max 7200
bossbar set purge.timer visible false
bossbar set purge.timer players @a
bossbar set purge.timer value 7200

difficulty peaceful

scoreboard objectives add purge.start trigger
scoreboard objectives add purge.stop trigger
scoreboard objectives add purge.isAdmin dummy
scoreboard objectives add purge.inDeathmatch dummy
scoreboard objectives add purge.deaths deathCount
scoreboard objectives add purge.accumulator dummy

scoreboard players set purge.timer purge.accumulator 7200

scoreboard players set @a purge.deaths 0
scoreboard players set @a purge.inDeathmatch 0

tellraw @a {"text":"Purge Datapack loaded successfully!","color":"dark_green"}
