# execute the success of setblock
execute positioned ~ ~ ~ run function boon4681:auto.hoe/hoe/crop/breaking.action/i1.break
execute if score @s bn4681.ahoe.bsuc matches 0 if score @s bn4681.ahoe.crop matches 6 positioned ~ ~1 ~ if block ~ ~ ~ sugar_cane store success score @s bn4681.ahoe.bsuc run setblock ~ ~ ~ air destroy

# if true run durability damage
execute if score @s bn4681.ahoe.bsuc matches 1 run function boon4681:auto.hoe/hoe/durability/damage