execute positioned ~ ~ ~ if block ~ ~ ~ wheat[age=7] run scoreboard players set @s iscrop 1
execute positioned ~ ~ ~ if block ~ ~ ~ carrots[age=7] run scoreboard players set @s iscrop 2
execute positioned ~ ~ ~ if block ~ ~ ~ potatoes[age=7] run scoreboard players set @s iscrop 3
execute positioned ~ ~ ~ if block ~ ~ ~ beetroots[age=3] run scoreboard players set @s iscrop 4
execute positioned ~ ~ ~ if block ~ ~ ~ nether_wart[age=3] run scoreboard players set @s iscrop 5
execute positioned ~ ~ ~ if block ~ ~ ~ sugar_cane run scoreboard players set @s iscrop 6
execute if score @s du.has matches 0 run scoreboard players set @s iscrop 0