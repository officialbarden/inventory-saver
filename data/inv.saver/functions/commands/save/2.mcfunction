## store in storage:
$data modify storage barden:vaults Vaults append value {"username":$(username),"vault_id":$(vault_id),"vault_name":"$(username)'s Vault #$(vault_id)"}
$data modify storage barden:vaults Vaults[{"vault_id":$(vault_id)}].vault_contents append from entity @s Inventory[]
$data modify storage barden:vaults Vaults[{"vault_id":$(vault_id)}].vault_contents[].components.minecraft:custom_data set value {binv:true}
clear @s

$function inv.saver:commands/save/3 with storage barden:vaults Vaults[{"vault_id":$(vault_id)}]
