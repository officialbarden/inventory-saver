scoreboard players operation #VaultIDFetch inv.Extras = @s zzz.inv-ChangeName
scoreboard players reset @s zzz.inv-ChangeName
scoreboard players enable @s zzz.inv-ChangeName

## Step 1: Get username.
data remove storage barden:names Names
item modify block 12345678 300 12345678 container.0 inv.saver:fill_player_head
data modify storage barden:names Names[].username set from block 12345678 300 12345678 Items[0].components."minecraft:profile"."name"
item replace block 12345678 300 12345678 container.0 with player_head

## Step 2: Set Vault ID value:
execute store result storage barden:names Names[].changing_name_of_id int 1 run scoreboard players get #VaultIDFetch inv.Extras
scoreboard players reset #VaultIDFetch inv.Extras

## Step 3: Parsing Macros:
function inv.saver:commands/change_name/2 with storage barden:names Names[0]
