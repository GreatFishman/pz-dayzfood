local MOD_ID = "DEW"
local MOD_NAME = "DayZ Food"
local MOD_VERSION = "0.1"
local MOD_AUTHOR = "Team Rocket"
local MOD_DESCRIPTION = "Adds a TON of DayZ Food to your game! Bazonka!"
local debugItems = TRUE;

local function info()
    print("Mod loaded: " .. MOD_NAME .. "by " .. MOD_AUTHOR .. " (v" .. MOD_VERSION .. ")");
end

local function giveItem()
    if debugItems then
        local player = getSpecificPlayer(0);
        player.getInventory().AddItem("MountainDew");
    end
end

Events.OnGameBoot.Add(Info);
Events.OnGameStart.Add(giveItem);