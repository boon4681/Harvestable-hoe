scoreboard players set @s bn4681.glob.i.cd 0
execute store result score @s bn4681.glob.du.b run data get entity @s SelectedItem.tag."boon4681.item".durability.max

setblock 29999977 0 29999977 yellow_shulker_box
data modify block 29999977 0 29999977 Items append from entity @s SelectedItem

execute store result block 29999977 0 29999977 Items[0].tag."boon4681.item".durability.has int 1 run scoreboard players get @s bn4681.glob.du.b
execute store result block 29999977 0 29999977 Items[0].tag."boon4681.item".cooldown.was int 1 run scoreboard players get @s bn4681.glob.i.cd
execute store result block 29999977 0 29999977 Items[0].tag."boon4681.item".cooldown.day int 1 run time query day
execute store result block 29999977 0 29999977 Items[0].tag."boon4681.item".cooldown.time int 1 run time query daytime

loot replace entity @s weapon.mainhand mine 29999977 0 29999977 minecraft:stick{drop_contents:true}