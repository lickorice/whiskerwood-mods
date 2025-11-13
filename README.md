# Whiskerwood-Project
Template UE5.6 project for Whiskerwood, including reflected headers and example mods.

## Some notes

If you want to run the same or similar logic in both BP_Startup and BP_MapLoad, it is recommended to create a third blueprint which the first two can spawn. 

## Mod Options

If changing a data table value, you must do it **as soon as possible in BP_Startup**, NOT in BP_MapLoad, otherwise the **changes may not take effect** - some things load values from the tables at runtime, some things only load values from them once at level initialisation before mods are loaded.

Please **register your mod options inside of BP_Startup**. They will still exist when the map loads even if you don't register in BP_MapLoad. You could register them in BP_MapLoad only, however the player then would not be able to configure the mod options until they enter the level.

When registering mod options, please **put your mod name at the start of Option Id and Option Display Name**. For option id, this is best practice as it massively reduces the possibility of conflicting with other mods. For display name, this will help show the user which mod the option is coming from.

It is recommended to **make variables for storing your Option Ids** because it reduces the chance of human error.

If you want to update your mod to **change the values of an option** (for example, seconds to minutes), you should **change the optionId to a new one**. This is because when an option Id is loaded in-game, the player's selection is loaded in from the previous option value, which would likely cause unintended behaviour. 