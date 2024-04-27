$tellraw @s ["",{"text":"\u25b6 ","clickEvent":{"action":"run_command","value":"/trigger zzz.inv-trigger.withdrawvaultid set $(vault_id)"}},{"text":"$(vault_name)","color":"gold","clickEvent":{"action":"run_command","value":"/trigger zzz.inv-trigger.withdrawvaultid set $(vault_id)"}},{"text":", vault id: #","clickEvent":{"action":"run_command","value":"/trigger zzz.inv-trigger.withdrawvaultid set $(vault_id)"}},{"text":"$(vault_id)","color":"gold","clickEvent":{"action":"run_command","value":"/trigger zzz.inv-trigger.withdrawvaultid set $(vault_id)"}}]

scoreboard players remove #TotalGUIsOwned inv.Extras 1
data remove storage barden:query VAULTS_LIST[0]
execute if score #TotalGUIsOwned inv.Extras matches 1.. run function inv.saver:commands/withdraw/3 with storage barden:query VAULTS_LIST[0]
