


--[[

	ADDITIONAL CONFIGURATION FOR SHOPS:

	hideBlip 	= true   -  hides blip on map
	hideText 	= true   - hides 3d text when nearby
	hideMarker = true    - hides marker (for illegal shit or something)
	markerColor = {}	- RGBA values for custom marker color (ex. {200, 50, 50, 200} - reddish )

	-josh

	p.s. pag i-uupdate ang linden_inventory preserve lines 53-69 , 529-554 @ client/main.lua

]]

Config.DefaultShopColor = {30, 150, 30, 222}

Config.General = {
	blip = {
		id = 52,
		colour = 69,
		scale = 0.6,
		name = 'Shop'
	}, inventory = {
		{ name = 'bread', price = 160 },
		{ name = 'water', price = 100 },
		{ name = 'cola', price = 120 },
		{ name = 'chocolate', price = 300 },
		{ name = 'milk', price = 350 },
		{ name = 'purifiedwater', price = 600 },
	}
}

Config.Liquor = {
	blip = {
		id = 93,
		colour = 69,
		scale = 0.6,
		name = 'Liquor'
	}, inventory = {
		{ name = 'water', price = 100 },
		{ name = 'cola', price = 120 },
		{ name = 'beer', price = 350 },
		{ name = 'cigarette', price = 400 },
	}
}

-- Config.YouTool = {
-- 	blip = {
-- 		id = 402,
-- 		colour = 69,
-- 		scale = 0.6
-- 	}, inventory = {
-- 		{ name = 'lockpick', price = 10 },
-- 	}
-- }

Config.Ammunation = {
	blip = {
		id = 110,
		colour = 69,
		scale = 0.6,
		name = 'Ammunation'
	}, inventory = {
		{ name = 'ammo-9', price = 5, license = 'weapon'},
		{ name = 'WEAPON_KNIFE', price = 200 },
		{ name = 'WEAPON_BAT', price = 100 },
		{ name = 'WEAPON_PISTOL', price = 1000, metadata = { registered = true }, license = 'weapon' },
		{ name = 'at_flashlight_pistol', price = 1500, license = 'weapon' },
		{ name = 'at_clip_extended_pistol', price = 5000, license = 'weapon' },
	}
}

Config.PoliceArmoury = {
	blip = {
		id = 110,
		colour = 84,
		scale = 0.6,
		hideBlip = true,
	}, inventory = {
		{ name = 'ammo-9', price = 5, },
		{ name = 'ammo-rifle', price = 5, },
		{ name = 'WEAPON_FLASHLIGHT', price = 200 },
		{ name = 'WEAPON_NIGHTSTICK', price = 100 },
		{ name = 'WEAPON_PISTOL', price = 500, metadata = { registered = true, serial = 'POL' }, license = 'weapon' },
		{ name = 'WEAPON_CARBINERIFLE', price = 1000, metadata = { registered = true, serial = 'POL' }, license = 'weapon', grade = 3 },
		{ name = 'WEAPON_STUNGUN', price = 500, metadata = { registered = true, serial = 'POL'} },
	}
}

Config.Medicine = {
	blip = {
		id = 403,
		colour = 69,
		scale = 0.6,
		hideBlip = true,
	}, inventory = {
		{ name = 'bandage', price = 100 },
		{ name = 'medikit', price = 15000 },
		{ name = 'sacid', price = 12000 },
		{ name = 'ephedrine', price = 600},
	}
}

Config.Blackmarket = {
	
	hideText = true,
	hideMarker = false,
	markerColor = {230, 30, 30, 30},
	blip = {
		id = 498,
		colour = 2,
		scale = 0.3,
		hideBlip = true,
	}, inventory = {
		{ name = 'bread', price = 26 },
	},
}

Config.Hardware = {
	
	markerColor = {230, 30, 30, 30},
	blip = {
		id = 566,
		colour = 2,
		scale = 0.6,
	}, inventory = {
		{ name = 'carjack', price = 2599 },
		{ name = 'drill', price = 6899 },
		{ name = 'lowgradefert', price = 1299 },
		{ name = 'plantpot', price = 399 },
		{ name = 'wateringcan', price = 399 },
		{ name = 'notepad', price = 199 },
		{ name = 'aluminium', price = 1599 },
		{ name = 'steel', price = 1899 },
		{ name = 'packaged_plank', price = 599 },
		{ name = 'rubber', price = 499 },
		{ name = 'glass', price = 499 },
		{ name = 'WEAPON_WRENCH', price = 1399 },
		{ name = 'WEAPON_MACHETE', price = 2899 },
		{ name = 'WEAPON_KNIFE', price = 759 },
		{ name = 'binoculars', price = 759 },
	},
}

