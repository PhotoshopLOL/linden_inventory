Config = {}
Config.Locale = 'en'

-- Compare the version of this resource to the latest (default: every 60 minutes)
Config.CheckVersion = true
Config.CheckVersionDelay = 60

-- Number of inventory slots
Config.PlayerSlots = 50

-- If vehicle plates are stored with a trailing space, set to false (i.e. `XXX-000 `)
Config.TrimPlate = false  -- Recommended: true (default is false to match previous functionality)

-- Blur the screen while in an inventory
Config.EnableBlur = true

-- Requires esx_licenses
Config.WeaponsLicense = true
Config.WeaponsLicensePrice = 5000
Config.WeaponsLicenseCoords = vector3(12.42198, -1105.82, 29.7854)

-- Set the name of your logging resource, or false to disable
Config.Logs = false --'linden_logs'

-- Default keymapping for the inventory; players can assign their own
Config.InventoryKey = 'F2'
Config.VehicleInventoryKey = 'K'

-- Reload empty weapons automatically
Config.AutoReload = false

-- Randomise the price of items in each shop at resource start
Config.RandomPrices = false

-- Show player identifier (often steamhex) on their id card
Config.ShowIdentifierID = true

-- Hotkey of your phone resource to disable opening it lol
Config.PhoneHotkey = 288
