## Step 1: get player's username:
data remove storage barden:names Names
item modify block 12345678 300 12345678 container.0 inv.saver:fill_player_head
data modify storage barden:names Names[].username set from block 12345678 300 12345678 Items[0].components."minecraft:profile"."name"
item replace block 12345678 300 12345678 container.0 with player_head

## Step 2: Assign a vault id:
scoreboard players operation @s inv.Extras = .AssignThisIDNext inv.Extras
execute store result storage barden:names Names[].vault_id int 1 run scoreboard players get @s inv.Extras
scoreboard players add .AssignThisIDNext inv.Extras 1
scoreboard players reset @s inv.Extras

## Step 3: Parse macros into another function:
function inv.saver:commands/save/2 with storage barden:names Names[0]


# prevent looping.
scoreboard players reset @s inv-Save
scoreboard players enable @s inv-Save
