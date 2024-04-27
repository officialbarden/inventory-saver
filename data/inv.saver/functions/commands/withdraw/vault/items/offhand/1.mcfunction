$item replace entity @s weapon.offhand with $(id) $(count)
function inv.saver:commands/withdraw/vault/items/offhand/component with storage barden:query GIVE_ITEMS[{Slot:-106b}]
data remove storage barden:query GIVE_ITEMS[{Slot:-106b}]
