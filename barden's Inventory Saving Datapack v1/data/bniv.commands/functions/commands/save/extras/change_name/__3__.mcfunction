$execute if entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:writable_book",tag:{bniv_changevaultname:1b}}}] run data modify storage minecraft:barden.names.change Vault[{"vaultid":$(vaultid)}].newname set from entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:writable_book",tag:{bniv_changevaultname:1b}}}] Item.tag.pages[0]
$data modify storage minecraft:barden.names.change Vault[{"vaultid":$(vaultid)}].username set from storage minecraft:barden.maininventories Inventories[{vaultid:$(vaultid)}].username
$function bniv.commands:commands/save/extras/change_name/__4__ with storage minecraft:barden.names.change Vault[{"vaultid":$(vaultid)}]


