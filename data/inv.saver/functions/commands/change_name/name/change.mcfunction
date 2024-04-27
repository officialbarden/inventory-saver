tag @p[tag=vault.hasBook] remove vault.hasBook
scoreboard players reset @p inv.Drop

$data modify storage barden:vaults Vaults[{vault_id:$(vault_id)}].vault_name set from entity @s Item.components.minecraft:writable_book_content.pages[0].raw
kill @s

$execute as @p at @s run function inv.saver:commands/change_name/name/tellraw with storage barden:vaults Vaults[{vault_id:$(vault_id)}]
