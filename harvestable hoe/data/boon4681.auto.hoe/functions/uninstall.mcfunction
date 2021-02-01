scoreboard objectives remove du.has
scoreboard objectives remove du.max
scoreboard objectives remove du.cooldown
scoreboard objectives remove boon4681.calc_s0
scoreboard objectives remove boon4681.item.id
scoreboard objectives remove iscrop

tellraw @a [{"text":"[Harvestable hoe by boon4681] ","color":"gold"},{"text":"successfully uninstalled datapack.","color":"red"}]
datapack disable "file/harvestable hoe"
datapack disable "file/harvestable hoe.zip"