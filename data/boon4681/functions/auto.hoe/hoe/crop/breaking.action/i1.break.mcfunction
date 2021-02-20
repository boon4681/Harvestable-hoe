# reset bn4681.ahoe.bsuc
scoreboard players set @s bn4681.ahoe.bsuc 0

# execute the success of setblock
execute if score @s bn4681.ahoe.bsuc matches 0 if score @s bn4681.ahoe.crop matches 1 store success score @s bn4681.ahoe.bsuc run setblock ~ ~ ~ wheat[age=0] destroy
execute if score @s bn4681.ahoe.bsuc matches 0 if score @s bn4681.ahoe.crop matches 2 store success score @s bn4681.ahoe.bsuc run setblock ~ ~ ~ carrots[age=0] destroy
execute if score @s bn4681.ahoe.bsuc matches 0 if score @s bn4681.ahoe.crop matches 3 store success score @s bn4681.ahoe.bsuc run setblock ~ ~ ~ potatoes[age=0] destroy
execute if score @s bn4681.ahoe.bsuc matches 0 if score @s bn4681.ahoe.crop matches 4 store success score @s bn4681.ahoe.bsuc run setblock ~ ~ ~ beetroots[age=0] destroy
execute if score @s bn4681.ahoe.bsuc matches 0 if score @s bn4681.ahoe.crop matches 5 store success score @s bn4681.ahoe.bsuc run setblock ~ ~ ~ nether_wart[age=0] destroy

# if true run durability damage
execute if score @s bn4681.ahoe.bsuc matches 1 run function boon4681:auto.hoe/hoe/durability/damage