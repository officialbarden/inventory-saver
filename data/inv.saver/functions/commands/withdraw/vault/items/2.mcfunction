$item replace entity @s container.$(Slot) with $(id) $(count)
function inv.saver:commands/withdraw/vault/items/3 with storage barden:query GIVE_ITEMS[0]

data remove storage barden:query GIVE_ITEMS[0]
scoreboard players remove #TOTAL_ITEMS inv.Extras 1
execute if score #TOTAL_ITEMS inv.Extras matches 1.. run function inv.saver:commands/withdraw/vault/items/2 with storage barden:query GIVE_ITEMS[0]
