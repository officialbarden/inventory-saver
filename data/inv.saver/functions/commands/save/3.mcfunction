tellraw @s {"text":"-----------------------------------------","color":"gray"}
$tellraw @s ["",{"text":"[inv.saver] $(username)","color":"gold"},{"text":", Your inventory was stored in \"","color":"white"},{"text":"$(vault_name)","color":"gold"},{"text":"\"!","color":"white"},{"text":"\n"},{"text":"\u25b6 Change Name?","clickEvent":{"action":"run_command","value":"/trigger zzz.inv-ChangeName set $(vault_id)"}}]
tellraw @s {"text":"-----------------------------------------","color":"gray"}
