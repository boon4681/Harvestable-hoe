function boon4681.auto.hoe:durability/getdata
execute store result score @s du.cooldown run data get entity @s SelectedItem.tag."boon4681.item.cooldown".was
execute unless score @s boon4681.item.id matches 0 if score @s du.cooldown matches 0 if score @s du.has matches ..0 run function boon4681.auto.hoe:durability/setsave_s0
execute unless score @s boon4681.item.id matches 0 if score @s du.cooldown matches 1 run function boon4681.auto.hoe:run/calc_check
execute unless score @s boon4681.item.id matches 0 if entity @s[nbt={ActiveEffects:[{Id:32b}]}] if score @s du.cooldown matches 0 run function boon4681.auto.hoe:durability/setsave_s2
execute if score @s du.has matches ..0 run scoreboard players set @s boon4681.item.id 0
execute if score @s boon4681.item.id matches 1 at @s positioned ~ ~ ~ run function boon4681.auto.hoe:break/breaking_1
execute if score @s boon4681.item.id matches 1 at @s positioned ~ ~0.0625 ~ run function boon4681.auto.hoe:break/breaking_1
execute if score @s boon4681.item.id matches 2 at @s positioned ~ ~ ~ run function boon4681.auto.hoe:break/breaking_2
execute if score @s boon4681.item.id matches 2 at @s positioned ~ ~0.0625 ~ run function boon4681.auto.hoe:break/breaking_2
execute if score @s boon4681.item.id matches 3 at @s positioned ~ ~ ~ run function boon4681.auto.hoe:break/breaking_3
execute if score @s boon4681.item.id matches 3 at @s positioned ~ ~0.0625 ~ run function boon4681.auto.hoe:break/breaking_3