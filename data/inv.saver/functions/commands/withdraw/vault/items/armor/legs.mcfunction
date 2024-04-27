$item replace entity @s armor.legs with $(id) $(count)
function inv.saver:commands/withdraw/vault/items/armor/components/legs with storage barden:query GIVE_ITEMS[{Slot:101b}]
data remove storage barden:query GIVE_ITEMS[{Slot:101b}]
