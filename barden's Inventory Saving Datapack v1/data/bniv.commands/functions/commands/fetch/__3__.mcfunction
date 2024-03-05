$data modify storage minecraft:barden.fetch.getlist Query[].username set value $(username)
$data modify storage minecraft:barden.fetch.getlist Query[{username:$(username)}].vaults append from storage minecraft:barden.maininventories Inventories[{"username":$(username)}]
$function bniv.commands:commands/fetch/__4__ with storage minecraft:barden.fetch.getlist Query[{username:$(username)}].vaults[0]

