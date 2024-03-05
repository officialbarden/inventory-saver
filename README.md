# inventory-saver
Source code of the Inventory Saver Datapack v1. Folders that have numbered .mcfunction files (like `__1__`, `__2__` etc.) run one after the other.
The `__1__` file is ran first and `__2__` is ran from `__1__` file, creating a chain of functions.

EXCEPTION: 
`bniv.commands:commands/save/extras/change_name` where the `__2__` file is directly ran from `__loop__` and `__1__` file is ran independantly.
