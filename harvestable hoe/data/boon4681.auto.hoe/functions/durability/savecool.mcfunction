setblock 29999977 0 29999977 shulker_box
execute store result storage boon4681 auto.hoe.player.durability.has int 1 run scoreboard players get @s du.has
execute store result storage boon4681 auto.hoe.player.cooldown.was int 1 run scoreboard players get @s du.cooldown
execute store result storage boon4681 auto.hoe.player.cooldown.day int 1 run time query day
execute store result storage boon4681 auto.hoe.player.cooldown.time int 1 run time query daytime
data modify storage boon4681 auto.hoe.player.inventory set from entity @s Inventory
data modify storage boon4681 auto.hoe.player.inventory[0] set from entity @s SelectedItem
data modify storage boon4681 auto.hoe.player.inventory[{Slot:-106b}].Slot set value 1b
data modify storage boon4681 auto.hoe.player.inventory[{Slot:100b}].Slot set value 2b
data modify storage boon4681 auto.hoe.player.inventory[{Slot:101b}].Slot set value 3b
data modify storage boon4681 auto.hoe.player.inventory[{Slot:102b}].Slot set value 4b
data modify storage boon4681 auto.hoe.player.inventory[{Slot:103b}].Slot set value 5b
data modify storage boon4681 auto.hoe.player.inventory[0].tag."boon4681.item.durability.has" set from storage boon4681 auto.hoe.player.durability.has
data modify storage boon4681 auto.hoe.player.inventory[0].tag."boon4681.item.cooldown".was set from storage boon4681 auto.hoe.player.cooldown.was
data modify storage boon4681 auto.hoe.player.inventory[0].tag."boon4681.item.cooldown".day set from storage boon4681 auto.hoe.player.cooldown.day
data modify storage boon4681 auto.hoe.player.inventory[0].tag."boon4681.item.cooldown".time set from storage boon4681 auto.hoe.player.cooldown.time
data modify block 29999977 0 29999977 Items set from storage boon4681 auto.hoe.player.inventory
loot replace entity @s weapon.mainhand mine 29999977 0 29999977 minecraft:stick{drop_contents:true}