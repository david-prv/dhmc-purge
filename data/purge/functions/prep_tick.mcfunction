execute store result bossbar minecraft:purge.timer value run scoreboard players get purge.timer purge.accumulator
scoreboard players remove purge.timer purge.accumulator 1

execute if score purge.timer purge.accumulator matches 1.. run bossbar set minecraft:purge.timer name {"text":"Deathmatch starts in ","extra":[{"score":{"name":"purge.timer","objective":"purge.accumulator"}}, {"text":"s"}]}
execute if score purge.timer purge.accumulator matches 1.. run schedule function purge:prep_tick 1s
execute if score purge.timer purge.accumulator matches ..0 run function purge:start_dm
