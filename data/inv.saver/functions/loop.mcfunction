#> configuring commands:
execute as @a[scores={inv-Save=1..}] at @s run function inv.saver:commands/save/1
execute as @a[scores={inv-Help=1..}] at @s run function inv.saver:commands/help/1
execute as @a[scores={inv-Withdraw=1..}] at @s run function inv.saver:commands/withdraw/1

#> tellraw clicking triggers configuration:
execute as @a[scores={zzz.inv-ChangeName=1..}] at @s run function inv.saver:commands/change_name/1
execute as @a[scores={zzz.inv-trigger.withdrawvaultid=1..}] at @s run function inv.saver:commands/withdraw/vault/1


#> name change detection:
execute as @a[scores={inv.Drop=1..},tag=vault.hasBook] at @s as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{inv_saver:1b}}}},sort=nearest,limit=1,dx=0] if entity @s run function inv.saver:commands/change_name/name/change with entity @s Item.components.minecraft:custom_data

