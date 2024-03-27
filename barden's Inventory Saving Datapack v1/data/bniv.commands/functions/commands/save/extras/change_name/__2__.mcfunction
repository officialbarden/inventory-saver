#> storages:
# minecraft:barden.names.change


data modify storage minecraft:barden.names.change Vault[].vaultid set from entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:writable_book",tag:{bniv_changevaultname:1b}}}] Item.tag.vaultid
data modify storage minecraft:barden.names.change Vault[].vaultid set from entity @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:written_book",tag:{bniv_changevaultname:1b}}}] Item.tag.vaultid


function bniv.commands:commands/save/extras/change_name/__3__ with storage barden.names.change Vault[0]

#> reset scoreboard:
scoreboard players reset @s bniv-nameTag-dropped
