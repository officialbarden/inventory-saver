$execute store result score @s bniv-inventory-iteration run data get storage minecraft:barden.fetchreq.inventory Items[{"username":$(username)}].items
$item replace entity @s container.$(Slot) with $(id)$(tag) $(Count)
$data remove storage minecraft:barden.fetchreq.inventory Items[{"username":$(username)}].items[0]

scoreboard players remove @s bniv-inventory-iteration 1
$execute unless score @s bniv-inventory-iteration matches 0 run function bniv.private:fetch/extras/inventory with storage minecraft:barden.fetchreq.inventory Items[{"username":$(username)}].items[0]

