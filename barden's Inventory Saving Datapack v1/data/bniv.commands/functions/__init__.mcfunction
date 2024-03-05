#> scoreboards
scoreboard objectives add bniv-fetchInventory trigger
scoreboard players enable @a bniv-fetchInventory
scoreboard objectives add bniv-saveInventory trigger
scoreboard players enable @a bniv-saveInventory
scoreboard objectives add bniv-help trigger
scoreboard players enable @a bniv-help
scoreboard objectives add bniv-credits trigger
scoreboard players enable @a bniv-credits

scoreboard objectives add bniv-nameTag-dropped minecraft.custom:minecraft.drop

scoreboard objectives add bniv-id dummy
scoreboard players add .global bniv-id 1

scoreboard objectives add bniv-iteration dummy

scoreboard objectives add bniv-inventory-iteration dummy


#> setblock shulker box
execute in minecraft:overworld run forceload add 12345678 12345678
execute in minecraft:overworld run setblock 12345678 300 12345678 air replace
execute in minecraft:overworld run setblock 12345678 300 12345678 minecraft:black_shulker_box{Items:[{Count:1b,Slot:8b,id:"minecraft:player_head"},{Count:1b,Slot:0b,id:"minecraft:player_head"}]}


#> gamerule
gamerule sendCommandFeedback false
