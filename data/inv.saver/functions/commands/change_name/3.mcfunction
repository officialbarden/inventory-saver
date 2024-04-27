$give @s writable_book[custom_name='{"text":"Change and Throw!"}',custom_data={inv_saver:1b,vault_id:$(vault_id)},writable_book_content={pages:["$(vault_name)"]}] 1
scoreboard players reset @s inv.Drop
tag @s add vault.hasBook
