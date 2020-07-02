execute store result score DAY boon4681.calc_s0 run data get entity @s SelectedItem.tag."boon4681.item.cooldown".day
execute store result score TIME boon4681.calc_s0 run data get entity @s SelectedItem.tag."boon4681.item.cooldown".time
execute store result score DEF.S0 boon4681.calc_s0 run time query day
execute store result score DEF.S1 boon4681.calc_s0 run time query daytime
scoreboard players set DEF.S2 boon4681.calc_s0 2
scoreboard players operation DAY boon4681.calc_s0 += DEF.S2 boon4681.calc_s0
scoreboard players operation DAY boon4681.calc_s0 -= DEF.S0 boon4681.calc_s0
scoreboard players set DEF.S2 boon4681.calc_s0 20
scoreboard players operation DAY boon4681.calc_s0 *= DEF.S2 boon4681.calc_s0
scoreboard players set DEF.S3 boon4681.calc_s0 24000
scoreboard players operation TIME boon4681.calc_s0 += DEF.S3 boon4681.calc_s0
scoreboard players operation TIME boon4681.calc_s0 -= DEF.S1 boon4681.calc_s0
scoreboard players operation SEC boon4681.calc_s0 = TIME boon4681.calc_s0
scoreboard players set DEF.S3 boon4681.calc_s0 1200
scoreboard players operation TIME boon4681.calc_s0 /= DEF.S3 boon4681.calc_s0
scoreboard players operation TIME boon4681.calc_s0 *= DEF.S3 boon4681.calc_s0
scoreboard players operation SEC boon4681.calc_s0 -= TIME boon4681.calc_s0
scoreboard players operation TIME boon4681.calc_s0 /= DEF.S3 boon4681.calc_s0
scoreboard players operation TIME boon4681.calc_s0 += DAY boon4681.calc_s0
scoreboard players operation SEC boon4681.calc_s0 /= DEF.S2 boon4681.calc_s0
execute if score SEC boon4681.calc_s0 matches ..0 if score TIME boon4681.calc_s0 matches ..0 run function boon4681.auto.hoe:durability/setsave_s1
execute if score SEC boon4681.calc_s0 matches ..9 if score TIME boon4681.calc_s0 matches ..9 run title @s actionbar ["",{"text":"0","color":"aqua"},{"score":{"name":"TIME","objective":"boon4681.calc_s0"},"color":"aqua"},{"text":":0","color":"aqua"},{"score":{"name":"SEC","objective":"boon4681.calc_s0"},"color":"aqua"}]
execute if score SEC boon4681.calc_s0 matches ..9 unless score TIME boon4681.calc_s0 matches ..9 run title @s actionbar ["",{"score":{"name":"TIME","objective":"boon4681.calc_s0"},"color":"aqua"},{"text":":0","color":"aqua"},{"score":{"name":"SEC","objective":"boon4681.calc_s0"},"color":"aqua"}]
execute unless score SEC boon4681.calc_s0 matches ..9 unless score TIME boon4681.calc_s0 matches ..9 run title @s actionbar ["",{"score":{"name":"TIME","objective":"boon4681.calc_s0"},"color":"aqua"},{"text":":","color":"aqua"},{"score":{"name":"SEC","objective":"boon4681.calc_s0"},"color":"aqua"}]