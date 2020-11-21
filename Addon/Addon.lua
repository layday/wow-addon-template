-- The ellipsis captures the arguments passed to the script.
-- WoW passes the add-on name as the first argument and an empty table
-- as the second argument.
local addonName, addonTable = ...

-- We'll set up our add-on with `AceAddon`.
-- `AceAddon` is a library which allows registering hooks to be called
-- when game events are triggered, such as when a player logs in.
-- `LibStub` is a library which is used to locate other libraries.
local Addon = _G.LibStub("AceAddon-3.0"):NewAddon(addonTable, addonName)

-- `OnInitialize` will be called once our add-on is loaded.
function Addon:OnInitialize()
    print("hello world")
end
