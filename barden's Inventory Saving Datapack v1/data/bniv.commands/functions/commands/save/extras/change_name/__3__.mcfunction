$data modify storage minecraft:barden.names.change Vault[{"vaultid":$(vaultid)}].newname set from entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:name_tag",tag:{bniv_nametag:1b}}}] Item.tag.display.Name
$data modify storage minecraft:barden.names.change Vault[{"vaultid":$(vaultid)}].username set from storage minecraft:barden.maininventories Inventories[{vaultid:$(vaultid)}].username
$function bniv.commands:commands/save/extras/change_name/__4__ with storage minecraft:barden.names.change Vault[{"vaultid":$(vaultid)}]

