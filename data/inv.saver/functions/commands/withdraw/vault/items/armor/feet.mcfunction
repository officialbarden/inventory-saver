$item replace entity @s armor.feet with $(id) $(count)
function inv.saver:commands/withdraw/vault/items/armor/components/feet with storage barden:query GIVE_ITEMS[{Slot:100b}]
data remove storage barden:query GIVE_ITEMS[{Slot:100b}]
