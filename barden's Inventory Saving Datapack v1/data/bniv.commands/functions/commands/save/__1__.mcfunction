#> storages
# minecraft:barden.names.fetch

# get player username.
execute in overworld run item modify block 12345678 300 12345678 container.0 bniv.commands:fill_player_head
execute in overworld run data modify storage minecraft:barden.names.fetch Names[].username set from block 12345678 300 12345678 Items[{Slot:0b}].tag.SkullOwner.Name
execute in overworld run item replace block 12345678 300 12345678 container.0 with player_head

scoreboard players operation @s bniv-id = .global bniv-id
scoreboard players add .global bniv-id 1

execute store result storage minecraft:barden.names.fetch Names[].assignedid int 1 run scoreboard players get @s bniv-id


function bniv.commands:commands/save/__2__ with storage minecraft:barden.names.fetch Names[{}]
