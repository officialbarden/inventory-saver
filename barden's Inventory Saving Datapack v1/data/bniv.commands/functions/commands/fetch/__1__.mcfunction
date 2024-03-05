#> storages
# minecraft:barden.names.fetch


#> save inventory into a different vault if player tries to withdraw with items equipped.
execute if data entity @s Inventory[] run scoreboard players set @s bniv-saveInventory 1

# get player username.

execute in overworld run item modify block 12345678 300 12345678 container.8 bniv.commands:fill_player_head
execute in overworld run data modify storage minecraft:barden.names.fetch Names[].username set from block 12345678 300 12345678 Items[{Slot:8b}].tag.SkullOwner.Name
execute in overworld run item replace block 12345678 300 12345678 container.8 with player_head


function bniv.commands:commands/fetch/__2__ with storage minecraft:barden.names.fetch Names[{}]

