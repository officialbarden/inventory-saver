data remove storage barden:query VAULTS_LIST
$data modify storage barden:query VAULTS_LIST append from storage barden:vaults Vaults[{username:$(username)}]
execute store result score #TotalGUIsOwned inv.Extras run data get storage barden:query VAULTS_LIST
execute if score #TotalGUIsOwned inv.Extras matches 1.. run function inv.saver:commands/withdraw/3 with storage barden:query VAULTS_LIST[0]


