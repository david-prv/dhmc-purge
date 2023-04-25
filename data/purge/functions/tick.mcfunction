team join purge @a

execute as @a[scores={purge.isAdmin=1..,purge.start=1..}] run function purge:start_purge
execute as @a[scores={purge.isAdmin=1..,purge.stop=1..}] run function purge:stop_purge

scoreboard players enable @a[scores={purge.isAdmin=1..}] purge.start
scoreboard players enable @a[scores={purge.isAdmin=1..}] purge.stop

gamemode spectator @a[scores={purge.inDeathmatch=1..,purge.deaths=1..}]