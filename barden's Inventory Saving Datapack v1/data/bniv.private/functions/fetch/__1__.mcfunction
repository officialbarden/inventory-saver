#> macros
# $(vaultid), $(vaultname), $(username)
$function bniv.private:fetch/extras/offhand with storage minecraft:barden.maininventories Inventories[{vaultid:$(vaultid),username:$(username)}].items[{Slot:-106b}]
$data remove storage minecraft:barden.maininventories Inventories[{vaultid:$(vaultid),username:$(username)}].items[{Slot:-106b}]


$function bniv.private:fetch/extras/armor/head with storage minecraft:barden.maininventories Inventories[{vaultid:$(vaultid),username:$(username)}].items[{Slot:103b}]
$data remove storage minecraft:barden.maininventories Inventories[{vaultid:$(vaultid),username:$(username)}].items[{Slot:103b}]
$function bniv.private:fetch/extras/armor/chest with storage minecraft:barden.maininventories Inventories[{vaultid:$(vaultid),username:$(username)}].items[{Slot:102b}]
$data remove storage minecraft:barden.maininventories Inventories[{vaultid:$(vaultid),username:$(username)}].items[{Slot:102b}]
$function bniv.private:fetch/extras/armor/leg with storage minecraft:barden.maininventories Inventories[{vaultid:$(vaultid),username:$(username)}].items[{Slot:101b}]
$data remove storage minecraft:barden.maininventories Inventories[{vaultid:$(vaultid),username:$(username)}].items[{Slot:101b}]
$function bniv.private:fetch/extras/armor/boot with storage minecraft:barden.maininventories Inventories[{vaultid:$(vaultid),username:$(username)}].items[{Slot:100b}]
$data remove storage minecraft:barden.maininventories Inventories[{vaultid:$(vaultid),username:$(username)}].items[{Slot:100b}]


#> storage
# inventory items.

$data modify storage minecraft:barden.fetchreq.inventory Items[].username set value $(username)
$data modify storage minecraft:barden.fetchreq.inventory Items[{"username":$(username)}].items prepend from storage minecraft:barden.maininventories Inventories[{vaultid:$(vaultid),username:$(username)}].items[]
$data modify storage minecraft:barden.fetchreq.inventory Items[{"username":$(username)}].items[] merge value {username:$(username)}
$function bniv.private:fetch/extras/inventory with storage minecraft:barden.fetchreq.inventory Items[{"username":$(username)}].items[0]


$data remove storage minecraft:barden.maininventories Inventories[{vaultid:$(vaultid),username:$(username)}]
$data remove storage minecraft:barden.fetchreq.inventory Items[{username:$(username)}]
$data remove storage minecraft:barden.fetch.getlist Query[{username:$(username)}]

tellraw @s {"text": ">> all items withdrawn!"}