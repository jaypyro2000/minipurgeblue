data remove storage minipurgeblue:variables blimps
data modify storage minipurgeblue:variables blimps append value "minipurgeblue:blueblimp1"
data modify storage minipurgeblue:variables blimps append value "minipurgeblue:redblimp1"
data modify storage minipurgeblue:variables blimps append value "minipurgeblue:yellowblimp1"

scoreboard players set #one bluevariables 1
scoreboard players set #two bluevariables 2
scoreboard players operation #blimp_count bluevariables = #player_count variables
scoreboard players operation #blimp_count bluevariables += #one bluevariables
scoreboard players operation #blimp_count bluevariables /= #two bluevariables

execute store result storage minipurgeblue:variables blimp_count int 1 run scoreboard players get #blimp_count bluevariables

execute run function minipurgeblue:release_the_blimps with storage minipurgeblue:variables