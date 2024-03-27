execute as @a[scores={bniv-saveInventory=1..}] at @s run function bniv.commands:commands/save/__1__
execute as @a[scores={bniv-fetchInventory=1..}] at @s run function bniv.commands:commands/fetch/__1__
execute as @a[scores={bniv-help=1..}] at @s run function bniv.commands:commands/help/__1__
execute as @a[scores={bniv-credits=1..}] at @s run function bniv.commands:commands/credits/__1__
execute as @a[scores={bniv-nameTag-dropped=1..},predicate=bniv.commands:is_sneaking] at @s if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:writable_book",tag:{bniv_changevaultname:1b}}},sort=nearest,limit=1] run function bniv.commands:commands/save/extras/change_name/__2__

