$data modify storage barden:query GIVE_ITEMS append from storage barden:vaults Vaults[{vault_id:$(vault_id)}].vault_contents[]
execute store result score #TOTAL_ITEMS inv.Extras run data get storage barden:query GIVE_ITEMS

execute if score #TOTAL_ITEMS inv.Extras matches 1.. run function inv.saver:commands/withdraw/vault/items/2 with storage barden:query GIVE_ITEMS[0]
tellraw @s {"text":">> all items returned!"}
$data remove storage barden:vaults [{vault_id:$(vault_id)}]

