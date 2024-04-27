tellraw @s {"text":">> can't save an empty inventory!","color":"red"}

# prevent looping.
scoreboard players reset @s inv-Save
scoreboard players enable @s inv-Save
