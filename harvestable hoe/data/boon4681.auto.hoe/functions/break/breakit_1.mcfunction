execute if score @s iscrop matches 1 run setblock ~ ~ ~ wheat[age=0] destroy
execute if score @s iscrop matches 2 run setblock ~ ~ ~ carrots[age=0] destroy
execute if score @s iscrop matches 3 run setblock ~ ~ ~ potatoes[age=0] destroy
execute if score @s iscrop matches 4 run setblock ~ ~ ~ beetroots[age=0] destroy
execute if score @s iscrop matches 5 run setblock ~ ~ ~ nether_wart[age=0] destroy
execute unless score @s iscrop matches 0 unless score @s iscrop matches 6 run function boon4681.auto.hoe:durability/getdata
execute unless score @s iscrop matches 0 unless score @s iscrop matches 6 run scoreboard players remove @s du.has 1
execute unless score @s iscrop matches 0 run function boon4681.auto.hoe:durability/save
execute unless score @s iscrop matches 0 run scoreboard players set @s iscrop 0