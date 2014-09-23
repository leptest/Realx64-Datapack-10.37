-- Combat settings
-- NOTE: valid values for worldType are: "pvp", "no-pvp" and "pvp-enforced"
worldType = "pvp-enforced"
hotkeyAimbotEnabled = "yes"
protectionLevel = 200
killsToRedSkull = 3
killsToBlackSkull = 6
pzLocked = 60000
removeAmmoWhenUsingDistanceWeapon = "no"
removeChargesFromRunes = "yes"
-- \/ = 1 day
timeToDecreaseFrags = 24 * 60 * 60 * 1000
whiteSkullTime = 15 * 60 * 1000
stairJumpExhaustion = 1000
experienceByKillingPlayers = "yes"
expFromPlayersLevelRange = 150
noDamageToSameLookfeet = "no"

-- Connection Config
-- NOTE: maxPlayers set to 0 means no limit
passwordType = "sha1"
ip = "powerdungeon.no-ip.info"
bindOnlyGlobalAddress = "no"
loginProtocolPort = 7171
gameProtocolPort = 7172
statusProtocolPort = 7171
-- when this is 0, it waits in que all the time
maxPlayers = 1000
motd = "Brrrrraaaaaapppppppp!"
onePlayerOnlinePerAccount = "no"
allowClones = "no"
serverName = "PowerDungeon 10.37"
statusTimeout = 5000
replaceKickOnLogin = "yes"
maxPacketsPerSecond = 25


-- Starting position
--newPlayerTownId = 1
newPlayerSpawnPosX = 32369
newPlayerSpawnPosY = 32241
newPlayerSpawnPosZ = 7

-- Deaths
-- NOTE: Leave deathLosePercent as -1 if you want to use the default
-- death penalty formula. For the old formula, set it to 10. For
-- no skill/experience loss, set it to 0.
deathLosePercent = -1

-- Houses
-- NOTE: set housePriceEachSQM to -1 to disable the ingame buy house functionality
housePriceEachSQM = 1000
houseRentPeriod = "never"

-- Item Usage
timeBetweenActions = 200
timeBetweenExActions = 1000

-- Map
-- NOTE: set mapName WITHOUT .otbm at the end
mapName = "realmap"
mapAuthor = "Komic"

-- Market
marketOfferDuration = 30 * 24 * 60 * 60
premiumToCreateMarketOffer = "yes"
checkExpiredMarketOffersEachMinutes = 60
maxMarketOffersAtATimePerPlayer = 100

-- MySQL
mysqlHost = "127.0.0.1"
mysqlUser = "otserver"
mysqlPass = "BcfyEqUMqPquw5wR"
mysqlDatabase = "otserver"
mysqlPort = 3306
mysqlSock = ""

-- Misc.
allowChangeOutfit = "yes"
freePremium = "yes"
kickIdlePlayerAfterMinutes = 15
maxMessageBuffer = 5
emoteSpells = "yes"

-- Rates
-- NOTE: rateExp is not used if you have enabled stages in data/XML/stages.xml
rateExp = 999
rateSkill = 30
rateLoot = 4
rateMagic = 30
rateSpawn = 2

-- Monsters
deSpawnRange = 2
deSpawnRadius = 50

-- Stamina
staminaSystem = "yes"

-- Startup
-- NOTE: defaultPriority only works on Windows and sets process priority.
defaultPriority = "high"
startupDatabaseOptimization = "no"

-- Status server information
ownerName = "AC DC"
ownerEmail = ""
url = "http://powerdungeon.no-ip.info/"
location = "United Kingdom"