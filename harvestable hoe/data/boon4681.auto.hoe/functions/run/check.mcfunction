execute as @a store result score @s boon4681.item.id run data get entity @s SelectedItem.tag."boon4681.item.auto_hoe.id"
execute as @a unless score @s boon4681.item.id matches 0 at @s run function boon4681.auto.hoe:run/checktiers