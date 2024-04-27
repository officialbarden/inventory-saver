$data modify storage barden:query GIVE_ITEMS append from storage barden:vaults Vaults[{vault_id:$(vault_id)}].vault_contents[]

function inv.saver:commands/withdraw/vault/items/armor/head with storage barden:query GIVE_ITEMS[{Slot:103b}]
function inv.saver:commands/withdraw/vault/items/armor/chest with storage barden:query GIVE_ITEMS[{Slot:102b}]
function inv.saver:commands/withdraw/vault/items/armor/legs with storage barden:query GIVE_ITEMS[{Slot:101b}]
function inv.saver:commands/withdraw/vault/items/armor/feet with storage barden:query GIVE_ITEMS[{Slot:100b}]

function inv.saver:commands/withdraw/vault/items/offhand/1 with storage barden:query GIVE_ITEMS[{Slot:-106b}]

execute store result score #TOTAL_ITEMS inv.Extras run data get storage barden:query GIVE_ITEMS

execute if score #TOTAL_ITEMS inv.Extras matches 1.. run function inv.saver:commands/withdraw/vault/items/2 with storage barden:query GIVE_ITEMS[0]
tellraw @s {"text":"-----------------------------------------","color":"gray"}
tellraw @s {"text":">> all items returned!"}
tellraw @s {"text":"-----------------------------------------","color":"gray"}

$data remove storage barden:vaults Vaults[{vault_id:$(vault_id)}]

