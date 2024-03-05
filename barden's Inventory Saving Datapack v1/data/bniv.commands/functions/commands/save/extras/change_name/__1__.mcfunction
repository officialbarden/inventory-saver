#> macros:
# $(vaultid) $(username) $(vaultname)

clear @s name_tag{bniv_nametag:1b}
$give @s name_tag{bniv_nametag:1b,vaultid:$(vaultid)}

tellraw @s ["",{"text":"[bniv] ","color":"gold"},{"text":"Anvil the nametag to choose a name.","color":"white"},{"text":"\n"},{"text":"[bniv] ","color":"gold"},{"text":"Then, crouch and drop the nametag!","color":"white"}]

scoreboard players reset @s bniv-nameTag-dropped