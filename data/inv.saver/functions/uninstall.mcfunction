#> remove scoreboards:
scoreboard objectives remove inv-Help
scoreboard objectives remove inv-Save
scoreboard objectives remove inv-Withdraw
scoreboard objectives remove zzz.inv-ChangeName
scoreboard objectives remove zzz.inv-trigger.withdrawvaultid
scoreboard objectives remove inv.Drop
scoreboard objectives remove inv.Extras

#> remove shulker box:
setblock 12345678 300 12345678 air replace
forceload remove 12345678 12345678

#> remove storages:
data remove storage barden:names names
data remove storage barden:vaults vaults
data remove storages barden:query GIVE_ITEMS
data remove storages barden:query VAULTS_LIST
