#> set trigger commands:
scoreboard objectives add inv-Save trigger
scoreboard players enable @a inv-Save
scoreboard objectives add inv-Withdraw trigger
scoreboard players enable @a inv-Withdraw
scoreboard objectives add inv-Help trigger
scoreboard players enable @a inv-Help

#> tellraw triggers:
scoreboard objectives add zzz.inv-ChangeName trigger
scoreboard players enable @a zzz.inv-ChangeName
scoreboard objectives add zzz.inv-trigger.withdrawvaultid trigger
scoreboard players enable @a zzz.inv-trigger.withdrawvaultid

#> other scoreboards:
scoreboard objectives add inv.Extras dummy
scoreboard objectives add inv.Drop minecraft.custom:minecraft.drop
scoreboard players add .AssignThisIDNext inv.Extras 1

#> set shulker box
execute in minecraft:overworld run forceload add 12345678 12345678
execute in minecraft:overworld run setblock 12345678 300 12345678 air replace
execute in minecraft:overworld run setblock 12345678 300 12345678 black_shulker_box{Items:[{count:1,Slot:0b,id:"minecraft:player_head"}]}
