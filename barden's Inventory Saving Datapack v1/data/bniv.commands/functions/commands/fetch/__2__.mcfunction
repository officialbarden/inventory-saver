#> storage's name:
# minecraft:barden.maininventories


$execute store result score @s bniv-iteration if data storage minecraft:barden.maininventories Inventories[{"username":$(username)}]

# get list.
function bniv.commands:commands/fetch/__3__ with storage minecraft:barden.names.fetch Names[{}]


scoreboard players reset @s bniv-fetchInventory
scoreboard players enable @s bniv-fetchInventory