Config.Unicorn = {
	blip = {
		id = 93,
		colour = 69,
		scale = 0.6,
		name = 'Unicorn Fridge',
		hideBlip = true,
	}, inventory = {
		{ name = 'beer', price = 0 }
	}
}

Config.burgershotIngredient = {
	blip = {
		id = 93,
		colour = 69,
		scale = 0.6,
		name = 'Burgershot Ingredients',
		hideBlip = true,
	}, inventory = {
		{ name = 'cheese', price = 0 },
		{ name = 'lettuce', price = 0 },
		{ name = 'tomato', price = 0 },
		{ name = 'bread', price = 0 },
		{ name = 'fburger', price = 0 }
	}
}

Config.Supermarket = {
	blip = {
		id = 52,
		colour = 69,
		scale = 0.6,
		name = 'Supermarket',
		hideBlip = false,
	}, inventory = {
		{ name = 'meat', price = 500 },
		{ name = 'vegetables', price = 50 },
		{ name = 'packaged_chicken', price = 300 },
		{ name = 'bread', price = 50 },
	}
}

Config.DigitalDen = {
	markerColor = {230, 30, 230, 225},
	blip = {
		id = 184,
		colour = 27,
		scale = 0.6,
		name = 'Digital Den',
		hideBlip = false,
	}, inventory = {
		{ name = 'phone', price = 12000 },
		{ name = 'camera', price = 19000 },
		{ name = 'radio', price = 5900 },
		{ name = 'photo-film', price = 1200 },
		{ name = 'auxcord', price = 1500 }
	}
}

Config.Pawnshop = {
	markerColor = {230, 230, 50, 150},
	blip = {
		id = 605,
		colour = 56,
		scale = 0.6,
		name = 'Rick Harrison\'s Gold & Silver Pawn Shop',
		hideBlip = false,
	}, inventory = {
		{ name = 'lockpick', price = 1500 },
		{ name = 'rolex1', price = 35000 },
		{ name = 'ring', price = 12000 },
		{ name = 'phone', price = 25000 },
	}
}

Config.WeedShop = {
	markerColor = {230, 230, 50, 150},
	blip = {
		id = 140,
		colour = 43,
		scale = 0.6,
		name = 'Weed Dispensary',
		hideBlip = false,
	}, inventory = {
		{ name = 'cola', price = 160 },
		{ name = 'water', price = 100 },
		{ name = 'chocolate', price = 250 },
		{ name = 'chips', price = 120 },
		{ name = 'pringles', price = 189 },
		{ name = 'candy', price = 50 },
		{ name = 'hqscale', price = 7500 },
		{ name = 'rolpaper', price = 1200 },
		{ name = 'purplekushjoint', price = 5900 },
		{ name = 'caliOGjoint', price = 6900 },
		{ name = 'baguioGoldjoint', price = 4500 },
	},
}


