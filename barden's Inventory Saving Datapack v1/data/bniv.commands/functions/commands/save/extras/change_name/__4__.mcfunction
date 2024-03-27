$data modify storage minecraft:barden.maininventories Inventories[{username:$(username),vaultid:$(vaultid)}].vaultname set value "$(newname)"
$data remove storage minecraft:barden.names.change Vault[{username:$(username)}]

kill @e[type=item,sort=nearest,nbt={Item:{tag:{bniv_changevaultname:1b}}}]

$tellraw @s [{"text": "[bniv] ","color": "gold"},{"text": "vault #$(vaultid)'s name was changed to ","color": "white"},{"text": "$(newname)"}]
