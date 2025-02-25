Config = {
	Lan = "en", -- Pick your language file here
	System = {
		Debug = false, -- Set to true to show green debug boxes to help track any issues

		img = "qb-inventory/html/images/", 	-- Set this to the directory for your inventory image files
											-- "ox_inventory/web/images/", "qb-inventory/html/images", "lj-inventory/html/images"
		Inv = "qb",  				-- "qb", "ox", "qs"
		Menu = "qb",  				-- "qb", "ox"
		Notify = "qb",				-- "qb", "ox"
		ProgressBar = "qb", 		-- "qb", "ox"

		JimShops = false, 			-- If using my free script jim-shops, enable this to use it with the mechanic item stores.

		distkph = false, 			-- Set to false to read distance travelled in Miles.

		RenewedBanking = true, 	-- This is used for manualrepair benches, enable to use
	},
	Main = { -- Main variables
		isVehicleOwned = false, 	-- Keep this true if you only want changes to be made to owned vehicles
		ItemRequiresJob = true, 	-- Do the specfic items require the mechanic job?
		JobLocationRequired = true, -- Are the mecahanics locked to specific locations?
		LocationBlips = true, 		-- Enable to grab the blip locations from locations.lua
		CosmeticsJob = false, 		-- Do vehicle cosmetics require a mechanic job role?
		JobRoles = { "mechanic", }, -- These are the job roles who can use items if RequiresJob is enabled.
									-- Add your extra job roles here or just leave as "mechanic"
									-- Example-- --JobRoles = { "mechanic", "tuner" }
	},
	Overrides = {
		ShowAllStash = false, 		-- If true, it will show the locations job stash if `StashRepair` or `StashCraft` is enabled or not
		CosmeticItemRemoval = true, -- If "true" items will be removed on successful application of a mod
									-- If "false" items will not be removed on use.
		updateServerDelay = 20, 	-- default 20 second database update delay from the LAST upgrade done to a vehicle
									-- This stops overloading of server databases when many changes are happening, it adds a cooldown
		ChameleonPaints = true, 	-- Enable this if you want to use chameleon paints (ONLY GAME BUILD 2545 AND ABOVE)
		WaxFeatures = true, 		-- Enable this if you want to use Car Wax Features

		DoorAnimations = true,		-- Enable door openning animations when repairing/fixing

		disableNos = true,			-- Disable nos if you wish to use a separate script

		showItemBox = true,			-- toggle itemBox for adding/removing items, helpful if using custom item change events

		disablePreviewPlate = false,-- enable this to disable temporary plate while previewing
	},
	Harness = {
		HarnessControl = true,		-- Enable harness AND seatbelt features of the script, requires edits to smallresources and hud scripts
		seatbeltEasyLeave = true,	-- if true players can exit vehicled before removing seatbelt
		harnessEasyLeave = true,	-- if true players can exit vehicled before removing harness
		progOff = true,				-- if true add a progressBar to unbuckle harness

		seatbeltNotify = false,		-- if true, show a notification when seatbelt is put on or off
	},
	CarLifts = {
		Enable = true,					-- Disable this if using a different carlift script
		Sound = true,					-- Enable/Disable carlift movement noises
		CarLiftModelReplace = {			-- if Enable is true, this table will be used to replace revious models that are in the way of set locations
			`tr_prop_tr_car_lift_01a`,
			`v_45_carlift`,
			`v_71_carlift`,
			`imp_prop_impexp_carrack`,
			`imp_prop_impexp_postlift`,
			`imp_prop_impexp_postlift_up`,
		},
		CarLiftUse = {					-- Make use of carlifts in mlos, if they have separated parts + collision, they can be used
			-- Gabz Tuners Lifts
			[`denis3d_carlift_02`] = {
				lift = `denis3d_carlift_01`,
				offset = vec3(3.0, -1.3, 1.4)
			},
			-- Gabz Bennys Lifts
			[`gabz_bennys_prop_carlift_03`] = {
				lift = `gabz_bennys_prop_carlift_01`,
				offset = vec3(-1.5, -2.8, 1.4)
			},
			-- RFC LS CUSTOMS
			[1802445854] = {
				lift = -1174339517,
				offset = vec3(-3.0, -2.0, 1.4)
			}
		},
	},
	Repairs = {	--Repair Related
		FreeRepair = false,  		-- Are repairs free? True means yes
		StashRepair = false, 		-- Enable for repair materials to be removed from a job stash (disabled if RequiresJob = false)

		ExtraDamages = false,		-- When enabled, it will use the built in extra damage systems (Like qb-mechanicjobs functions)

		--Vehicle Part Repair Costs
		Parts = {  --- Part repair item and its MAX cost
			["engine"] = { part = "iron", cost = 8 },
			["body"] = { part = "plastic", cost = 8 },
			["oil"] = { part = "newoil", cost = 1 },
			["axle"] = { part = "axleparts", cost = 1 },
			["spark"] = { part = "sparkplugs", cost = 1 },
			["battery"] = { part = "carbattery", cost = 1 },
			["fuel"] = { part = "steel", cost = 8 },
			["wheels"] = { part = "sparetire" }, -- Has no cost, 1 per damaged wheel
		},
	},
	Previews = {

		hardCam = true,				-- Enable this to make preview make hard camera locations for previewing

		PreviewPhone = true, 		-- Enable this is preview menu generates an email, False if you want to give an item
		PreviewJob = false, 		-- Enable this if you want /preview to require a Job Role
		PreviewLocation = false, 	-- Enable this if you want to lock /preview to a job location (ignored if LocationRequired is false)
		PhoneMail = "qb", 			-- If PreviewPhone is true, change this to choose the correct phone system
									-- "qb" = use qb-phone for emails
									-- "gks" = use gks-phone for emails
									-- "qs" = use qs-smartphone for emails
									-- "roadphone" = use roadphone for emails
		PhoneItems = {				-- list of phones/items that are needed to get emails. IF you don't have any you will get a clipboard with the list on instead
			"phone",
			"classic_phone",
			"black_phone",
			"blue_phone",
			"gold_phone",
			"red_phone",
			"green_phone",
			"greenlight_phone",
			"pink_phone",
			"white_phone"
		}
	},
	StoreCraft = {
		Crafting = true, 			-- Set true to turn on crafting features
		StashCraft = false,  		-- Set true to grab materials from mechaincs stash for crafting
		Stores = true, 				-- Set true to turn on shop store features

		StashCraftTimeout = 15000, 	-- This controls the timeout of how long a stash is kept in the clients cache
									-- Raising this speeds up crafting for users, but opens up exploits
									-- Lowering this will most likely add load on to the server database
	},
	Odometer = {
		ShowOdo = false, 			-- Wether the distance is showed in car by default
		OdoLocation  = "bottom-right", 	-- Where the Odometer will show,
										-- "left", "right", "top", "top-left", "top-right", "bottom", "bottom-left", "bottom-right"
		OdoShowIcons = true, 		-- Enable this to allow the use of the warning icons on the odometer
		OdoAlwaysShowIcons = true, 	-- Enable this to show the icons even when not damaged

		OdoIconsToShow = {
			["engine"] = true,
			["body"] = true,
			["oil"] = true,
			["spark"] = true,
			["axle"] = true,
			["battery"] = true,
			["wheel"] = true,
			["headlight"] = true,
			["harness"] = true,
		},
	},
	Emergency = {
		requireDutyCheck = false,	-- if true, when a mechanic is online, the repair button won't show
									-- if false, the repair option will always be available
		Jobs = {
			["police"] = 0, -- Job and Job Grade
			["ambulance"] = 0,
			["mechanic"] = 0,
		},
		LockEmergency = true,  -- Enable this to lock make only "Emergency" (Class 18) vehicles to be used with the bench
		Locations = {
			{ coords = vec4(451.05, -973.19, 25.7, 180.0), prop = true, }, -- MRPD UNDERGROUND PARKING
			{ coords = vec4(342.51, -570.98, 28.8, 70.0), prop = true, }, -- PILL BOX GARAGE
		},
		CosmeticTable = { 			-- This controls what will appear in the emergency mech bench, "false" to hide it
			["Repair" ] = true,
			["Paints"] = true,
			["Horn"] = true,
			["Hood"] = true,
			["Exhaust"] = true,
			["RollCage"] = true,
			["Roof"] = true,
			["Spoiler"] = true,
			["Seats"] = true,
			["PlateHolder"] = true,
			["VanityPlate"] = true,
			["CustomPlate"] = true,
			["Skirts"] = true,
			["RightFender"] = true,
			["LeftFender"] = true,
			["Liverys"] = true,
			["OldLiverys"] = true,
			["RoofLiverys"] = true,
			["Grille"] = true,
			["FrontBumper"] = true,
			["BackBumper"] = true,
			["TrimA"] = true,
			["TrimB"] = true,
			["Trunk"] = true,
			["EngineBlock"] = true,
			["Filter"] = true,
			["Struts"] = true,
			["Hydraulics"] = true,
			["ArchCovers"] = true,
			["FuelTank"] = true,
			["Aerials"] = true,
			["Extras"] = true,
			["Ornaments"] = true,
			["DashBoard"] = true,
			["Dials"] = true,
			["DoorSpeakers"] = true,
			["SteeringWheels"] = true,
			["ShifterLeavers"] = true,
			["Plaques"] = true,
			["Speakers"] = true,
			["WindowTints"] = true,
		},
		PreformaceTable = {
			["Engine"] = true,
			["Brakes"] = true,
			["Suspension"] = true,
			["Transmission"] = true,
			["Armour"] = true,
			["Turbo"] = true,
		}
	},
	ManualRepairs = { -- Player vehicle repair config
		ManualRepairCost = 5000, 	-- Set this to a high amount to get people to talk to mechanics rather than use automated systems
		ManualRepairCostBased = false, 	-- Set this to true if you want the cost to ALWAYS be the amount set at "ManualRepairCost"
									-- Set this to false if you want it to "ManualRepairCost" to be the max and cost is calculated by damage

		ManualRepairBased = true, 	-- Set this to true if you want to set the repair cost to be based on QBCore.Shared.Vehicle costs(overrides the cost setting above)
		ManualRepairPercent = 5,	-- Set this to the percent of the vehicle price (Only works if ManualRepairBased is true)
									-- Default is 5% because $200,000 would be $10,000 max to repair by this system
									-- 5% of a $10,000 car would be $500

		repairEngine = true, 		-- Set this to true if automated repairs also repair engine (not just body)
		repairExtras = true, 		-- Set this to true for automated repairs to also repair extra damages (if mechanicjob is available and repairEngine is true)

		requireDutyCheck = true, 	-- if set to true, the repair bench will only be usable if there are no mechanics in the server ON DUTY
		dutyMessage = "There is a Mechanic on duty!", -- This is the notification that pops up when a person tries to repair when a mechanic is on duty, choose what you want for it.

		repairAnimate = false,		-- Better than staring at a progress bar, "damaged" parts will be removed and replaced. Making it look more authentic
		repairSpeed = 1500, 		-- The time between each task while using repairAnimate. 1500 Seems to be a reasonable time for it
	},
	antiLag = {
		antiLagExp = false,			-- Disable this if having issues with sound/lag

		-- These antilag options are for the script based audio only
		scriptAudio = true,			-- Disable this to stop using provided popping sounds
		antiLagDis = 30.0,			-- Max distance players can hear antiLag explosions
		maxAudio = 0.8,				-- This is adjusted by distance to enchance the effect, this is the max volume

	},
	NOS = { -- NOS STUF
		JobOnly = false,			-- Only allow job roles to change NOS
		NosRefillCharge = 1000, 	-- amount in dollars required to refill a nos can

		NosBoostPower = { 			-- NOS boost acceleration power
			20.0, -- Level 1
			35.0, -- Level 2
			50.0, -- Level 3
		},

		NitrousUseRate = 0.4, 		-- How fast the nitrous drains (halved for level1, doubled for level3)

		NitrousCoolDown = 7, 		-- 7 Seconds for nitrous cooldown, set to 0 to disable
		CooldownConfirm = true, 	-- Will play a confirmation beep when cooldown is done

		nosDamage = true, 			-- This enables NOS causing damage to engine while boosting
		boostExplode = true, 		-- If boosting too long at level 3 boost, tank will explode.

		-- Effects
		PurgeDis = 60.0,			-- How far from the vehicle players can see Purge Smoke

		EnableFlame = true, 		-- True adds exhaut flame effects while boosting
		FlameDis = 50.0,			-- How far from the vehicle players can see Boost flames

		EnableTrails = true, 		-- True adds taillight effects while boosting
		TrailsDis = 50.0,			-- How far from the vehicle players can see Boost Trails

		EnableScreen = true, 		-- True adds screen effects while boosting

		skillcheck = "qb-skillbar", -- When adding Nos to a vehicle there are three script options available
									-- "qb-skillbar" "qb-lock" "ps-ui" "ox_lib"

		explosiveFail = true, 		-- Better not fail that skill check. (1 in 10 chance of explosion)
		explosiveFailJob = true, 	-- if true, mechanics can trigger an explosion on failure to add nos
									-- if false, mechanics will never trigger an explosion
	},
	Discord = { -- Discord preview receipts
		-- You will need to set custom info in each job location in locations.lua
		-- But for the ones you don't add info to, it will default to these numbers
		DiscordPreview = true, 	-- Set to true if you want to use discord receipts
		DiscordDefault = "", 		-- Set this to the default channel API link if one isn't set for a location
		DiscordColour = 16753920, 	-- This is the default "decimal" number colour
	},
--DuctTape Controllers
	DuctTape = {
		DuctSimpleMode = true, 		-- This will repair the engine to the max (set below)
		MaxDuctEngine = 450.0, 		-- 450.0 is 45% health, this will be the max amount that it can be repaired to
		DuctAmountEngine = 100.0, 	-- Repairs the engine by 10% each use

		DuctTapeBody = true,  		--Enable if you want duct tape to repair body at the same time as engine
		MaxDuctBody = 450.0,
		DuctAmountBody = 100.0, 	-- Repairs the engine by 10% each use

		RemoveDuctTape = true, 		--If Enabled it will remove 1 duct after use. If false it will be constantly reusable
	},
}

-- No touch --
Loc, Crafting, Stores, VehicleNitrous, VehicleStatus, purgemode, purgeSize, boostLevel = {}, {}, {}, {}, {}, true, 0.4, 1
QBCore = exports["qb-core"]:GetCoreObject()