tellraw @s ["",{"text":"[bniv] ","color":"gold"},{"text":"The datapack has been successfully uninstalled.","color":"white"},{"text": "\n"},{"text":"[bniv] ","color":"gold"},{"text":"Thanks for using barden's Inventory Saver v1!"}]

#> gamerule
gamerule sendCommandFeedback true


#> remove scoreboards:
scoreboard objectives remove bniv-fetchInventory
scoreboard objectives remove bniv-help
scoreboard objectives remove bniv-saveInventory
scoreboard objectives remove bniv-credits
scoreboard objectives remove bniv-id
scoreboard objectives remove bniv-iteration
scoreboard objectives remove bniv-inventory-iteration
scoreboard objectives remove bniv-nameTag-dropped


data remove storage minecraft:barden.names.fetch Names
data remove storage minecraft:barden.fetchreq.inventory Items
data remove storage minecraft:barden.fetch.getlist Query
data remove storage minecraft:barden.maininventories Inventories


#> disable datapack:
datapack disable "file/barden's Inventory Saving Datapack v1"

