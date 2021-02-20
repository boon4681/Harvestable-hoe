execute store result score DAY bn4681.glob.i.cc run data get entity @s SelectedItem.tag."boon4681.item".cooldown.day
execute store result score TIME bn4681.glob.i.cc run data get entity @s SelectedItem.tag."boon4681.item".cooldown.time
execute store result score DEF.S0 bn4681.glob.i.cc run time query day
execute store result score DEF.S1 bn4681.glob.i.cc run time query daytime
# Add day (1 day is 20 min)
scoreboard players set DEF.S2 bn4681.glob.i.cc 2
scoreboard players operation DAY bn4681.glob.i.cc += DEF.S2 bn4681.glob.i.cc
scoreboard players operation DAY bn4681.glob.i.cc -= DEF.S0 bn4681.glob.i.cc
scoreboard players set DEF.S2 bn4681.glob.i.cc 20
scoreboard players operation DAY bn4681.glob.i.cc *= DEF.S2 bn4681.glob.i.cc
# Add tick for 1 day is 24000t (20 for 1 sec)
scoreboard players set DEF.S3 bn4681.glob.i.cc 24000
scoreboard players operation TIME bn4681.glob.i.cc += DEF.S3 bn4681.glob.i.cc
scoreboard players operation TIME bn4681.glob.i.cc -= DEF.S1 bn4681.glob.i.cc
scoreboard players operation SEC bn4681.glob.i.cc = TIME bn4681.glob.i.cc
scoreboard players set DEF.S3 bn4681.glob.i.cc 1200
scoreboard players operation TIME bn4681.glob.i.cc /= DEF.S3 bn4681.glob.i.cc
scoreboard players operation TIME bn4681.glob.i.cc *= DEF.S3 bn4681.glob.i.cc
scoreboard players operation SEC bn4681.glob.i.cc -= TIME bn4681.glob.i.cc
scoreboard players operation TIME bn4681.glob.i.cc /= DEF.S3 bn4681.glob.i.cc
scoreboard players operation TIME bn4681.glob.i.cc += DAY bn4681.glob.i.cc
scoreboard players operation SEC bn4681.glob.i.cc /= DEF.S2 bn4681.glob.i.cc
execute if score TIME bn4681.glob.i.cc matches ..-1 run function boon4681:auto.hoe/hoe/cooldown/reset
execute if score SEC bn4681.glob.i.cc matches ..9 if score TIME bn4681.glob.i.cc matches ..9 run title @s actionbar ["",{"text":"0","color":"aqua"},{"score":{"name":"TIME","objective":"bn4681.glob.i.cc"},"color":"aqua"},{"text":":0","color":"aqua"},{"score":{"name":"SEC","objective":"bn4681.glob.i.cc"},"color":"aqua"}]
execute if score SEC bn4681.glob.i.cc matches ..9 unless score TIME bn4681.glob.i.cc matches ..9 run title @s actionbar ["",{"score":{"name":"TIME","objective":"bn4681.glob.i.cc"},"color":"aqua"},{"text":":0","color":"aqua"},{"score":{"name":"SEC","objective":"bn4681.glob.i.cc"},"color":"aqua"}]
execute unless score SEC bn4681.glob.i.cc matches ..9 if score TIME bn4681.glob.i.cc matches ..9 run title @s actionbar ["",{"text":"0","color":"aqua"},{"score":{"name":"TIME","objective":"bn4681.glob.i.cc"},"color":"aqua"},{"text":":","color":"aqua"},{"score":{"name":"SEC","objective":"bn4681.glob.i.cc"},"color":"aqua"}]
execute unless score SEC bn4681.glob.i.cc matches ..9 unless score TIME bn4681.glob.i.cc matches ..9 run title @s actionbar ["",{"score":{"name":"TIME","objective":"bn4681.glob.i.cc"},"color":"aqua"},{"text":":","color":"aqua"},{"score":{"name":"SEC","objective":"bn4681.glob.i.cc"},"color":"aqua"}]