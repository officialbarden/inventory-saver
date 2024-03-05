#> storage's name:
# minecraft:barden.fetch.getlist

$tellraw @s ["",{"text":"\n"},{"text":"[bniv] ","color":"gold"},{"text":"Vault \"$(vaultname)\"\n"},{"text":"\u25b6 withdraw?","clickEvent":{"action":"run_command","value":"/function bniv.private:fetch/__1__ {\"vaultid\":\"$(vaultid)\",\"vaultname\":\"$(vaultname)\",\"username\":\"$(username)\"}"}},{"text":"\n\u25b6 change name?","clickEvent":{"action":"run_command","value":"/function bniv.commands:commands/save/extras/change_name/__1__ {\"vaultid\":$(vaultid),\"vaultname\":\"$(vaultname)\",\"username\":\"$(username)\"}"}}]

scoreboard players remove @s bniv-iteration 1

$data remove storage minecraft:barden.fetch.getlist Query[{username:$(username)}].vaults[0]
$execute unless score @s bniv-iteration matches 0 run function bniv.commands:commands/fetch/__4__ with storage minecraft:barden.fetch.getlist Query[{username:$(username)}].vaults[0]
