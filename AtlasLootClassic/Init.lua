-----------------------------------------------------------------------
-- Upvalued Lua API.
-----------------------------------------------------------------------
local _G = getfenv(0)
local tonumber = _G.tonumber

-- ----------------------------------------------------------------------------
-- AddOn namespace.
-- ----------------------------------------------------------------------------
local addonname = ...

_G.AtlasLoot = { }

local addonVersion = GetAddOnMetadata(addonname, "Version")
if addonVersion == "@project-version@" then addonVersion = "v99.99.9999-dev" end
local versionT = { string.match(addonVersion, "v(%d+)%.(%d+)%.(%d+)%-?(%a*)(%d*)") }
addonVersion = ""
for k,v in ipairs(versionT) do
	if k < 4 then
		local it = k == 3 and (4 - #v) or (2 - #v)
		for i = 1, it do
			versionT[k] = "0"..versionT[k]
		end
		addonVersion = addonVersion..versionT[k]
	end
end

_G.AtlasLoot = {
	__addonrevision = tonumber(addonVersion),
	IsDevVersion = versionT[4] == "dev" and true or nil,
	IsTestVersion = (versionT[4] == "beta" or versionT[4] == "alpha") and true or nil,
}

local AddonNameVersion = string.format("%s-%d", addonname, _G.AtlasLoot.__addonrevision)
local MainMT = {
	__tostring = function(self)
		return AddonNameVersion
	end,
}
setmetatable(_G.AtlasLoot, MainMT)

-- DB
AtlasLootClassicDB = {}
AtlasLootClassicCharDB = {}
AtlasLootClassicRawDB = {}

-- Translations
_G.AtlasLoot.Locale = {}

-- Init functions
_G.AtlasLoot.Init = {}

-- Data table
_G.AtlasLoot.Data = {}
