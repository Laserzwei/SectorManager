# Sector Manager
A small proof-of-concept mod to keep a set of sectors loaded, while a player is online.

### Install instructions

*This mod does not start on it's own. It requires manual configuration.* The setup is *purposely* held vague. If you can't get it setup, then it's not meant for you to run yet. Keep in mind: This is a proof-of-concept (a.k.a. pre- pre-alpha).


Place the contents of the "mods" folder into your /steam/.../Avorion/mods/ folder.

You need to add /mods/SectorManager/entity/SectorManager.lua on any Entity in which you (or a player who is allowed to use this script) can enter(=fly). This script will allow for comfortable selection of the sectors desired to be loaded.

The list of sectors is stored for each player separately.

You need to add /mods/SectorManager/player/sectorOpener.lua on any Player, who is allowed to keep sectors loaded. This script does the sector loading.



/mods/SectorManager/sector/beacon.lua is a testscript to get continuous lifesigns of the sector its attached to (might spam the console)

The config is self-explanatory.
