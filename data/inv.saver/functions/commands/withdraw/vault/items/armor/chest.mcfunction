$item replace entity @s armor.chest with $(id) $(count)
function inv.saver:commands/withdraw/vault/items/armor/components/chest with storage barden:query GIVE_ITEMS[{Slot:102b}]
data remove storage barden:query GIVE_ITEMS[{Slot:102b}]
