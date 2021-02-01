scoreboard objectives add boon4681.active dummy

scoreboard objectives add du.has dummy
scoreboard objectives add du.max dummy
scoreboard objectives add du.cooldown dummy
scoreboard objectives add boon4681.calc_s0 dummy
scoreboard objectives add boon4681.item.id dummy
scoreboard objectives add iscrop dummy

scoreboard players set "boon4681.auto.hoe.activate" boon4681.active 0

tellraw @a ["",{"text":"Harvestable hoe","bold":true,"color":"gold"},{"text":" boon4681\n","color":"dark_gray"},{"text":"================ =========\nfunction boon4681.auto.hoe:activate to activate\nfunction boon4681.auto.hoe:disable to disable\nfunction boon4681.auto.hoe:give_t<tier 1-3>","color":"gold"}]