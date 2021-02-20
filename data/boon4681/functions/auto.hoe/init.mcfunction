# bn4681.glob.du for boon4681 global durability item
#    |   bn4681.glob.du.a is available of durability on item
#    |   bn4681.glob.du.b is max durability
scoreboard objectives add bn4681.glob.du.a dummy
scoreboard objectives add bn4681.glob.du.b dummy

# bn4681.glob.i for boon4681 global item
#    |   bn4681.glob.i.id is item id
#    |   bn4681.glob.i.cc is item cooldown for calculation
#    |   bn4681.glob.i.cd is item cooldown (boolean)
scoreboard objectives add bn4681.glob.i.id dummy
scoreboard objectives add bn4681.glob.i.cc dummy
scoreboard objectives add bn4681.glob.i.cd dummy

scoreboard objectives add bn4681.ahoe.crop dummy
scoreboard objectives add bn4681.ahoe.bsuc dummy

function boon4681:auto.hoe/tick