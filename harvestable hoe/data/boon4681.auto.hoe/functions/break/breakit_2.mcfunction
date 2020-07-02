execute positioned ~ ~ ~ run function boon4681.auto.hoe:break/breakit_1
function boon4681.auto.hoe:durability/getdata
execute positioned ~ ~1 ~ run function boon4681.auto.hoe:break/crop
execute if score @s iscrop matches 6 positioned ~ ~1 ~ run setblock ~ ~ ~ air destroy
execute unless score @s iscrop matches 0 run scoreboard players remove @s du.has 1
execute unless score @s iscrop matches 0 run function boon4681.auto.hoe:durability/save
execute unless score @s iscrop matches 0 run scoreboard players set @s iscrop 0