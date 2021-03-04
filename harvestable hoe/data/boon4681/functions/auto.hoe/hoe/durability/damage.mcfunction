# get available of durability
execute store result score @s bn4681.glob.du.a run data get entity @s SelectedItem.tag."boon4681.item".durability.has

scoreboard players remove @s bn4681.glob.du.a 1
# save data
setblock 29999977 0 29999977 yellow_shulker_box
data modify block 29999977 0 29999977 Items append from entity @s SelectedItem
execute store result block 29999977 0 29999977 Items[0].tag."boon4681.item".durability.has int 1 run scoreboard players get @s bn4681.glob.du.a
loot replace entity @s weapon.mainhand mine 29999977 0 29999977 minecraft:air{drop_contents:true}