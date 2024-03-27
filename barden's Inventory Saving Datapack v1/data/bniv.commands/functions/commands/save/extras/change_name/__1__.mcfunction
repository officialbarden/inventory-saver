#> macros:
# $(vaultid) $(username) $(vaultname)

clear @s writable_book{bniv_changevaultname:1b}
$give @s writable_book{bniv_changevaultname:1b,vaultid:$(vaultid)}

$tellraw @s ["",{"text":"[bniv] ","color":"gold"},{"text":"Type the name you want to give to your vault #$(vaultid) to the first page of the book ONLY!","color":"white"},{"text":"\n"},{"text":"[bniv] ","color":"gold"},{"text":"Then, crouch and drop the book!","color":"white"}]

scoreboard players reset @s bniv-nameTag-dropped