Config.Shops = {

	{ type = Config.WeedShop, coords = vector3(376.167, -828.679, 29.302), name = 'JJ\'s Weed Dispensary' },

	{ type = Config.Pawnshop, coords = vector3(183.3486, -1063.564, 29.3989), name = 'Rick Harrison\'s Gold & Silver Pawn Shop' },
	

	{ type = Config.DigitalDen, coords = vector3(1134.152, -469.8298, 66.48452), name = 'Digital Den' },

	{ type = Config.Supermarket, coords = vector3(1169.14, -291.51, 69.02), name = 'Supermarket' },

	{ type = Config.Medicine, coords = vector3(-490.83, -340.1, 42.32), name = 'Pharmacy'},

	{ type = Config.Blackmarket, coords = vector3(-1702.77, -272.45, 51.96), name = 'Blackmarket'},

	{ type = { blip = { id = 498, color = 2, scale = 0.3, hideBlip = true, }, inventory = {{name = 'gun_license', price = 5000}}}, coords = vector3(441.5114, -983.3374, 30.68934), name = 'Replacement Gun License'},
	{ type = { blip = { id = 498, color = 2, scale = 0.3, hideBlip = true, }, inventory = {{name = 'citizen_id', price = 200}}}, coords = vector3(-269.65, -954.63, 31.22), name = 'Replacement Citizen ID'},
	{ type = { blip = { id = 498, color = 2, scale = 0.3, hideBlip = true, }, inventory = {{name = 'hunting_license', price = 5000}}}, coords = vector3(-447.48, 6013.7, 137.73), name = 'Replacement Hunting License'},
	{ type = { blip = { id = 498, color = 2, scale = 0.3, hideBlip = true, }, inventory = {{name = 'weed_license', price = 5000}}}, coords = vector3(374, -823.78, 29.3), name = 'Replacement Weed License'},
	{ type = { blip = { id = 498, color = 2, scale = 0.3, hideBlip = true, }, inventory = {{name = 'drivers_license', price = 5000}}}, coords = vector3(240.4722, -1379.59, 33.74176), name = 'Replacement Driver\'s License'},

	{ type = Config.Unicorn, coords = vector3(128.89, -1282.09, 29.27), name = 'Unicorn Fridge'},
	{ type = Config.burgershotIngredient, coords = vector3(-1197.33, -899.98, 14.00), name = 'Burgershot Ingredients'},
	
	{ type = Config.Ammunation, coords = vector3(-662.180, -934.961, 21.829), name = 'Ammunation', --[[currency = 'money']] }, -- can set currency like so
	{ type = Config.Ammunation, coords = vector3(810.25, -2157.60, 29.62), name = 'Ammunation', --[[currency = 'burger']] },
	{ type = Config.Ammunation, coords = vector3(1693.44, 3760.16, 34.71), name = 'Ammunation' },
	{ type = Config.Ammunation, coords = vector3(-330.24, 6083.88, 31.45), name = 'Ammunation' },
	{ type = Config.Ammunation, coords = vector3(252.63, -50.00, 69.94), name = 'Ammunation' },
	{ type = Config.Ammunation, coords = vector3(22.56, -1109.89, 29.80), name = 'Ammunation' },
	{ type = Config.Ammunation, coords = vector3(2567.69, 294.38, 108.73), name = 'Ammunation' },
	{ type = Config.Ammunation, coords = vector3(-1117.58, 2698.61, 18.55), name = 'Ammunation' },
	{ type = Config.Ammunation, coords = vector3(842.44, -1033.42, 28.19), name = 'Ammunation' },

	{ type = Config.Liquor, coords = vector3(1135.808, -982.281, 46.415), name = 'Rob\'s Liquor' },
	{ type = Config.Liquor, coords = vector3(-1222.915, -906.983,  12.326), name = 'Rob\'s Liquor' },
	{ type = Config.Liquor, coords = vector3(-1487.553, -379.107,  40.163), name = 'Rob\'s Liquor' },
	{ type = Config.Liquor, coords = vector3(-2968.243, 390.910, 15.043), name = 'Rob\'s Liquor' },
	{ type = Config.Liquor, coords = vector3(1166.024, 2708.930, 38.157), name = 'Rob\'s Liquor' },
	{ type = Config.Liquor, coords = vector3(1392.562, 3604.684, 34.980), name = 'Rob\'s Liquor' },
	{ type = Config.Liquor, coords = vector3(-1393.409, -606.624, 30.319), name = 'Rob\'s Liquor' },

	{ type = Config.Hardware, coords = vector3(2748.0, 3473.0, 55.67), name = 'Hardware' },
	{ type = Config.Hardware, coords = vector3(342.99, -1298.26, 32.51), name = 'Hardware' },

	{ type = Config.General, coords = vector3(-531.14, -1221.33, 18.48),  name = 'Xero Gas'},
	{ type = Config.General, coords = vector3(2557.458,  382.282, 108.622), name = '24/7'},
	{ type = Config.General, coords = vector3(-3038.939, 585.954, 7.908),  name = '24/7'},
	{ type = Config.General, coords = vector3(-3241.927, 1001.462, 12.830), name = '24/7'},
	{ type = Config.General, coords = vector3(547.431, 2671.710, 42.156),  name = '24/7'},
	{ type = Config.General, coords = vector3(1961.464, 3740.672, 32.343), name = '24/7'},
	{ type = Config.General, coords = vector3(2678.916, 3280.671, 55.241), name = '24/7'},
	{ type = Config.General, coords = vector3(1729.216, 6414.131, 35.037), name = '24/7'},
	{ type = Config.General, coords = vector3(-48.519, -1757.514, 29.421), name = 'LTD'},
	{ type = Config.General, coords = vector3(1163.373, -323.801, 69.205), name = 'LTD'},
	{ type = Config.General, coords = vector3(-707.501, -914.260, 19.215), name = 'LTD'},
	{ type = Config.General, coords = vector3(-1820.523, 792.518, 138.118), name = 'LTD'},
	{ type = Config.General, coords = vector3(1698.388, 4924.404, 42.063), name = 'LTD'},
	{ type = Config.General, coords = vector3(25.723, -1346.966, 29.497),  name = '24/7'},
	{ type = Config.General, coords = vector3(373.875, 325.896, 103.566),  name = '24/7'},
	{ type = Config.General, coords = vector3(-2544.092, 2316.184, 33.2),  name = 'RON'},

	{ type = Config.PoliceArmoury, job = 'police', coords = vector3(485.11, -1006.64, 25.73), name = 'Police Armoury'},
	{ type = Config.Medicine, job = 'ambulance', coords = vector3(306.3687, -601.5139, 43.28406), name = 'Medicine Cabinet'},
}
