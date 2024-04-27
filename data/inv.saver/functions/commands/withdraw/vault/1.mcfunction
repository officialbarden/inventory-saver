## Step 1: get player's username:
data remove storage barden:names Names
item modify block 12345678 300 12345678 container.0 inv.saver:fill_player_head
data modify storage barden:names Names[].username set from block 12345678 300 12345678 Items[0].components."minecraft:profile"."name"
item replace block 12345678 300 12345678 container.0 with player_head

## Step 2: append vault id:
execute store result storage barden:names Names[].vault_id int 1 run scoreboard players get @s zzz.inv-trigger.withdrawvaultid

## Step 3: run giving functions:
function inv.saver:commands/withdraw/vault/items/1 with storage barden:names Names[0]

# prevent looping:
scoreboard players reset @s zzz.inv-trigger.withdrawvaultid
scoreboard players enable @s zzz.inv-trigger.withdrawvaultid
