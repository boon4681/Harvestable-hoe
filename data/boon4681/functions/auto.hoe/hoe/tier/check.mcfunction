# get available of durability
execute store result score @s bn4681.glob.du.a run data get entity @s SelectedItem.tag."boon4681.item".durability.has
execute store result score @s bn4681.glob.i.cd run data get entity @s SelectedItem.tag."boon4681.item".cooldown.was

execute if score @s bn4681.glob.du.a matches ..0 run scoreboard players set @s boon4681.item.id 0
execute if score @s bn4681.glob.du.a matches 0 if score @s bn4681.glob.i.cd matches 0 run function boon4681:auto.hoe/hoe/cooldown/set
execute if score @s bn4681.glob.du.a matches 0 if score @s bn4681.glob.i.cd matches 1 run function boon4681:auto.hoe/hoe/cooldown/date.calc
execute if score @s bn4681.glob.du.a matches 1.. if score @s bn4681.glob.i.cd matches 0 at @s run function boon4681:auto.hoe/hoe/tier/run