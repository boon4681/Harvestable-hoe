scoreboard players set @s bn4681.glob.i.cd 1

setblock 29999977 0 29999977 yellow_shulker_box
data modify block 29999977 0 29999977 Items append from entity @s SelectedItem

execute store result block 29999977 0 29999977 Items[0].tag."boon4681.item".durability.has int 1 run scoreboard players get @s bn4681.glob.du.a
execute store result block 29999977 0 29999977 Items[0].tag."boon4681.item".cooldown.was int 1 run scoreboard players get @s bn4681.glob.i.cd
execute store result block 29999977 0 29999977 Items[0].tag."boon4681.item".cooldown.day int 1 run time query day
execute store result block 29999977 0 29999977 Items[0].tag."boon4681.item".cooldown.time int 1 run time query daytime

loot replace entity @s weapon.mainhand mine 29999977 0 29999977 minecraft:air{drop_contents:true}