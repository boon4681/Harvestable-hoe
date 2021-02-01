execute if block ~ ~ ~ wheat[age=7] run scoreboard players set @s iscrop 1
execute if block ~ ~ ~ carrots[age=7] run scoreboard players set @s iscrop 2
execute if block ~ ~ ~ potatoes[age=7] run scoreboard players set @s iscrop 3
execute if block ~ ~ ~ beetroots[age=3] run scoreboard players set @s iscrop 4
execute if block ~ ~ ~ nether_wart[age=3] run scoreboard players set @s iscrop 5
execute if block ~ ~ ~ sugar_cane run scoreboard players set @s iscrop 6
execute if score @s du.has matches 0 run scoreboard players set @s iscrop 0