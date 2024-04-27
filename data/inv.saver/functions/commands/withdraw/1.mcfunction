scoreboard players reset @s inv-Withdraw
scoreboard players enable @s inv-Withdraw

## Step 1: Get player's username:
data remove storage barden:names Names
item modify block 12345678 300 12345678 container.0 inv.saver:fill_player_head
data modify storage barden:names Names[].username set from block 12345678 300 12345678 Items[0].components."minecraft:profile"."name"
item replace block 12345678 300 12345678 container.0 with player_head

## Step 2: Get list of Vaults Owned:
function inv.saver:commands/withdraw/2 with storage barden:names Names[0]
