#> storages name:
# minecraft:barden.maininventories

scoreboard players reset @s bniv-saveInventory
scoreboard players enable @s bniv-saveInventory
scoreboard players reset @s bniv-id

#$data modify storage minecraft:barden.maininventories Inventories[] append value $(username)
#$data modify storage minecraft:barden.maininventories Inventories[{username:$(username)}].vaultid set value $(assignedid)

$data modify storage minecraft:barden.maininventories Inventories prepend value {"username":$(username),vaultid:$(assignedid)}
$data modify storage minecraft:barden.maininventories Inventories[{"username":$(username),vaultid:$(assignedid)}].items set from entity @s Inventory
$data modify storage minecraft:barden.maininventories Inventories[{"username":$(username),vaultid:$(assignedid)}].vaultname set value "$(username)'s Vault #$(assignedid)"
$data modify storage minecraft:barden.maininventories Inventories[{username:$(username)}].items[] merge value {tag:{bniv:1b}}

clear @s

function bniv.commands:commands/save/__3__ with storage minecraft:barden.maininventories Inventories[0]
$data remove storage minecraft:barden.names.fetch Names[{"username":$(username)}]
