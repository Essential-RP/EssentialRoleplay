QBShared = QBShared or {}
QBShared.Items = {
	-- WEAPONS
	-- Melee
	['weapon_unarmed'] 				 = {['name'] = 'weapon_unarmed', 		 	  	['label'] = 'Fists', 					['weight'] = 1000, 		['type'] = 'weapon',	['ammotype'] = nil, 					['image'] = 'placeholder.png', 			['unique'] = true, 		['useable'] = false, 	['description'] = 'Fisticuffs'},
	['weapon_dagger'] 				 = {['name'] = 'weapon_dagger', 			 	['label'] = 'Dagger', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_dagger.png', 		['unique'] = true, 		['useable'] = false,	["created"] = nil, 		['description'] = 'A short knife with a pointed and edged blade, used as a weapon'},
	['weapon_bat'] 					 = {['name'] = 'weapon_bat', 			 	  	['label'] = 'Bat', 					    ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_bat.png', 			['unique'] = true, 		['useable'] = false,	["created"] = nil, 		['description'] = 'Used for hitting a ball in sports (or other things)'},
	['weapon_bottle'] 				 = {['name'] = 'weapon_bottle', 			 	['label'] = 'Broken Bottle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_bottle.png', 		['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A broken bottle'},
	['weapon_crowbar'] 				 = {['name'] = 'weapon_crowbar', 		 	  	['label'] = 'Crowbar', 				    ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_crowbar.png', 		['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'An iron bar with a flattened end, used as a lever'},
	['weapon_flashlight']			 = {['name'] = 'weapon_flashlight',				['label'] = 'Flashlight',				['weight'] = 1000,		['type'] = 'weapon',	['ammotype'] = nil,						['image'] = 'weapon_flashlight.png',	['unique'] = true,		['useable'] = false,	["created"] = nil, 	['description'] = 'A battery-operated portable light'},
	['weapon_golfclub'] 			 = {['name'] = 'weapon_golfclub', 		 	  	['label'] = 'Golfclub', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_golfclub.png', 		['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A club used to hit the ball in golf'},
	['weapon_hammer'] 				 = {['name'] = 'weapon_hammer', 			 	['label'] = 'Hammer', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_hammer.png', 		['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'Used for jobs such as breaking things (legs) and driving in nails'},
	['weapon_hatchet'] 				 = {['name'] = 'weapon_hatchet', 		 	  	['label'] = 'Hatchet', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_hatchet.png', 		['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A small axe with a short handle for use in one hand'},
	['weapon_knuckle'] 				 = {['name'] = 'weapon_knuckle', 		 	  	['label'] = 'Knuckle', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_knuckle.png', 		['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A metal guard worn over the knuckles in fighting, especially to increase the effect of the blows'},
	['weapon_knife'] 				 = {['name'] = 'weapon_knife', 			 	  	['label'] = 'Knife', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_knife.png', 		['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'An instrument composed of a blade fixed into a handle, used for cutting or as a weapon'},
	['weapon_machete'] 				 = {['name'] = 'weapon_machete', 		 	  	['label'] = 'Machete', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_machete.png', 		['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A broad, heavy knife used as a weapon'},
	['weapon_switchblade'] 			 = {['name'] = 'weapon_switchblade', 	 	  	['label'] = 'Switchblade', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_switchblade.png', 	['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A knife with a blade that springs out from the handle when a button is pressed'},
	['weapon_nightstick'] 			 = {['name'] = 'weapon_nightstick', 		 	['label'] = 'Nightstick (PD Issued)', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_nightstick.png', 	['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A police officer\'s club or billy'},
	['weapon_wrench'] 				 = {['name'] = 'weapon_wrench', 			 	['label'] = 'Wrench', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_wrench.png', 		['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A tool used for gripping and turning nuts, bolts, pipes, etc'},
	['weapon_battleaxe'] 			 = {['name'] = 'weapon_battleaxe', 		 	  	['label'] = 'Battle Axe', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_battleaxe.png', 	['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A large broad-bladed axe used in ancient warfare'},
	['weapon_poolcue'] 				 = {['name'] = 'weapon_poolcue', 		 	  	['label'] = 'Poolcue', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_poolcue.png', 		['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A stick used to strike a ball, usually the cue ball (or other things)'},
	['weapon_briefcase'] 			 = {['name'] = 'weapon_briefcase', 		 	  	['label'] = 'Briefcase', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_briefcase.png', 	['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A briefcase for storing important documents'},
	['weapon_briefcase_02'] 		 = {['name'] = 'weapon_briefcase_02', 	 	  	['label'] = 'Suitcase', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_briefcase2.png', 	['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'Wonderfull for nice vacation to Liberty City'},
	['weapon_garbagebag'] 			 = {['name'] = 'weapon_garbagebag', 		 	['label'] = 'Garbage Bag', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_garbagebag.png', 	['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A garbage bag'},
	['weapon_handcuffs'] 			 = {['name'] = 'weapon_handcuffs', 		 	  	['label'] = 'Handcuffs', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_handcuffs.png', 	['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A pair of lockable linked metal rings for securing a prisoner\'s wrists'},
	['weapon_bread'] 				 = {['name'] = 'weapon_bread', 				 	['label'] = 'Baquette', 		        ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'baquette.png', 			['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'Bread...?'},
	['weapon_stone_hatchet'] 		 = {['name'] = 'weapon_stone_hatchet', 		 	['label'] = 'Stone Hatchet', 	        ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_stone_hatchet.png', ['unique'] = true, 		['useable'] = true,		["created"] = nil,  	['description'] = 'Stone ax'},

	-- Handguns
	['weapon_pistol'] 				 = {['name'] = 'weapon_pistol', 			 	['label'] = 'Walther P99', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_pistol.png', 		['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A small firearm designed to be held in one hand'},
	['weapon_pistol_mk2'] 			 = {['name'] = 'weapon_pistol_mk2', 			['label'] = 'Pistol Mk II', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_pistol_mk2.png', 	['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'An upgraded small firearm designed to be held in one hand'},
	['weapon_combatpistol'] 		 = {['name'] = 'weapon_combatpistol', 	 	  	['label'] = 'Combat Pistol', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_combatpistol.png', 	['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A combat version small firearm designed to be held in one hand'},
	['weapon_appistol'] 			 = {['name'] = 'weapon_appistol', 		 	  	['label'] = 'AP Pistol', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_appistol.png', 		['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A small firearm designed to be held in one hand that is automatic'},
	['weapon_stungun'] 				 = {['name'] = 'weapon_stungun', 		 	  	['label'] = 'Taser (PD Issued)', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_stungun.png', 		['unique'] = true,   	['useable'] = false,	["created"] = nil,  	['description'] = 'A weapon firing barbs attached by wires to batteries, causing temporary paralysis'},
	['weapon_pistol50'] 			 = {['name'] = 'weapon_pistol50', 		 	  	['label'] = 'Pistol .50', 			    ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_pistol50.png', 		['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A .50 caliber firearm designed to be held with both hands'},
	['weapon_snspistol'] 			 = {['name'] = 'weapon_snspistol', 		 	  	['label'] = 'SNS Pistol', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_snspistol.png', 	['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A very small firearm designed to be easily concealed'},
	['weapon_heavypistol'] 			 = {['name'] = 'weapon_heavypistol', 	 	  	['label'] = 'Heavy Pistol', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_heavypistol.png', 	['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A hefty firearm designed to be held in one hand (or attempted)'},
	['weapon_vintagepistol'] 		 = {['name'] = 'weapon_vintagepistol', 	 	  	['label'] = 'Vintage Pistol', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_vintagepistol.png', ['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'An antique firearm designed to be held in one hand'},
	['weapon_flaregun'] 			 = {['name'] = 'weapon_flaregun', 		 	  	['label'] = 'Flare Gun', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_FLARE',			['image'] = 'weapon_flaregun.png', 		['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A handgun for firing signal rockets'},
	['weapon_marksmanpistol'] 		 = {['name'] = 'weapon_marksmanpistol', 	 	['label'] = 'Marksman Pistol', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_marksmanpistol.png',['unique'] = true,      ['useable'] = false,	["created"] = nil,  	['description'] = 'A very accurate small firearm designed to be held in one hand'},
	['weapon_revolver'] 			 = {['name'] = 'weapon_revolver', 		 	  	['label'] = 'Revolver', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_revolver.png', 		['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A pistol with revolving chambers enabling several shots to be fired without reloading'},
	['weapon_revolver_mk2'] 		 = {['name'] = 'weapon_revolver_mk2', 		 	['label'] = 'Violence', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_revolver_mk2.png', 	['unique'] = true, 		['useable'] = true, 	["created"] = nil, 		['description'] = 'da Violence'},
	['weapon_doubleaction'] 	     = {['name'] = 'weapon_doubleaction', 		 	['label'] = 'Double Action Revolver', 	['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_doubleaction.png', 	['unique'] = true, 		['useable'] = true,		["created"] = nil,  	['description'] = 'Double Action Revolver'},
	['weapon_snspistol_mk2'] 	     = {['name'] = 'weapon_snspistol_mk2', 		 	['label'] = 'Paintball Gun', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PAINTBALL',		['image'] = 'paintball_gun.png', 		['unique'] = true, 		['useable'] = true,		["created"] = nil,  	['description'] = 'Paintball Gun Event'},
	['weapon_raypistol']			 = {['name'] = 'weapon_raypistol',				['label'] = 'Up-n-Atomizer',			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_raypistol.png',		['unique'] = true, 		['useable'] = true,		["created"] = nil,  	['description'] = 'Weapon Raypistol'},
	['weapon_ceramicpistol']		 = {['name'] = 'weapon_ceramicpistol', 		 	['label'] = 'Ceramic Pistol',		    ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_ceramicpistol.png',	['unique'] = true, 		['useable'] = true,		["created"] = nil,  	['description'] = 'Weapon Ceramicpistol'},
	['weapon_navyrevolver']        	 = {['name'] = 'weapon_navyrevolver', 		 	['label'] = 'Navy Revolver',		    ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_navyrevolver.png',	['unique'] = true, 		['useable'] = true,		["created"] = nil,  	['description'] = 'Weapon Navyrevolver'},
	['weapon_gadgetpistol'] 		 = {['name'] = 'weapon_gadgetpistol', 		 	['label'] = 'Perico Pistol',		    ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_gadgetpistol.png',	['unique'] = true, 		['useable'] = true,		["created"] = nil,  	['description'] = 'Weapon Gadgetpistol'},
    -- ['weapon_dp9'] 		             = {['name'] = 'weapon_dp9', 		 	        ['label'] = 'DP9',		                ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_dp9.png',	        ['unique'] = true, 		['useable'] = true,		["created"] = nil,  	['description'] = 'Weapon DP9'},
	-- ['weapon_browning'] 		     = {['name'] = 'weapon_browning', 		 	    ['label'] = 'Browning',		            ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_pistol.png',	    ['unique'] = true, 		['useable'] = true,		["created"] = nil,  	['description'] = 'Weapon Browning'},
	-- Submachine Guns
	['weapon_microsmg'] 			 = {['name'] = 'weapon_microsmg', 		 	  	['label'] = 'Micro SMG', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_microsmg.png', 		['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A handheld lightweight machine gun'},
	['weapon_smg'] 				 	 = {['name'] = 'weapon_smg', 			 	  	['label'] = 'SMG', 						['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_smg.png', 			['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A handheld lightweight machine gun'},
	['weapon_smg_mk2'] 				 = {['name'] = 'weapon_smg_mk2', 			 	['label'] = 'SMG Mk II', 				['weight'] = 1000,		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_smg_mk2.png', 		['unique'] = true, 		['useable'] = true,		["created"] = nil,  	['description'] = 'SMG MK2'},
	['weapon_assaultsmg'] 			 = {['name'] = 'weapon_assaultsmg', 		 	['label'] = 'Assault SMG', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_assaultsmg.png', 	['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'An assault version of a handheld lightweight machine gun'},
	['weapon_combatpdw'] 			 = {['name'] = 'weapon_combatpdw', 		 	  	['label'] = 'Combat PDW', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_combatpdw.png', 	['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A combat version of a handheld lightweight machine gun'},
	['weapon_machinepistol'] 		 = {['name'] = 'weapon_machinepistol', 	 	  	['label'] = 'Tec-9', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_machinepistol.png', ['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A self-loading pistol capable of burst or fully automatic fire'},
	['weapon_minismg'] 				 = {['name'] = 'weapon_minismg', 		 	  	['label'] = 'Mini SMG', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_minismg.png', 		['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A mini handheld lightweight machine gun'},
	['weapon_raycarbine']	         = {['name'] = 'weapon_raycarbine', 		 	['label'] = 'Unholy Hellbringer',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'weapon_raycarbine.png',	['unique'] = true, 		['useable'] = true, 	["created"] = nil, 		['description'] = 'Weapon Raycarbine'},

	-- Shotguns
	['weapon_pumpshotgun'] 			 = {['name'] = 'weapon_pumpshotgun', 	 	  	['label'] = 'Pump Shotgun', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_pumpshotgun.png', 	['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A pump-action smoothbore gun for firing small shot at short range'},
	['weapon_sawnoffshotgun'] 		 = {['name'] = 'weapon_sawnoffshotgun', 	 	['label'] = 'Sawn-off Shotgun', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_sawnoffshotgun.png',['unique'] = true, 	    ['useable'] = false,	["created"] = nil,  	['description'] = 'A sawn-off smoothbore gun for firing small shot at short range'},
	['weapon_assaultshotgun'] 		 = {['name'] = 'weapon_assaultshotgun', 	 	['label'] = 'Assault Shotgun', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_assaultshotgun.png',['unique'] = true, 	    ['useable'] = false,	["created"] = nil,  	['description'] = 'An assault version of asmoothbore gun for firing small shot at short range'},
	['weapon_bullpupshotgun'] 		 = {['name'] = 'weapon_bullpupshotgun', 	 	['label'] = 'Bullpup Shotgun', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_bullpupshotgun.png',['unique'] = true,  	['useable'] = false,	["created"] = nil,  	['description'] = 'A compact smoothbore gun for firing small shot at short range'},
	['weapon_musket'] 			     = {['name'] = 'weapon_musket', 			 	['label'] = 'Musket', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_musket.png', 		['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'An infantryman\'s light gun with a long barrel, typically smooth-bored, muzzleloading, and fired from the shoulder'},
	['weapon_heavyshotgun'] 		 = {['name'] = 'weapon_heavyshotgun', 	 	  	['label'] = 'Heavy Shotgun', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_heavyshotgun.png', 	['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A large smoothbore gun for firing small shot at short range'},
	['weapon_dbshotgun'] 			 = {['name'] = 'weapon_dbshotgun', 		 	  	['label'] = 'Double-barrel Shotgun', 	['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_dbshotgun.png', 	['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A shotgun with two parallel barrels, allowing two single shots to be fired in quick succession'},
	['weapon_autoshotgun'] 			 = {['name'] = 'weapon_autoshotgun', 	 	  	['label'] = 'Auto Shotgun', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_autoshotgun.png', 	['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A shotgun capable of rapid continous fire'},
	['weapon_pumpshotgun_mk2']		 = {['name'] = 'weapon_pumpshotgun_mk2',		['label'] = 'Pumpshotgun Mk II', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_pumpshotgun_mk2.png',['unique'] = true, 	['useable'] = true,		["created"] = nil,  	['description'] = 'Pumpshotgun MK2'},
	['weapon_combatshotgun']		 = {['name'] = 'weapon_combatshotgun', 		 	['label'] = 'Combat Shotgun',		    ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'weapon_combatshotgun.png', ['unique'] = true, 		['useable'] = true,		["created"] = nil,  	['description'] = 'Weapon Combatshotgun'},

	-- Assault Rifles
	['weapon_assaultrifle'] 		 = {['name'] = 'weapon_assaultrifle', 	 	  	['label'] = 'Assault Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_assaultrifle.png', 	['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A rapid-fire, magazine-fed automatic rifle designed for infantry use'},
	['weapon_assaultrifle_mk2'] 	 = {['name'] = 'weapon_assaultrifle_mk2', 	 	['label'] = 'Assault Rifle Mk II', 		['weight'] = 1000,		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_assaultrifle_mk2.png', ['unique'] = true, 	['useable'] = true,		["created"] = nil,  	['description'] = 'Assault Rifle MK2'},
	['weapon_carbinerifle'] 		 = {['name'] = 'weapon_carbinerifle', 	 	  	['label'] = 'Carbine Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_carbinerifle.png', 	['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A lightweight automatic rifle'},
	['weapon_carbinerifle_mk2'] 	 = {['name'] = 'weapon_carbinerifle_mk2', 	 	['label'] = 'Carbine Rifle Mk II', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_carbinerifle_mk2.png', ['unique'] = true, 	['useable'] = true,		["created"] = nil,  	['description'] = 'Carbine Rifle MK2'},
	['weapon_advancedrifle'] 		 = {['name'] = 'weapon_advancedrifle', 	 	  	['label'] = 'Advanced Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_advancedrifle.png', ['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'An assault version of a rapid-fire, magazine-fed automatic rifle designed for infantry use'},
	['weapon_specialcarbine'] 		 = {['name'] = 'weapon_specialcarbine', 	 	['label'] = 'Special Carbine', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_specialcarbine.png', ['unique'] = true, 	['useable'] = false,	["created"] = nil,  	['description'] = 'An extremely versatile assault rifle for any combat situation'},
	['weapon_bullpuprifle'] 		 = {['name'] = 'weapon_bullpuprifle', 	 	  	['label'] = 'Bullpup Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_bullpuprifle.png', 	['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A compact automatic assault rifle'},
	['weapon_compactrifle'] 		 = {['name'] = 'weapon_compactrifle', 	 	  	['label'] = 'Compact Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_compactrifle.png', 	['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A compact version of an assault rifle'},
	['weapon_specialcarbine_mk2']	 = {['name'] = 'weapon_specialcarbine_mk2', 	['label'] = 'Special Carbine Mk II',    ['weight'] = 1000, 	    ['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_specialcarbine_mk2.png', ['unique'] = true, ['useable'] = true,		["created"] = nil,  	['description'] = 'Weapon Wpecialcarbine MK2'},
	['weapon_bullpuprifle_mk2']		 = {['name'] = 'weapon_bullpuprifle_mk2', 		['label'] = 'Bullpup Rifle Mk II',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_bullpuprifle_mk2.png', ['unique'] = true, 	['useable'] = true,		["created"] = nil,  	['description'] = 'Bull Puprifle MK2'},
	['weapon_militaryrifle']		 = {['name'] = 'weapon_militaryrifle', 		 	['label'] = 'Military Rifle',		    ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_militaryrifle.png', ['unique'] = true, 		['useable'] = true,		["created"] = nil,  	['description'] = 'Weapon Militaryrifle'},

	-- Light Machine Guns
	['weapon_mg'] 					 = {['name'] = 'weapon_mg', 				 	['label'] = 'Machinegun', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MG',				['image'] = 'weapon_mg.png', 			['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'An automatic gun that fires bullets in rapid succession for as long as the trigger is pressed'},
	['weapon_combatmg'] 			 = {['name'] = 'weapon_combatmg', 		 	  	['label'] = 'Combat MG', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MG',				['image'] = 'weapon_combatmg.png', 		['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A combat version of an automatic gun that fires bullets in rapid succession for as long as the trigger is pressed'},
	['weapon_gusenberg'] 			 = {['name'] = 'weapon_gusenberg', 		 	  	['label'] = 'Thompson SMG', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MG',				['image'] = 'weapon_gusenberg.png', 	['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'An automatic rifle commonly referred to as a tommy gun'},
	['weapon_combatmg_mk2']	 		 = {['name'] = 'weapon_combatmg_mk2', 		 	['label'] = 'Combat MG Mk II',		    ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MG',				['image'] = 'weapon_combatmg_mk2.png', 	['unique'] = true, 		['useable'] = true,		["created"] = nil,  	['description'] = 'Weapon Combatmg MK2'},

	-- Sniper Rifles
	['weapon_sniperrifle'] 			 = {['name'] = 'weapon_sniperrifle', 	 	  	['label'] = 'Sniper Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'weapon_sniperrifle.png', 	 ['unique'] = true, 	['useable'] = false,	["created"] = nil,  	['description'] = 'A high-precision, long-range rifle'},
	['weapon_heavysniper'] 			 = {['name'] = 'weapon_heavysniper', 	 	  	['label'] = 'Heavy Sniper', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'weapon_heavysniper.png', 	 ['unique'] = true, 	['useable'] = false,	["created"] = nil,  	['description'] = 'An upgraded high-precision, long-range rifle'},
	['weapon_marksmanrifle'] 		 = {['name'] = 'weapon_marksmanrifle', 	 	  	['label'] = 'Marksman Rifle', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'weapon_marksmanrifle.png', ['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A very accurate single-fire rifle'},
	['weapon_remotesniper'] 		 = {['name'] = 'weapon_remotesniper', 	 	  	['label'] = 'Remote Sniper', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER_REMOTE',	['image'] = 'weapon_remotesniper.png', 	 ['unique'] = true, 	['useable'] = false,	["created"] = nil,  	['description'] = 'A portable high-precision, long-range rifle'},
	['weapon_heavysniper_mk2']		 = {['name'] = 'weapon_heavysniper_mk2', 		['label'] = 'Heavy Sniper Mk II',	    ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'weapon_heavysniper_mk2.png', ['unique'] = true, 	['useable'] = true,		["created"] = nil,  	['description'] = 'Weapon Heavysniper MK2'},
	['weapon_marksmanrifle_mk2']	 = {['name'] = 'weapon_marksmanrifle_mk2', 		['label'] = 'Marksman Rifle Mk II',	    ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'weapon_marksmanrifle_mk2.png',	['unique'] = true, 	['useable'] = true, 	["created"] = nil, 		['description'] = 'Weapon Marksmanrifle MK2'},

	-- Heavy Weapons
	['weapon_rpg'] 					 = {['name'] = 'weapon_rpg', 			      	['label'] = 'RPG', 						['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_RPG',				['image'] = 'weapon_rpg.png', 			['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A rocket-propelled grenade launcher'},
	['weapon_grenadelauncher'] 		 = {['name'] = 'weapon_grenadelauncher', 	  	['label'] = 'Grenade Launcher', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_GRENADELAUNCHER',	['image'] = 'weapon_grenadelauncher.png', ['unique'] = true, 	['useable'] = false,	["created"] = nil,  	['description'] = 'A weapon that fires a specially-designed large-caliber projectile, often with an explosive, smoke or gas warhead'},
	['weapon_grenadelauncher_smoke'] = {['name'] = 'weapon_grenadelauncher_smoke', 	['label'] = 'Smoke Grenade Launcher', 	['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_GRENADELAUNCHER',	['image'] = 'weapon_smokegrenade.png', 	 ['unique'] = true, 	['useable'] = false,	["created"] = nil,  	['description'] = 'A bomb that produces a lot of smoke when it explodes'},
	['weapon_minigun'] 				 = {['name'] = 'weapon_minigun', 		      	['label'] = 'Minigun', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MINIGUN',			['image'] = 'weapon_minigun.png', 		['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A portable machine gun consisting of a rotating cluster of six barrels and capable of variable rates of fire of up to 6,000 rounds per minute'},
	['weapon_firework'] 			 = {['name'] = 'weapon_firework', 		 	  	['label'] = 'Firework Launcher', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_firework.png', 		['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A device containing gunpowder and other combustible chemicals that causes a spectacular explosion when ignited'},
	['weapon_railgun'] 				 = {['name'] = 'weapon_railgun', 		 	  	['label'] = 'Railgun', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_railgun.png', 		['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A weapon that uses electromagnetic force to launch high velocity projectiles'},
	['weapon_hominglauncher'] 		 = {['name'] = 'weapon_hominglauncher', 	 	['label'] = 'Homing Launcher', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_STINGER',			['image'] = 'weapon_hominglauncher.png', ['unique'] = true, 	['useable'] = false,	["created"] = nil,  	['description'] = 'A weapon fitted with an electronic device that enables it to find and hit a target'},
	['weapon_compactlauncher'] 		 = {['name'] = 'weapon_compactlauncher',  	  	['label'] = 'Compact Launcher', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_compactlauncher.png', 	['unique'] = true, 	['useable'] = false,	["created"] = nil,  	['description'] = 'A compact grenade launcher'},
	['weapon_rayminigun']			 = {['name'] = 'weapon_rayminigun', 		 	['label'] = 'Widowmaker',		        ['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_MINIGUN',			['image'] = 'weapon_rayminigun.png',	['unique'] = true, 		['useable'] = true,		["created"] = nil,  	['description'] = 'Weapon Rayminigun'},

	-- Throwables
	['weapon_grenade'] 				 = {['name'] = 'weapon_grenade', 		      	['label'] = 'Grenade', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_grenade.png', 		['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A handheld throwable bomb'},
	['weapon_bzgas'] 				 = {['name'] = 'weapon_bzgas', 			      	['label'] = 'BZ Gas', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_bzgas.png', 		['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A cannister of gas that causes extreme pain'},
	['weapon_molotov'] 				 = {['name'] = 'weapon_molotov', 		      	['label'] = 'Molotov', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_molotov.png', 		['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A crude bomb made of a bottle filled with a flammable liquid and fitted with a wick for lighting'},
	['weapon_stickybomb'] 			 = {['name'] = 'weapon_stickybomb', 		    ['label'] = 'C4', 						['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_stickybomb.png', 	['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'An explosive charge covered with an adhesive that when thrown against an object sticks until it explodes'},
	['weapon_proxmine'] 			 = {['name'] = 'weapon_proxmine', 		 	  	['label'] = 'Proxmine Grenade', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_proximitymine.png', ['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A bomb placed on the ground that detonates when going within its proximity'},
	['weapon_snowball'] 		     = {['name'] = 'weapon_snowball', 		 	  	['label'] = 'Snowball', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_snowball.png', 		['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A ball of packed snow, especially one made for throwing at other people for fun'},
	['weapon_pipebomb'] 			 = {['name'] = 'weapon_pipebomb', 		 	  	['label'] = 'Pipe Bomb', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_pipebomb.png', 		['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A homemade bomb, the components of which are contained in a pipe'},
	['weapon_ball'] 				 = {['name'] = 'weapon_ball', 			 	  	['label'] = 'Ball', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_BALL',				['image'] = 'weapon_ball.png', 			['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A solid or hollow spherical or egg-shaped object that is kicked, thrown, or hit in a game'},
	['weapon_smokegrenade'] 		 = {['name'] = 'weapon_smokegrenade', 	      	['label'] = 'Smoke Grenade', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_c4.png', 			['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'An explosive charge that can be remotely detonated'},
	['weapon_flare'] 				 = {['name'] = 'weapon_flare', 			 	  	['label'] = 'Flare pistol', 			['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_FLARE',			['image'] = 'weapon_flare.png', 		['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A small pyrotechnic devices used for illumination and signalling'},

	-- Miscellaneous
	['weapon_petrolcan'] 			 = {['name'] = 'weapon_petrolcan', 		 	  	['label'] = 'Petrol Can', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PETROLCAN',		['image'] = 'weapon_petrolcan.png', 	['unique'] = true, 		['useable'] = false,	["created"] = nil,  	['description'] = 'A robust liquid container made from pressed steel'},
	['weapon_fireextinguisher'] 	 = {['name'] = 'weapon_fireextinguisher',      	['label'] = 'Fire Extinguisher', 		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_fireextinguisher.png', 	['unique'] = true, 	['useable'] = false,	["created"] = nil,  	['description'] = 'A portable device that discharges a jet of water, foam, gas, or other material to extinguish a fire'},
	['weapon_hazardcan']			 = {['name'] = 'weapon_hazardcan',				['label'] = 'Hazardous Jerry Can',		['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PETROLCAN',		['image'] = 'weapon_hazardcan.png',		['unique'] = true, 		['useable'] = true,	["created"] = nil,  	['description'] = 'Weapon Hazardcan'},

		-- Custom Weapons
	-- ['weapon_ak47'] 		 		 = {['name'] = 'weapon_ak47', 	 			  	['label'] = 'AK-47', 					['weight'] = 13000, 	['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_assaultrifle.png', 				['unique'] = true, 		['useable'] = false,["created"] = nil,	['description'] = 'A rapid-fire, magazine-fed automatic rifle designed for infantry use'},
	-- ['weapon_de'] 					 = {['name'] = 'weapon_de', 			 	  	['label'] = 'Desert Eagle',			    ['weight'] = 8000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'deagle.png', 							['unique'] = true, 		['useable'] = false,["created"] = nil,	['description'] = 'A .50 caliber firearm designed to be held with both hands'},
	-- ['weapon_fnx45'] 				 = {['name'] = 'weapon_fnx45', 	 			  	['label'] = 'FN FNX-45', 				['weight'] = 7000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'weapon_combat-pistol.png', 			['unique'] = true, 		['useable'] = false,["created"] = nil,	['description'] = 'A combat version small firearm designed to be held in one hand'},
	['weapon_glock17'] 				 = {['name'] = 'weapon_glock17', 			 	['label'] = 'Glock (PD Issued)', 				['weight'] = 7000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'glock-17.png', 						['unique'] = true, 		['useable'] = false,["created"] = nil,	['description'] = 'PD Glock'},
	-- ['weapon_m4'] 					 = {['name'] = 'weapon_m4', 	 			  	['label'] = 'PD M4A1', 					['weight'] = 13000, 	['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_carbinerifle.png',			 	['unique'] = true, 		['useable'] = false,["created"] = nil,	['description'] = 'A lightweight automatic rifle for the Police'},
	-- ['weapon_m9'] 					 = {['name'] = 'weapon_m9', 				 	['label'] = 'Beretta M9A3', 			['weight'] = 7000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'm1911.png', 							['unique'] = true, 		['useable'] = false,["created"] = nil,	['description'] = 'A M91'},
	-- ['weapon_m70'] 					 = {['name'] = 'weapon_m70', 	 			  	['label'] = 'M70', 						['weight'] = 13000, 	['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'm70.png',  							['unique'] = true, 		['useable'] = false,["created"] = nil,	['description'] = 'A rapid-fire, magazine-fed automatic rifle designed for infantry use'},
	-- ['weapon_m1911'] 				 = {['name'] = 'weapon_m1911', 	 			  	['label'] = 'M1911', 					['weight'] = 7000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'browning.png',  						['unique'] = true, 		['useable'] = false,["created"] = nil,	['description'] = 'A hefty firearm designed to be held in one hand (or attempted)'},
	-- ['weapon_uzi'] 					 = {['name'] = 'weapon_uzi', 			 	  	['label'] = 'UZI', 						['weight'] = 10000, 	['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'uzi.png', 								['unique'] = true, 		['useable'] = false,["created"] = nil,	['description'] = 'A handheld lightweight machine gun'},
	-- ['weapon_mac10'] 				 = {['name'] = 'weapon_mac10', 			 	  	['label'] = 'MAC-10', 					['weight'] = 10000, 	['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'mac-10.png', 							['unique'] = true, 		['useable'] = false,["created"] = nil,	['description'] = 'A handheld lightweight machine gun'},
	-- ['weapon_mossberg'] 			 = {['name'] = 'weapon_mossberg', 			 	['label'] = 'Mossberg 500', 			['weight'] = 10000, 	['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'mossberg500.png',						['unique'] = true,	 	['useable'] = false,["created"] = nil,	['description'] = 'A sawn-off smoothbore gun for firing small shot at short range'},
	-- ['weapon_remington'] 			 = {['name'] = 'weapon_remington', 		 	  	['label'] = 'Remington 870', 			['weight'] = 8000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SHOTGUN',			['image'] = 'remington.png', 						['unique'] = true, 		['useable'] = false,["created"] = nil,	['description'] = 'A pump-action smoothbore gun for firing small shot at short range'},
	-- ['weapon_scarh'] 				 = {['name'] = 'weapon_scarh', 				 	['label'] = 'PD SCAR-H', 				['weight'] = 13000, 	['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'scar.png',								['unique'] = true, 		['useable'] = false,["created"] = nil,	['description'] = 'An extremely versatile assault rifle for any combat situation'},
	-- ['weapon_shiv'] 				 = {['name'] = 'weapon_shiv', 			 	  	['label'] = 'Shiv', 					['weight'] = 3000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'shiv.png', 							['unique'] = true, 		['useable'] = false,["created"] = nil,	['description'] = 'An instrument composed of a blade fixed into a handle, used for cutting or as a weapon'},
	-- ['weapon_ar15'] 				 = {['name'] = 'weapon_ar15', 	 	 		 	['label'] = 'PD AR-15', 				['weight'] = 13000, 	['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_mcx.png', 						['unique'] = true, 		['useable'] = false,["created"] = nil,	['description'] = 'A lightweight automatic rifle for the Police'},
	-- ['weapon_mk14'] 				 = {['name'] = 'weapon_mk14', 	 			  	['label'] = 'PD MK14', 					['weight'] = 23000, 	['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'mk14.png', 							['unique'] = true, 		['useable'] = false,["created"] = nil,	['description'] = 'A very accurate single-fire rifle'},
	-- ['weapon_huntingrifle'] 		 = {['name'] = 'weapon_huntingrifle', 	 	  	['label'] = 'Hunting Rifle', 			['weight'] = 23000, 	['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = 'huntingrifle.png', 					['unique'] = true, 		['useable'] = false,["created"] = nil,	['description'] = 'A very accurate Rifle for hunting'},
	-- ['weapon_katana'] 				 = {['name'] = 'weapon_katana', 	 		  	['label'] = 'Katana', 					['weight'] = 13000, 	['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'katana.png', 							['unique'] = true, 		['useable'] = false,["created"] = nil,	['description'] = 'A single-edged sword that is the longer of a pair worn by the Japanese samurai.'},
	-- ['weapon_sledgehammer'] 		 = {['name'] = 'weapon_sledgehammer', 	 		['label'] = 'Sledge Hammer', 			['weight'] = 13000, 	['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'sledgehammer.png', 	                ['unique'] = true, 		['useable'] = false,["created"] = nil,	['description'] = 'A Sledge Hammer to destroy peoples heads'},
	-- ['weapon_mp9'] 			         = {['name'] = 'weapon_mp9', 		 	  	    ['label'] = 'MP9', 				        ['weight'] = 10000, 	['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = '???', 		                            ['unique'] = true, 		['useable'] = false,["created"] = nil,["decay"] = 30.0,     	['description'] = 'A handheld lightweight machine gun'},
	-- ['weapon_m110'] 		         = {['name'] = 'weapon_m110', 	 	  	        ['label'] = 'M110', 			        ['weight'] = 23000, 	['type'] = 'weapon', 	['ammotype'] = 'AMMO_SNIPER',			['image'] = '???', 	                                ['unique'] = true, 		['useable'] = false,["created"] = nil,["decay"] = 30.0,     	['description'] = 'A very accurate single-fire rifle'},
	-- ['weapon_hk416'] 		         = {['name'] = 'weapon_hk416', 	 	  	        ['label'] = 'HK-416', 			        ['weight'] = 13000, 	['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_carbinerifle.png', 	            ['unique'] = true, 		['useable'] = false,["created"] = nil,["decay"] = 30.0,     	['description'] = 'A lightweight automatic rifle'},
	-- ['weapon_ak74'] 		 		 = {['name'] = 'weapon_ak74', 	 			  	['label'] = 'AK-74', 					['weight'] = 13000, 	['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_ak74.png', 				        ['unique'] = true, 		['useable'] = false,["created"] = nil,	['description'] = 'A rapid-fire, magazine-fed automatic rifle designed for infantry use'},
	-- ['weapon_aks74'] 		 		 = {['name'] = 'weapon_aks74', 	 			  	['label'] = 'AK-S74', 					['weight'] = 13000, 	['type'] = 'weapon', 	['ammotype'] = 'AMMO_RIFLE',			['image'] = 'weapon_aks74.png', 				    ['unique'] = true, 		['useable'] = false,["created"] = nil,	['description'] = 'A rapid-fire, magazine-fed automatic rifle designed for infantry use'},
	-- ['weapon_glock18c'] 			 = {['name'] = 'weapon_glock18c', 			 	['label'] = 'Glock 18C', 				['weight'] = 7000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'glock-18c.png', 						['unique'] = true, 		['useable'] = false,["created"] = nil,	['description'] = 'semi automatic pistol'},
	-- ['weapon_glock22'] 			     = {['name'] = 'weapon_glock22', 			 	['label'] = 'Glock 22', 				['weight'] = 7000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_PISTOL',			['image'] = 'glock-22.png', 						['unique'] = true, 		['useable'] = false,["created"] = nil,	['description'] = 'pistol'},
	-- ['weapon_mp5'] 				 	 = {['name'] = 'weapon_mp5', 			 	  	['label'] = 'H&K MP5', 					['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = 'AMMO_SMG',				['image'] = 'MP5.png', 			                    ['unique'] = true, 		['useable'] = false,["created"] = nil, 	['description'] = 'A handheld lightweight machine gun'},
	-- ['weapon_karambit'] 			 = {['name'] = 'weapon_karambit', 			 	['label'] = 'Karambit', 				['weight'] = 1000, 		['type'] = 'weapon', 	['ammotype'] = nil,						['image'] = 'weapon_karambit.png', 		            ['unique'] = true, 		['useable'] = false,["created"] = nil, 	['description'] = 'A short knife with a pointed and edged blade, used as a weapon'},
		
	
     --<!>-- Essential Weapons --<!>--
	 ['weapon_m9']                       = {['name'] = 'weapon_m9',                  ['label'] = 'Beretta M9',                ['weight'] = 3000,         ['type'] = 'weapon',     ['ammotype'] = 'AMMO_PISTOL',              ['image'] = 'icon_m9a3.png',                 ['unique'] = true,         ['useable'] = false,     ['description'] = ''},
	 ['weapon_fnx45']                    = {['name'] = 'weapon_fnx45',               ['label'] = 'FN FNX-45',                 ['weight'] = 3000,         ['type'] = 'weapon',     ['ammotype'] = 'AMMO_PISTOL',              ['image'] = 'icon_fnx45.png',                ['unique'] = true,         ['useable'] = false,     ['description'] = ''},
	 ['weapon_browning']                 = {['name'] = 'weapon_browning',            ['label'] = 'Browning Hi-Power',         ['weight'] = 3000,         ['type'] = 'weapon',     ['ammotype'] = 'AMMO_PISTOL',              ['image'] = 'icon_browning.png',             ['unique'] = true,         ['useable'] = false,     ['description'] = ''},
	 ['weapon_l5']                       = {['name'] = 'weapon_l5',                  ['label'] = 'Desert Eagle',              ['weight'] = 3000,         ['type'] = 'weapon',     ['ammotype'] = 'AMMO_PISTOL',              ['image'] = 'icon_l5.png',                   ['unique'] = true,         ['useable'] = false,     ['description'] = ''},
	 ['weapon_springfield']              = {['name'] = 'weapon_springfield',         ['label'] = 'SpringField 1911',          ['weight'] = 3000,         ['type'] = 'weapon',     ['ammotype'] = 'AMMO_PISTOL',              ['image'] = 'icon_springfield.png',          ['unique'] = true,         ['useable'] = false,     ['description'] = ''},
	 ['weapon_p320b']                    = {['name'] = 'weapon_p320b',               ['label'] = 'P320 (PD Issued)',          ['weight'] = 3000,         ['type'] = 'weapon',     ['ammotype'] = 'AMMO_PISTOL',              ['image'] = 'icon_p320.png',                     ['unique'] = true,         ['useable'] = false,     ['description'] = ''},
	-- PISTOL ATTACHMENTS
	['pistol_defaultclip'] 			 = {['name'] = 'pistol_defaultclip', 			['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0, 	  ['description'] = 'Pistol Default Clip'},
	['pistol_extendedclip'] 		 = {['name'] = 'pistol_extendedclip', 			['label'] = 'Pistol EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Pistol Extended Clip'},
	['pistol_flashlight'] 			 = {['name'] = 'pistol_flashlight', 			['label'] = 'Pistol Flashlight', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_flashlight.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Pistol Flashlight Attachment'},
	['pistol_suppressor'] 			 = {['name'] = 'pistol_suppressor', 			['label'] = 'Pistol Suppressor', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Pistol Suppressor Attachment'},
	['pistol_luxuryfinish'] 	     = {['name'] = 'pistol_luxuryfinish', 			['label'] = 'Pistol Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Pistol Luxury Finish'},
	['combatpistol_defaultclip'] 	 = {['name'] = 'combatpistol_defaultclip', 		['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Combat Pistol Default Clip'},
	['combatpistol_extendedclip']    = {['name'] = 'combatpistol_extendedclip', 	['label'] = 'Pistol EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Combat Pistol Extended Clip'},
	['combatpistol_luxuryfinish'] 	 = {['name'] = 'combatpistol_luxuryfinish', 	['label'] = 'Pistol Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Combat Pistol Luxury Finish'},
	['appistol_defaultclip'] 		 = {['name'] = 'appistol_defaultclip', 			['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'APPistol Default Clip'},
	['appistol_extendedclip'] 		 = {['name'] = 'appistol_extendedclip', 		['label'] = 'Pistol EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'APPistol Extended Clip'},
	['appistol_luxuryfinish'] 	     = {['name'] = 'appistol_luxuryfinish', 		['label'] = 'Pistol Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'APPistol Luxury Finish'},
	['pistol50_defaultclip'] 		 = {['name'] = 'pistol50_defaultclip', 			['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = '.50 Pistol Default Clip'},
	['pistol50_extendedclip'] 		 = {['name'] = 'pistol50_extendedclip', 		['label'] = 'Pistol EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = '.50 Pistol Extended Clip'},
	['pistol50_luxuryfinish'] 	     = {['name'] = 'pistol50_luxuryfinish', 		['label'] = 'Pistol Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = '.50 Pistol Luxury Finish'},
	['revolver_defaultclip'] 		 = {['name'] = 'revolver_defaultclip', 			['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Revovler Default Clip'},
	['revolver_vipvariant'] 		 = {['name'] = 'revolver_vipvariant', 		    ['label'] = 'Pistol Variant', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Revovler Variant'},
	['revolver_bodyguardvariant'] 	 = {['name'] = 'revolver_bodyguardvariant', 	['label'] = 'Pistol Variant', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Revovler Variant'},
	['snspistol_defaultclip'] 		 = {['name'] = 'snspistol_defaultclip', 		['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'SNS Pistol Default Clip'},
	['snspistol_extendedclip'] 		 = {['name'] = 'snspistol_extendedclip', 		['label'] = 'Pistol EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'SNS Pistol Extended Clip'},
	['snspistol_grip'] 	             = {['name'] = 'snspistol_grip', 		        ['label'] = 'Pistol Grip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'SNS Pistol Grip Attachment'},
	['heavypistol_defaultclip'] 	 = {['name'] = 'heavypistol_defaultclip', 		['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Heavy Pistol Default Clip'},
	['heavypistol_extendedclip'] 	 = {['name'] = 'heavypistol_extendedclip', 		['label'] = 'Pistol EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Heavy Pistol Extended Clip'},
	['heavypistol_grip'] 	         = {['name'] = 'heavypistol_grip', 		        ['label'] = 'Pistol Grip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Heavy Pistol Grip Attachment'},
	['vintagepistol_defaultclip'] 	 = {['name'] = 'vintagepistol_defaultclip', 	['label'] = 'Pistol Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Vintage Pistol Default Clip'},
	['vintagepistol_extendedclip'] 	 = {['name'] = 'vintagepistol_extendedclip', 	['label'] = 'Pistol EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Vintage Pistol Default Clip'},

	-- SMG ATTACHMENTS
	['microsmg_defaultclip'] 	     = {['name'] = 'microsmg_defaultclip', 			['label'] = 'SMG Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Micro SMG Default Clip'},
	['microsmg_extendedclip'] 		 = {['name'] = 'microsmg_extendedclip', 		['label'] = 'SMG EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Micro SMG Extended Clip'},
	['microsmg_scope'] 			     = {['name'] = 'microsmg_scope', 			    ['label'] = 'SMG Scope', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_scope.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Micro SMG Scope Attachment'},
	['microsmg_luxuryfinish'] 	     = {['name'] = 'microsmg_luxuryfinish', 		['label'] = 'SMG Finish', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Micro SMG Luxury Finish'},
	['smg_defaultclip'] 	         = {['name'] = 'smg_defaultclip', 			    ['label'] = 'SMG Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'SMG Default Clip'},
	['smg_extendedclip'] 	         = {['name'] = 'smg_extendedclip', 		        ['label'] = 'SMG EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'SMG Extended Clip'},
	['smg_drum']                     = {['name'] = 'smg_drum', 	                    ['label'] = 'SMG Drum', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'SMG Drum'},
	['smg_scope'] 	                 = {['name'] = 'smg_scope', 	                ['label'] = 'SMG Scope', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_scope.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'SMG Scope Attachment'},
	['smg_luxuryfinish'] 		     = {['name'] = 'smg_luxuryfinish', 			    ['label'] = 'SMG Finish', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'SMG Luxury Finish'},
	['assaultsmg_defaultclip'] 		 = {['name'] = 'assaultsmg_defaultclip', 		['label'] = 'SMG Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Assault SMG Default Clip'},
	['assaultsmg_extendedclip'] 	 = {['name'] = 'assaultsmg_extendedclip', 		['label'] = 'SMG EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Assault SMG Extended Clip'},
	['assaultsmg_luxuryfinish']      = {['name'] = 'assaultsmg_luxuryfinish', 		['label'] = 'SMG Finish', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Assault SMG Luxury Finish'},
	['minismg_defaultclip'] 		 = {['name'] = 'minismg_defaultclip', 		    ['label'] = 'SMG Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Mini SMG Default Clip'},
	['minismg_extendedclip'] 	     = {['name'] = 'minismg_extendedclip', 		    ['label'] = 'SMG EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Mini SMG Extended Clip'},
	['machinepistol_defaultclip']    = {['name'] = 'machinepistol_defaultclip', 	['label'] = 'SMG Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Machine Pistol Default Clip'},
	['machinepistol_extendedclip']   = {['name'] = 'machinepistol_extendedclip', 	['label'] = 'SMG EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Machine Pistol Extended Clip'},
	['machinepistol_drum'] 	         = {['name'] = 'machinepistol_drum', 	        ['label'] = 'SMG Drum', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Machine Pistol Drum'},
	['combatpdw_defaultclip'] 		 = {['name'] = 'combatpdw_defaultclip', 		['label'] = 'SMG Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Combat PDW Default Clip'},
	['combatpdw_extendedclip'] 		 = {['name'] = 'combatpdw_extendedclip', 		['label'] = 'SMG EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Combat PDW Extended Clip'},
	['combatpdw_drum'] 	             = {['name'] = 'combatpdw_drum', 		        ['label'] = 'SMG Drum', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, 	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Combat PDW Drum'},
	['combatpdw_grip'] 	             = {['name'] = 'combatpdw_grip', 				['label'] = 'SMG Grip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Combat PDW Grip Attachment'},
	['combatpdw_scope'] 	         = {['name'] = 'combatpdw_scope', 				['label'] = 'SMG Scope', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_scope.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Combat PDW Scope Attachment'},

	-- SHOTGUN ATTACHMENTS
	['shotgun_suppressor'] 	         = {['name'] = 'shotgun_suppressor', 			['label'] = 'Shotgun Suppressor', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Shotgun Suppressor Attachment'},
	['pumpshotgun_luxuryfinish'] 	 = {['name'] = 'pumpshotgun_luxuryfinish', 		['label'] = 'Shotgun Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Pump Shotgun Luxury Finish'},
	['sawnoffshotgun_luxuryfinish']  = {['name'] = 'sawnoffshotgun_luxuryfinish', 	['label'] = 'Shotgun Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Sawn Off Shotgun Luxury Finish'},
	['assaultshotgun_defaultclip'] 	 = {['name'] = 'assaultshotgun_defaultclip', 	['label'] = 'Shotgun Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Assault Shotgun Default Clip'},
	['assaultshotgun_extendedclip']  = {['name'] = 'assaultshotgun_extendedclip', 	['label'] = 'Shotgun EXT Clip', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Assault Shotgun Extended Clip'},
	['heavyshotgun_defaultclip'] 	 = {['name'] = 'heavyshotgun_defaultclip', 		['label'] = 'Shotgun Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Heavy Shotgun Default Clip'},
	['heavyshotgun_extendedclip']    = {['name'] = 'heavyshotgun_extendedclip', 	['label'] = 'Shotgun EXT Clip', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Heavy Shotgun Extended Clip'},
	['heavyshotgun_drum'] 	         = {['name'] = 'heavyshotgun_drum', 	        ['label'] = 'Shotgun Drum', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Heavy Shotgun Drum'},

	-- RIFLE ATTACHMENTS
	['assaultrifle_defaultclip'] 	 = {['name'] = 'assaultrifle_defaultclip', 		['label'] = 'Rifle Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Assault Rifle Default Clip'},
	['assaultrifle_extendedclip']    = {['name'] = 'assaultrifle_extendedclip', 	['label'] = 'Rifle EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Assault Rifle Extended Clip'},
	['assaultrifle_drum'] 			 = {['name'] = 'assaultrifle_drum', 			['label'] = 'Rifle Drum', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Assault Rifle Drum'},
	['rifle_flashlight'] 	         = {['name'] = 'rifle_flashlight', 		        ['label'] = 'Rifle Flashlight', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_flashlight.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Rifle Flashlight Attachment'},
	['rifle_grip'] 	                 = {['name'] = 'rifle_grip', 			        ['label'] = 'Rifle Grip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Rifle Grip Attachment'},
	['rifle_suppressor'] 	         = {['name'] = 'rifle_suppressor', 		        ['label'] = 'Rifle Suppressor', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Rifle Suppressor Attachment'},
	['assaultrifle_luxuryfinish'] 	 = {['name'] = 'assaultrifle_luxuryfinish',     ['label'] = 'Rifle Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Assault Rifle Luxury Finish'},
	['carbinerifle_defaultclip']     = {['name'] = 'carbinerifle_defaultclip', 	    ['label'] = 'Rifle Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Carbine Rifle Default Clip'},
	['carbinerifle_extendedclip'] 	 = {['name'] = 'carbinerifle_extendedclip', 	['label'] = 'Rifle EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Carbine Rifle Extended Clip'},
	['carbinerifle_drum'] 		     = {['name'] = 'carbinerifle_drum', 			['label'] = 'Rifle Drum', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Carbine Rifle Drum'},
	['carbinerifle_scope'] 		     = {['name'] = 'carbinerifle_scope', 		    ['label'] = 'Rifle Scope', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_scope.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Carbine Rifle Scope'},
	['carbinerifle_luxuryfinish'] 	 = {['name'] = 'carbinerifle_luxuryfinish', 	['label'] = 'Rifle Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Carbine Rifle Luxury Finish'},
	['advancedrifle_defaultclip']    = {['name'] = 'advancedrifle_defaultclip', 	['label'] = 'Rifle Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Advanced Rifle Default Clip'},
	['advancedrifle_extendedclip'] 	 = {['name'] = 'advancedrifle_extendedclip',    ['label'] = 'Rifle EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Advanced Rifle Extended Clip'},
	['advancedrifle_luxuryfinish'] 	 = {['name'] = 'advancedrifle_luxuryfinish', 	['label'] = 'Rifle Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Advanced Rifle Luxury Finish'},
	['specialcarbine_defaultclip']   = {['name'] = 'specialcarbine_defaultclip', 	['label'] = 'Rifle Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Special Carbine Default Clip'},
	['specialcarbine_extendedclip']  = {['name'] = 'specialcarbine_extendedclip', 	['label'] = 'Rifle EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Special Carbine Extended Clip'},
	['specialcarbine_drum'] 	     = {['name'] = 'specialcarbine_drum', 	        ['label'] = 'Rifle Drum', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, 	["created"] = nil, 	["decay"] = 15.0,    ['description'] = 'Special Carbine Drum'},
	['specialcarbine_luxuryfinish']  = {['name'] = 'specialcarbine_luxuryfinish', 	['label'] = 'Rifle Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Special Carbine Luxury Finish'},
	['bullpuprifle_defaultclip']     = {['name'] = 'bullpuprifle_defaultclip', 		['label'] = 'Rifle Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Bullpup Rifle Default Clip'},
	['bullpuprifle_extendedclip'] 	 = {['name'] = 'bullpuprifle_extendedclip', 	['label'] = 'Rifle EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Bullpup Rifle Extended Clip'},
	['bullpuprifle_luxuryfinish'] 	 = {['name'] = 'bullpuprifle_luxuryfinish', 	['label'] = 'Rifle Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Bullpup Rifle Luxury Finish'},
	['compactrifle_defaultclip'] 	 = {['name'] = 'compactrifle_defaultclip', 		['label'] = 'Rifle Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Compact Rifle Default Clip'},
	['compactrifle_extendedclip'] 	 = {['name'] = 'compactrifle_extendedclip', 	['label'] = 'Rifle EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Compact Rifle Extended Clip'},
	['compactrifle_drum'] 	         = {['name'] = 'compactrifle_drum', 		    ['label'] = 'Rifle Drum', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_drummag.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Compact Rifle Drum'},
	['gusenberg_defaultclip'] 	     = {['name'] = 'gusenberg_defaultclip', 		['label'] = 'Rifle Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Gusenberg Default Clip'},
	['gusenberg_extendedclip'] 	     = {['name'] = 'gusenberg_extendedclip', 		['label'] = 'Rifle EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Gusenberg Extended Clip'},

	-- SNIPER ATTACHMENTS
	['sniperrifle_defaultclip'] 	 = {['name'] = 'sniperrifle_defaultclip', 		['label'] = 'Sniper Suppressor', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Sniper Rifle Default Clip'},
	['sniper_scope'] 	             = {['name'] = 'sniper_scope', 		            ['label'] = 'Sniper Scope', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_scope.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Sniper Rifle Scope Attachment'},
	['snipermax_scope']              = {['name'] = 'snipermax_scope', 	            ['label'] = 'Sniper Max Scope', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_scope.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Sniper Rifle Max Scope Attachment'},
	['sniper_grip'] 	             = {['name'] = 'sniper_grip', 	                ['label'] = 'Sniper Grip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Sniper Rifle Grip Attachment'},
	['heavysniper_defaultclip']      = {['name'] = 'heavysniper_defaultclip', 	    ['label'] = 'Sniper Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Heavy Sniper Default Clip'},
	['marksmanrifle_defaultclip'] 	 = {['name'] = 'marksmanrifle_defaultclip', 	['label'] = 'Sniper Clip', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Marksman Rifle Default Clip'},
	['marksmanrifle_extendedclip']   = {['name'] = 'marksmanrifle_extendedclip', 	['label'] = 'Sniper EXT Clip', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_extendedclip.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Marksman Rifle Extended Clip'},
	['marksmanrifle_scope'] 	     = {['name'] = 'marksmanrifle_scope', 	        ['label'] = 'Sniper Scope', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'smg_scope.png', 			['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Marksman Rifle Scope Attachment'},
	['marksmanrifle_luxuryfinish'] 	 = {['name'] = 'marksmanrifle_luxuryfinish', 	['label'] = 'Sniper Finish', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pistol_suppressor.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Marksman Rifle Luxury Finish'},

	-- Weapon Tints
	['weapontint_black']             = {['name'] = 'weapontint_black', 	            ['label'] = 'Default Tint', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_black.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Default/Black Weapon Tint'},
	['weapontint_green'] 	         = {['name'] = 'weapontint_green', 	            ['label'] = 'Green Tint', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_green.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Green Weapon Tint'},
	['weapontint_gold']      		 = {['name'] = 'weapontint_gold', 	    		['label'] = 'Gold Tint', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_gold.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Gold Weapon Tint'},
	['weapontint_pink'] 	 		 = {['name'] = 'weapontint_pink', 				['label'] = 'Pink Tint', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_pink.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Pink Weapon Tint'},
	['weapontint_army']   			 = {['name'] = 'weapontint_army', 				['label'] = 'Army Tint', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_army.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Army Weapon Tint'},
	['weapontint_lspd'] 	     	 = {['name'] = 'weapontint_lspd', 	        	['label'] = 'LSPD Tint', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_lspd.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'LSPD Weapon Tint'},
	['weapontint_orange'] 	 		 = {['name'] = 'weapontint_orange', 			['label'] = 'Orange Tint', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_orange.png', 	['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,     ['description'] = 'Orange Weapon Tint'},
	['weapontint_plat'] 	 		 = {['name'] = 'weapontint_plat', 				['label'] = 'Platinum Tint', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'weapontint_plat.png', 		['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,  	  ['description'] = 'Platinum Weapon Tint'},

	-- ITEMS
	-- Ammo ITEMS
	['pistol_ammo'] 				 = {['name'] = 'pistol_ammo', 			  	  	['label'] = 'Pistol ammo', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'pistol_ammo.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,  	     ['description'] = 'Ammo for Pistols'},
	['rifle_ammo'] 				 	 = {['name'] = 'rifle_ammo', 			  	  	['label'] = 'Rifle ammo', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rifle_ammo.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,  	     ['description'] = 'Ammo for Rifles'},
	['smg_ammo'] 				 	 = {['name'] = 'smg_ammo', 			  	  		['label'] = 'SMG ammo', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'smg_ammo.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,  	     ['description'] = 'Ammo for Sub Machine Guns'},
	['shotgun_ammo'] 				 = {['name'] = 'shotgun_ammo', 			  	  	['label'] = 'Shotgun ammo', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'shotgun_ammo.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,  	     ['description'] = 'Ammo for Shotguns'},
	['mg_ammo'] 				 	 = {['name'] = 'mg_ammo', 			  	  		['label'] = 'MG ammo', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'mg_ammo.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,  	     ['description'] = 'Ammo for Machine Guns'},
	['snp_ammo'] 				 	 = {['name'] = 'snp_ammo', 			  	  		['label'] = 'Sniper ammo', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'snp_ammo.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,  	     ['description'] = 'Ammo for Sniper Rifles'},
	['emp_ammo']			         = {['name'] = 'emp_ammo', 			  	        ['label'] = 'EMP Ammo', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'emp_ammo.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,	["created"] = nil, 	["decay"] = 15.0,  	     ['description'] = 'Ammo for EMP Launcher'},
	["taserammo"]                    = {["name"] = "taserammo",                     ["label"] = "Taser Cartridges",         ["weight"] = 3000,      ["type"] = "item",      ["image"] = "taserammo.png",              ["unique"] = false,        ["useable"] = true,        ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "No More Spamming. lul"},  
	-- Card ITEMS
	['id_card'] 					 = {['name'] = 'id_card', 			 	  	  	['label'] = 'ID Card', 					['weight'] = 0, 		['type'] = 'item', 		['image'] = 'id_card.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,  	   ['description'] = 'A card containing all your information to identify yourself'},
	['driver_license'] 				 = {['name'] = 'driver_license', 			  	['label'] = 'Drivers License', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'driver_license.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,  	   ['description'] = 'Permit to show you can drive a vehicle'},
	['lawyerpass'] 					 = {['name'] = 'lawyerpass', 			 	  	['label'] = 'Lawyer Pass', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'lawyerpass.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,  	   ['description'] = 'Pass exclusive to lawyers to show they can represent a suspect'},
	['weaponlicense'] 				 = {['name'] = 'weaponlicense',				    ['label'] = 'Weapon License',			['weight'] = 0,			['type'] = 'item',		['image'] = 'weaponlicense.png',		['unique'] = true,		['useable'] = true,		['shouldClose'] = true,    ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0, 	   ['description'] = 'Weapon License'},
	['visa'] 					 	 = {['name'] = 'visa', 			 	  	  		['label'] = 'Visa Card', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'visacard.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,  	   ['description'] = 'Visa can be used via ATM'},
	['mastercard'] 					 = {['name'] = 'mastercard', 					['label'] = 'Master Card', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'mastercard.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,  	   ['description'] = 'MasterCard can be used via ATM'},
	['security_card_01'] 			 = {['name'] = 'security_card_01', 			  	['label'] = 'Security Card A', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'security_card_01.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,  	   ['description'] = 'A security card... I wonder what it goes to'},
	['security_card_02'] 			 = {['name'] = 'security_card_02', 			  	['label'] = 'Security Card B', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'security_card_02.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,  	   ['description'] = 'A security card... I wonder what it goes to'},
	['security_card_03'] 			 = {['name'] = 'security_card_03', 			  	['label'] = 'Security Card C', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'security_card_03.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 1.0,  	   ['description'] = 'A security card... I wonder what it goes to'},
    ['vpn']                          = { ['name'] = 'vpn',                          ['label'] = 'VPN',                      ['weight'] = 100,       ['type'] = 'item', ['image'] = 'vpn.png',['unique'] = true, ['useable'] = false, ['shouldClose'] = true, ["combinable"] = nil, ["decay"] = 3.0, ['description'] = "Hmm", },
	
	-- Essential Atms
	["fleecaphone"] 			     = {["name"] = "fleecaphone", 			 	    ["label"] = "Fleeca Phone", 		    ["weight"] = 100, 		["type"] = "item", 		["image"] = "fleecaphone.png", 				["unique"] = true, 		["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A Phone That Is Used To Take Calls At Fleeca Bank.."},
	["blankfleecacard"] 			 = {["name"] = "blankfleecacard", 			 	["label"] = "<span style='color:red'>Blank Fleeca Bank Card</span>",   ["weight"] = 100, 		["type"] = "item", 		["image"] = "fleecacard.png", 				["unique"] = true, 		["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A Blank Card Belonging To Fleeca Bank.."},
	['security_card_04'] 			 = {['name'] = 'security_card_04', 			  	['label'] = 'Black Security Card', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'security_card_04.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A black security card.'},

	-- Ems Bag
	["emsbag"]   	                 = {["name"] = "emsbag", 		                ["label"] = "EMS Utility Bag",          ["weight"] = 150, 		["type"] = "item", 		["image"] = "emsbag.png", 			["unique"] = false,   	["useable"] = true,    ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
    ["bodycam"] 			         = {["name"] = "bodycam", 				        ["label"] = "BodyCam (PD Issued)", 		["weight"] = 500, 		["type"] = "item", 		["image"] = "bodycam.png", ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   	["combinable"] = nil,   ["description"] = "Capture Live Events.."},
	
	-- Eat ITEMS
	['tosti'] 						 = {['name'] = 'tosti', 			 	  	  	['label'] = 'Snickels', 	        ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'tosti.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,	["created"] = nil,	["decay"] = 3.0,	['description'] = 'Chocolate Peanut Butter Bar'},
	['twerks_candy'] 				 = {['name'] = 'twerks_candy', 			  	  	['label'] = 'Twerks', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'twerks_candy.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 3.0,    ['description'] = 'Some delicious candy :O'},
	['snikkel_candy'] 				 = {['name'] = 'snikkel_candy', 			  	['label'] = 'Snikkel', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'snikkel_candy.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 3.0,    ['description'] = 'Some delicious candy :O'},
	['hotdog'] 				 	     = {['name'] = 'hotdog', 			  	  		['label'] = 'Hotdog', 				    ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'sandwich.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 3.0,    ['description'] = 'Nice bread for your stomach'},

	-- Drink ITEMS
	['water_bottle'] 				 = {['name'] = 'water_bottle', 			  	  	['label'] = 'Bottle of Water', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'water_bottle.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 3.0,   ['description'] = 'For all the thirsty out there'},
	['coffee'] 				 		 = {['name'] = 'coffee', 			  	  		['label'] = 'Coffee', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'coffee.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 3.0,   ['description'] = 'Pump 4 Caffeine'},
	['kurkakola'] 				 	 = {['name'] = 'kurkakola', 			  	  	['label'] = 'Cola', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'cola.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 3.0,   ['description'] = 'For all the thirsty out there'},

	-- Alcohol
	['beer'] 				 		 = {['name'] = 'beer', 			  	  			['label'] = 'Beer', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'beer.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 3.0,   ['description'] = 'Nothing like a good cold beer!'},
	['whiskey'] 				 	 = {['name'] = 'whiskey', 			  	  		['label'] = 'Whiskey', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'whiskey.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 3.0,   ['description'] = 'For all the thirsty out there'},
	['vodka'] 				 		 = {['name'] = 'vodka', 			  	  		['label'] = 'Vodka', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'vodka.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, 	["created"] = nil,	["decay"] = 3.0,  ['description'] = 'For all the thirsty out there'},
	['grape'] 					 	 = {['name'] = 'grape', 						['label'] = 'Grape', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'grape.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,	["created"] = nil,	["decay"] = 3.0,   ['description'] = 'Mmmmh yummie, grapes'},
	['wine'] 					 	 = {['name'] = 'wine', 							['label'] = 'Wine', 					['weight'] = 300, 		['type'] = 'item', 		['image'] = 'wine.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,	["created"] = nil,	["decay"] = 3.0,   ['description'] = 'Some good wine to drink on a fine evening'},
	['grapejuice'] 					 = {['name'] = 'grapejuice', 					['label'] = 'Grape Juice', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'grapejuice.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil, 	["created"] = nil,	["decay"] = 3.0,  ['description'] = 'Grape juice is said to be healthy'},


	-- Oxy Run Items

	["bands"] 					     = {["name"] = "bands", 			 	        ["label"] = "Band Of Notes", 		    ["weight"] = 100, 		["type"] = "item", 		["image"] = "cashstack.png", 	     	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A band of small notes.."},
    ["rolls"] 					     = {["name"] = "rolls", 			 	        ["label"] = "Roll Of Small Notes", 	    ["weight"] = 100, 		["type"] = "item", 		["image"] = "cashroll.png", 		    ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A roll of small notes.."},
    ["package"] 					 = {["name"] = "package", 			 	        ["label"] = "Suspicious Package",       ["weight"] = 10000, 	["type"] = "item", 		["image"] = "package.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A mysterious package.. Scary!"},
	
    -- Crates

	['case_recoil'] 			 = {['name'] = 'case_recoil', 				['label'] = 'Recoil Case', 				['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'case_recoil.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A prize awaits inside.'},
    ['case_prisma2'] 			 = {['name'] = 'case_prisma2', 				['label'] = 'Prisma 2 Case', 				['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'case_recoil.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A prize awaits inside.'},

	-- Fuel

	["syphoningkit"]				 = {["name"] = "syphoningkit", 					["label"] = "Syphoning Kit", 			["weight"] = 5000, 		["type"] = "item", 		["image"] = "syphoningkit.png", 		["unique"] = true, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A kit made to siphon gasoline from vehicles."},
	["jerrycan"]				 	 = {["name"] = "jerrycan", 						["label"] = "Jerry Can", 				["weight"] = 15000, 	["type"] = "item", 		["image"] = "jerrycan.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A Jerry Can made to hold gasoline."},
	
	-- Seed And Weed
	['weed_white-widow'] 			 = {['name'] = 'weed_white-widow', 			 	['label'] = 'White Widow 2g', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'weed_baggy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'A weed bag with 2g White Widow'},
	['weed_skunk'] 				  	 = {['name'] = 'weed_skunk', 			 		['label'] = 'Skunk 2g', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'weed_baggy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'A weed bag with 2g Skunk'},
	['weed_purple-haze'] 			 = {['name'] = 'weed_purple-haze', 			 	['label'] = 'Purple Haze 2g', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'weed_baggy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'A weed bag with 2g Purple Haze'},
	['weed_og-kush'] 				 = {['name'] = 'weed_og-kush', 			 		['label'] = 'OGKush 2g', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'weed_baggy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'A weed bag with 2g OG Kush'},
	['weed_amnesia'] 				 = {['name'] = 'weed_amnesia', 			 		['label'] = 'Amnesia 2g', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'weed_baggy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'A weed bag with 2g Amnesia'},
	['weed_ak47'] 				     = {['name'] = 'weed_ak47', 			 		['label'] = 'AK47 2g', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'weed_baggy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'A weed bag with 2g AK47'},
	['weed_white-widow_seed'] 		 = {['name'] = 'weed_white-widow_seed', 		['label'] = 'White Widow Seed', 		['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weed_seed.png', 		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = false,   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'A weed seed of White Widow'},
	['weed_skunk_seed'] 			 = {['name'] = 'weed_skunk_seed', 			    ['label'] = 'Skunk Seed', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weed_seed.png', 		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'A weed seed of Skunk'},
	['weed_purple-haze_seed'] 		 = {['name'] = 'weed_purple-haze_seed', 		['label'] = 'Purple Haze Seed', 		['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weed_seed.png', 		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'A weed seed of Purple Haze'},
	['weed_og-kush_seed'] 			 = {['name'] = 'weed_og-kush_seed', 			['label'] = 'OGKush Seed', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weed_seed.png', 		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'A weed seed of OG Kush'},
	['weed_amnesia_seed'] 			 = {['name'] = 'weed_amnesia_seed', 			['label'] = 'Amnesia Seed', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weed_seed.png', 		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'A weed seed of Amnesia'},
	['weed_ak47_seed'] 				 = {['name'] = 'weed_ak47_seed', 			    ['label'] = 'AK47 Seed', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weed_seed.png', 		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'A weed seed of AK47'},
	['empty_weed_bag'] 				 = {['name'] = 'empty_weed_bag', 			    ['label'] = 'Empty Weed Bag', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weed_baggy_empty.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'A small empty bag'},
	['weed_nutrition'] 				 = {['name'] = 'weed_nutrition', 			    ['label'] = 'Plant Fertilizer', 		['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'weed_nutrition.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Plant nutrition'},

	-- Material
	['plastic'] 					 = {['name'] = 'plastic', 			  	  	  	['label'] = 'Plastic', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'plastic.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'RECYCLE! - Greta Thunberg 2019'},
	['metalscrap'] 					 = {['name'] = 'metalscrap', 			  	  	['label'] = 'Metal Scrap', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'metalscrap.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'You can probably make something nice out of this'},
	['copper'] 					 	 = {['name'] = 'copper', 			  	  		['label'] = 'Copper', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'copper.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Nice piece of metal that you can probably use for something'},
	['aluminum'] 					 = {['name'] = 'aluminum', 			  	  		['label'] = 'Aluminium', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'aluminum.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Nice piece of metal that you can probably use for something'},
	['aluminumoxide'] 				 = {['name'] = 'aluminumoxide', 			  	['label'] = 'Aluminium Powder', 		['weight'] = 100, 		['type'] = 'item', 		['image'] = 'aluminumoxide.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil, 	["created"] = nil,	["decay"] = 15.0,  ['description'] = 'Some powder to mix with'},
	['iron'] 				 	     = {['name'] = 'iron', 			  				['label'] = 'Iron', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'iron.png', 			    ['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Handy piece of metal that you can probably use for something'},
	['ironoxide'] 				 	 = {['name'] = 'ironoxide', 			  		['label'] = 'Iron Powder', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'ironoxide.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = {accept = {'aluminumoxide'}, reward = 'thermite', anim = {['dict'] = 'anim@amb@business@weed@weed_inspecting_high_dry@', ['lib'] = 'weed_inspecting_high_base_inspector', ['text'] = 'Mixing powder..', ['timeOut'] = 10000}},	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Some powder to mix with.'},
	['steel'] 				 	 	 = {['name'] = 'steel', 			  			['label'] = 'Steel', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'steel.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Nice piece of metal that you can probably use for something'},
	['rubber'] 				 	 	 = {['name'] = 'rubber', 			  			['label'] = 'Rubber', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'rubber.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Rubber, I believe you can make your own rubber ducky with it :D'},
	['glass'] 				 	 	 = {['name'] = 'glass', 			  			['label'] = 'Glass', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'glass.png', 			    ['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'It is very fragile, watch out'},

	-- Tools
	['lockpick'] 					 = {['name'] = 'lockpick', 			 	  	  	['label'] = 'Lockpick', 			    ['weight'] = 500, 		['type'] = 'item', 		['image'] = 'lockpick.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,    ['description'] = 'Very useful if you lose your keys a lot.. or if you want to use it for something else...'},
	['advancedlockpick'] 			 = {['name'] = 'advancedlockpick', 			 	['label'] = 'Advanced Lockpick', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'advancedlockpick.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'If you lose your keys a lot this is very useful... Also useful to open your beers'},
	['electronickit'] 				 = {['name'] = 'electronickit', 			  	['label'] = 'Electronic Kit', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'electronickit.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = {accept = {'gatecrack'}, reward = 'trojan_usb', anim = nil},	["created"] = nil,	["decay"] = 15.0, ['description'] = 'If you\'ve always wanted to build a robot you can maybe start here. Maybe you\'ll be the new Elon Musk?'},
	['gatecrack'] 				 	 = {['name'] = 'gatecrack', 			  	  	['label'] = 'Gatecrack', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'usb_device.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Handy software to tear down some fences'},
	['thermite'] 			 	 	 = {['name'] = 'thermite', 			  			['label'] = 'Thermite', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'thermite.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Sometimes you\'d wish for everything to burn'},
	['trojan_usb'] 				 	 = {['name'] = 'trojan_usb', 			  	  	['label'] = 'Trojan USB', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'usb_device.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Handy software to shut down some systems'},
	['screwdriverset'] 				 = {['name'] = 'screwdriverset', 			    ['label'] = 'Toolkit', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'screwdriverset.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Very useful to screw... screws...'},
	['drill'] 				 		 = {['name'] = 'drill', 			    		['label'] = 'Drill', 					['weight'] = 20000, 	['type'] = 'item', 		['image'] = 'drill.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'The real deal...'},
    ['safecracker']                   = {['name'] = 'safecracker', 			    	['label'] = 'SafeCraker', 				['weight'] = 20000, 	['type'] = 'item', 		['image'] = 'safecrack.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Tool used to crack safes...'},
	-- Vehicle Tools
	['nitrous'] 				 	 = {['name'] = 'nitrous', 			  	  		['label'] = 'Nitrous', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'nitrous.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Speed up, gas pedal! :D'},
	['repairkit'] 					 = {['name'] = 'repairkit', 			 	  	['label'] = 'Repairkit', 				['weight'] = 2500, 		['type'] = 'item', 		['image'] = 'repairkit.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'A nice toolbox with stuff to repair your vehicle'},
	['advancedrepairkit'] 			 = {['name'] = 'advancedrepairkit', 			['label'] = 'Advanced Repairkit', 		['weight'] = 4000, 		['type'] = 'item', 		['image'] = 'advancedkit.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'A nice toolbox with stuff to repair your vehicle'},
	['cleaningkit'] 				 = {['name'] = 'cleaningkit', 			 	  	['label'] = 'Cleaning Kit', 			['weight'] = 250, 		['type'] = 'item', 		['image'] = 'cleaningkit.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'A microfiber cloth with some soap will let your car sparkle again!'},
	['tunerlaptop'] 				 = {['name'] = 'tunerlaptop', 			    	['label'] = 'Tunerchip', 				['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'tunerchip.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'With this tunerchip you can get your car on steroids... If you know what you\'re doing'},
	['harness'] 				 	 = {['name'] = 'harness', 			  	  		['label'] = 'Race Harness', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'harness.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Racing Harness so no matter what you stay in the car'},
    ['jerry_can'] 			 		 = {['name'] = 'jerry_can', 					['label'] = 'Jerrycan 20L', 			['weight'] = 20000, 	['type'] = 'item', 		['image'] = 'jerry_can.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'A can full of Fuel'},

     -- Starter Gift (change the name to something better, i was just too lazy to change it from testing)
	["giftbox"]                      = {["name"] = "giftbox",                       ["label"] = "Gift Box",                 ["weight"] = 7000,      ["type"] = "item",      ["image"] = "startergift.png",          ["unique"] = true,      ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Welcome To Essential! Here's a little gift for being new to the city :)"},
	["boombox"] 			     	 = {["name"] = "boombox", 						["label"] = "Boombox", 					["weight"] = 5000, 		["type"] = "item", 		["image"] = "boombox.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Play some music anywhere."},

	["present"] 					 = {["name"] = "present", 			  			["label"] = "Welcome Box", 				["weight"] = 10, 		["type"] = "item", 		["image"] = "present.png", 		        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Welcome open for a little suprise"},
    -- Bodycam
	["printerdoc"] 			 		 = {["name"] = "printerdoc", 			  		["label"] = "printerdoc", 			    ["weight"] = 0, 	    ["type"] = "item", 	    ["image"] = "printerdoc.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "Bodycam For Recording"},

	--Clothing Items
	['mask']                         = {['name'] = 'mask',                          ['label'] = 'Mask',                     ['weight'] = 0,         ['type'] = 'item',      ['image'] = 'mask.png',                 ['unique'] = true,      ['useable'] = true,     ['shouldClose'] = true,     ['combinable'] = nil,  ['description'] = ''},

    --- ps-weedplanting
['weedplant_seedm'] 			     = {['name'] = 'weedplant_seedm', 			    ['label'] = 'Male Weed Seed', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weedplant_seed.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Male Weed Seed'},
['weedplant_seedf'] 			     = {['name'] = 'weedplant_seedf', 			    ['label'] = 'Female Weed Seed', 		['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weedplant_seed.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Female Weed Seed'},
['weedplant_branch'] 			     = {['name'] = 'weedplant_branch', 			    ['label'] = 'Weed Branch', 				['weight'] = 10000, 	['type'] = 'item', 		['image'] = 'weedplant_branch.png', 	['unique'] = true, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Weed plant'},
['weedplant_weed'] 		     	     = {['name'] = 'weedplant_weed', 			    ['label'] = 'Dried Weed', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'weedplant_weed.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Weed ready for packaging'},
['weedplant_packedweed'] 		     = {['name'] = 'weedplant_packedweed', 			['label'] = 'Packed Weed', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'weedplant_weed.png', 		['unique'] = true, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Weed ready for sale'},
['weedplant_package'] 			     = {['name'] = 'weedplant_package', 			['label'] = 'Suspicious Package', 		['weight'] = 10000, 	['type'] = 'item', 		['image'] = 'weedplant_package.png', 	['unique'] = true, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Suspicious Package'},
['plant_tub'] 			             = {['name'] = 'plant_tub', 			        ['label'] = 'Plant Tub', 		     	['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'plant_tub.png', 		    ['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Pot for planting plants'},
['empty_watering_can'] 			     = {['name'] = 'empty_watering_can', 			['label'] = 'Empty Watering Can', 		['weight'] = 500, 		['type'] = 'item', 		['image'] = 'watering_can.png', 	    ['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Empty watering can'},
['full_watering_can'] 			     = {['name'] = 'full_watering_can', 			['label'] = 'Full Watering Can', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'watering_can.png', 	    ['unique'] = true, 	    ['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Watering can filled with water for watering plants'},
["keya"]                             = {["name"] = "keya",                          ["label"] = "Labkey A",                 ["weight"] = 0,         ["type"] = "item",      ["image"] = "keya.png",                 ["unique"] = true,      ["useable"] = false,    ["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Labkey A.."},



	--Jewelry Robbery Items
  
	["purplelaptop"] 			     = {["name"] = "purplelaptop", 			  		["label"] = "Purple Laptop", 			["weight"] = 15000, 		["type"] = "item", 		["image"] = "laptop_purple.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   		["combinable"] = nil,   ["description"] = "A security Laptop"},
	["purpleusb"] 			 		 = {["name"] = "purpleusb", 			  		["label"] = "Purple USB", 				["weight"] = 10000, 		["type"] = "item", 		["image"] = "usb_pink.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   		["combinable"] = nil,   ["description"] = "Possibly Can Be Traded"},
	["warehouseusb"] 			     = {["name"] = "warehouseusb", 			  		["label"] = "USB", 				        ["weight"] = 10000, 		["type"] = "item", 		["image"] = "warehouse.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   		["combinable"] = nil,   ["description"] = "An Unknown USB"},
	['unmarkedsimcard'] 			 = {['name'] = 'unmarkedsimcard', 			  	['label'] = "<span style='color:red'>Unmarked SIM</span>", 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'simcard.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'An unmarked SIM Card'},
	
	-- Medication
	['gauze'] 				 		 = {['name'] = 'gauze',				    		['label'] = 'Gauze',			        ['weight'] = 500,		['type'] = 'item',		['image'] = 'gauze.png',				['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil, ["created"] = nil,                 ["decay"] = 7.0,   ['description'] = 'You might need this!'},
	['firstaid'] 			 		 = {['name'] = 'firstaid', 						['label'] = 'First Aid Kit', 			['weight'] = 2500, 		['type'] = 'item', 		['image'] = 'firstaidkit.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 7.0,   ['description'] = 'You can use this First Aid kit to get people back on their feet'},
	['bandage'] 			 		 = {['name'] = 'bandage', 						['label'] = 'Bandages', 			    ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'bandage.png', 			    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,	["created"] = nil,	["decay"] = 7.0,   ['description'] = 'Heals Wounds and Reduces Bleeding'},
    ['ifaks']                        = {['name'] = 'ifaks',                         ['label'] = 'IFAKS (PD Issued)',        ['weight'] = 200,       ['type'] = 'item',      ['image'] = 'ifaks.png',                ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,	["created"] = nil,	["decay"] = 7.0,   ['description'] = 'ifaks for healing and a complete stress remover.'},
	['painkillers'] 			 	 = {['name'] = 'painkillers', 					['label'] = 'Painkillers', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'painkillers.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,	["created"] = nil,	["decay"] = 7.0,   ['description'] = 'For pain you can\'t stand anymore, take this pill that\'d make you feel great again'},
	['walkstick'] 				 	 = {['name'] = 'walkstick', 			  	  	['label'] = 'Walking Stick', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'walkstick.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 7.0,   ['description'] = 'Walking stick for ya\'ll grannies out there.. HAHA'},
    ['oxy'] 				 		 = {['name'] = 'oxy',				    		['label'] = 'Oxy',			            ['weight'] = 0,			['type'] = 'item',		['image'] = 'oxy.png',					['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil, ["created"] = nil,                 ["decay"] = 55.0,   ['description'] = 'The Label Has Been Ripped Off'},
	-- Communication
	['phone'] 			 	 	 	 = {['name'] = 'phone', 			  			['label'] = 'Phone', 					['weight'] = 700, 		['type'] = 'item', 		['image'] = 'phone.png', 				['unique'] = true, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,	["created"] = nil,	["decay"] = 20.0,   ['description'] = 'Neat phone ya got there'},
	['radio'] 			 	 		 = {['name'] = 'radio', 			  			['label'] = 'Radio', 					['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'radio.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 20.0,   ['description'] = 'You can communicate with this through a signal'},
	['iphone'] 				 	 	 = {['name'] = 'iphone', 			  	  		['label'] = 'iPhone', 				    ['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'iphone.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 20.0,   ['description'] = 'Very expensive phone'},
	['samsungphone'] 				 = {['name'] = 'samsungphone', 			  	  	['label'] = 'Samsung S10', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'samsungphone.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 20.0,   ['description'] = 'Very expensive phone'},
	['laptop'] 				 		 = {['name'] = 'laptop', 			  	  		['label'] = 'Laptop', 					['weight'] = 4000, 		['type'] = 'item', 		['image'] = 'laptop.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 20.0,   ['description'] = 'Expensive laptop'},
	['tablet'] 				 		 = {['name'] = 'tablet', 			  	  		['label'] = 'Tablet', 					['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'tablet.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 20.0,   ['description'] = 'Expensive tablet'},
	['fitbit'] 			 	 	 	 = {['name'] = 'fitbit', 			  			['label'] = 'Fitbit', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'fitbit.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,	["created"] = nil,	["decay"] = 20.0,   ['description'] = 'I like fitbit'},
    ['radioscanner'] 			 	 = {['name'] = 'radioscanner', 			  		['label'] = 'Radio Scanner', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'radioscanner.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,	["created"] = nil,	["decay"] = 20.0,   ['description'] = 'With this you can get some police alerts. Not 100% effective however'},
	['pinger'] 			 			 = {['name'] = 'pinger', 						['label'] = 'Pinger', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pinger.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 20.0,   ['description'] = 'With a pinger and your phone you can send out your location'},
    ['cryptostick'] 			 	 = {['name'] = 'cryptostick', 			  		['label'] = 'Crypto Stick', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'cryptostick.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,	["created"] = nil,	["decay"] = 20.0,   ['description'] = 'Why would someone ever buy money that doesn\'t exist.. How many would it contain..?'},

	["gift"]                          = {["name"] = "gift",                         ["label"] = "Gift Box",                 ["weight"] = 0,       ["type"] = "item",         ["image"] = "gift.png",                 ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Welcome to the city! Here's a gift to start you off!"},
	-- Theft and Jewelry
	['rolex'] 				 	 	 = {['name'] = 'rolex', 			  	  		['label'] = 'Golden Watch', 			['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'rolex.png', 			    ['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'A golden watch seems like the jackpot to me!'},
	['10kgoldchain'] 				 = {['name'] = '10kgoldchain', 			  	  	['label'] = '10k Gold Chain', 			['weight'] = 2000, 		['type'] = 'item', 		['image'] = '10kgoldchain.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = '10 carat golden chain'},
	['goldbar'] 			 	 	 = {['name'] = 'goldbar', 			  			['label'] = 'Gold Bar', 				['weight'] = 7000, 	    ['type'] = 'item', 		['image'] = 'goldbar.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Looks pretty expensive to me'},

	-- Cops Tools
	['armor'] 		 				 = {['name'] = 'armor', 						['label'] = 'Armor', 					['weight'] = 10000, 	    ['type'] = 'item', 		['image'] = 'armor.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Some protection won\'t hurt... right?'},
	['heavyarmor'] 		 			 = {['name'] = 'heavyarmor', 					['label'] = 'Armor (PD Issued)', 				['weight'] = 15000,     ['type'] = 'item', 		['image'] = 'pdarmor.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Some protection won\'t hurt... right?'},
	['handcuffs'] 				 	 = {['name'] = 'handcuffs', 			    	['label'] = 'Handcuffs', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'handcuffs.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Comes in handy when people misbehave. Maybe it can be used for something else?'},
	['police_stormram'] 			 = {['name'] = 'police_stormram', 			  	['label'] = 'Stormram (PD Issued)', 				['weight'] = 18000, 	['type'] = 'item', 		['image'] = 'police_stormram.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'A nice tool to break into doors'},
	['empty_evidence_bag'] 			 = {['name'] = 'empty_evidence_bag', 			['label'] = 'Empty Evidence Bag (PD Issued)', 		['weight'] = 0, 		['type'] = 'item', 		['image'] = 'evidence.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Used a lot to keep DNA from blood, bullet shells and more'},
	['filled_evidence_bag']          = {['name'] = 'filled_evidence_bag',           ['label'] = 'Evidence Bag (PD Issued)',             ['weight'] = 200,       ['type'] = 'item',      ['image'] = 'evidence.png',                ['unique'] = true,          ['useable'] = true,     ['shouldClose'] = true,     ['combinable'] = nil,   ['description'] = 'A filled evidence bag to see who committed the crime >:('},

	-- Firework Tools
	['firework1'] 				 	 = {['name'] = 'firework1', 			  	  	['label'] = '2Brothers', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'firework1.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Fireworks'},
	['firework2'] 				 	 = {['name'] = 'firework2', 			  	  	['label'] = 'Poppelers', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'firework2.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Fireworks'},
	['firework3'] 				 	 = {['name'] = 'firework3', 			  	  	['label'] = 'WipeOut', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'firework3.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Fireworks'},
	['firework4'] 				 	 = {['name'] = 'firework4', 			  	  	['label'] = 'Weeping Willow', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'firework4.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil, 	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Fireworks'},

	-- Sea Tools
    ['dendrogyra_coral'] 			 = {['name'] = 'dendrogyra_coral', 			  	['label'] = 'Dendrogyra', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'dendrogyra_coral.png', 	['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Its also known as pillar coral'},
    ['antipatharia_coral'] 			 = {['name'] = 'antipatharia_coral', 			['label'] = 'Antipatharia', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'antipatharia_coral.png', 	['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Its also known as black corals or thorn corals'},
	['diving_gear'] 			     = {['name'] = 'diving_gear', 					['label'] = 'Diving Gear', 				['weight'] = 30000, 	['type'] = 'item', 		['image'] = 'diving_gear.png', 			['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'An oxygen tank and a rebreather'},

	-- Other Tools
	['casinochips'] 				 = {['name'] = 'casinochips', 			  	  	['label'] = 'Casino Chips', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'casinochips.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Chips For Casino Gambling'},
	['stickynote'] 			 	 	 = {['name'] = 'stickynote', 			  		['label'] = 'Sticky note', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'stickynote.png', 			['unique'] = true, 		['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Sometimes handy to remember something :)'},
	['moneybag'] 			 		 = {['name'] = 'moneybag', 						['label'] = 'Money Bag', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'moneybag.png', 			['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'A bag with cash'},
	['parachute'] 			   		 = {['name'] = 'parachute', 					['label'] = 'Parachute', 				['weight'] = 30000, 	['type'] = 'item', 		['image'] = 'parachute.png', 			['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'The sky is the limit! Woohoo!'},
	['binoculars'] 			 	 	 = {['name'] = 'binoculars', 					['label'] = 'Binoculars', 				['weight'] = 600, 		['type'] = 'item', 		['image'] = 'binoculars.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Sneaky Breaky...'},
	['snowball'] 		     		 = {['name'] = 'snowball', 		 	  			['label'] = 'Snowball', 				['weight'] = 0, 		['type'] = 'item', 	 	['image'] = 'snowball.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Should have catched it :D'},
	['certificate'] 				 = {['name'] = 'certificate', 			  	  	['label'] = 'Certificate', 				['weight'] = 0, 		['type'] = 'item', 		['image'] = 'certificate.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Certificate that proves you own certain stuff'},
	['markedbills'] 				 = {['name'] = 'markedbills', 			  	  	['label'] = 'Marked Money', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'markedbills.png', 			['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Money?'},
	['labkey'] 			 			 = {['name'] = 'labkey', 						['label'] = 'Key', 						['weight'] = 500, 		['type'] = 'item', 		['image'] = 'labkey.png', 				['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'Key for a lock...?'},
	['printerdocument'] 			 = {['name'] = 'printerdocument', 				['label'] = 'Document', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'printerdocument.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,	["created"] = nil,	["decay"] = 15.0,   ['description'] = 'A nice document'},
    ['licenseplate'] 				 = {['name'] = 'licenseplate',				    ['label'] = 'Custom License Plate',		['weight'] = 10,		['type'] = 'item',		['image'] = 'part_plate.png',		    ['unique'] = true,		['useable'] = true,		['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Custom License Plate'}, 
	--Bowling
	["bowlingball"]                  = {["name"] = "bowlingball",                   ["label"] = "Bowling Ball",             ["weight"] = 1000,      ["type"] = "item",      ["image"] = "bowling_ball.png",       ["unique"] = true,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 15.0,   ["description"] = "Bowling Ball.."},
	["bowlingreceipt"]               = {["name"] = "bowlingreceipt",                ["label"] = "Bowling Access Line",      ["weight"] = 1000,      ["type"] = "item",      ["image"] = "receipt.png",            ["unique"] = true,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 15.0,   ["description"] = "Ticket Access Line.."},

	-- Paintball --
	["paintball_ammo"]               = {["name"] = "paintball_ammo",                ["label"] = "Paintball Ammo",           ["weight"] = 150,       ["type"] = "item",      ["image"] = "paintball_ammo.png",     ["unique"] = false,    ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 15.0,   ["description"] = "Paintball Ammunition"},
    
   -- Qb Fishing
	["fish"] 			 		 	 = {["name"] = "fish", 							["label"] = "Fish",                     ["weight"] = 1100,      ["type"] = "item",      ["image"] = "fish.png",                 ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
	["killerwhalemeat"] 			 = {["name"] = "killerwhalemeat", 				["label"] = "killerwhalemeat",          ["weight"] = 1100,      ["type"] = "item",      ["image"] = "killerwhalemeat.png",      ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
	["stingraymeat"] 			     = {["name"] = "stingraymeat", 				    ["label"] = "stingraymeat",             ["weight"] = 1111,      ["type"] = "item",      ["image"] = "stingraymeat.png",         ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
	["tigersharkmeat"] 			     = {["name"] = "tigersharkmeat", 				["label"] = "tigersharkmeat",           ["weight"] = 1111,      ["type"] = "item",      ["image"] = "tigersharkmeat.png",       ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
	["catfish"] 			         = {["name"] = "catfish", 				        ["label"] = "catfish",                  ["weight"] = 1111,      ["type"] = "item",      ["image"] = "catfish.png",              ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
	["salmon"] 			             = {["name"] = "salmon", 				        ["label"] = "salmon",                   ["weight"] = 1111,      ["type"] = "item",      ["image"] = "salmon.png",               ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
	["largemouthbass"] 			     = {["name"] = "largemouthbass", 				["label"] = "largemouthbass",           ["weight"] = 1111,      ["type"] = "item",      ["image"] = "largemouthbass.png",       ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
	["goldfish"] 			         = {["name"] = "goldfish", 			        	["label"] = "goldfish",                 ["weight"] = 1111,      ["type"] = "item",      ["image"] = "goldfish.png",             ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
	["redfish"] 			         = {["name"] = "redfish", 			        	["label"] = "redfish",                  ["weight"] = 1111,      ["type"] = "item",      ["image"] = "redfish.png",              ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
	["bluefish"] 			         = {["name"] = "bluefish", 			        	["label"] = "bluefish",                 ["weight"] = 1111,      ["type"] = "item",      ["image"] = "bluefish.png",             ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
	["stripedbass"] 			     = {["name"] = "stripedbass", 			        ["label"] = "stripedbass",              ["weight"] = 1111,      ["type"] = "item",      ["image"] = "stripedbass.png",          ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
	["fishingrod"] 			 		 = {["name"] = "fishingrod", 					["label"] = "Fishing Rod", 				["weight"] = 5000, 	    ["type"] = "item", 	    ["image"] = "fishingrod.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A fishing rod for adventures with friends!!"},	
	["fishingbait"] 			 	 = {["name"] = "fishingbait", 					["label"] = "Fish Bait", 				["weight"] = 400, 		["type"] = "item", 	    ["image"] = "fishbait.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A fish bait"},
	

	-- HUNTING SCRIPT
	["huntingbait"] 			     = {["name"] = "huntingbait", 			 	  	["label"] = "Hunting Bait", 		    ["weight"] = 500, 		["type"] = "item", 		["image"] = "huntingbait.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil, 	["created"] = nil,	["decay"] = 15.0,   ["description"] = "Lets bait some animals.."},
	["huntingcarcass1"] 			 = {["name"] = "huntingcarcass1",   		 	["label"] = "Animal Pelt",				["weight"] = 1000, 		["type"] = "item", 		["image"] = "huntingcarcass1.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 15.0,   ["description"] = "Looks expensive how much would this be?"},
	["huntingcarcass2"] 			 = {["name"] = "huntingcarcass2", 			 	["label"] = "Animal Pelt", 				["weight"] = 2000, 		["type"] = "item", 		["image"] = "huntingcarcass2.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 15.0,   ["description"] = "Looks expensive how much would this be?"},
	["huntingcarcass3"] 			 = {["name"] = "huntingcarcass3", 			 	["label"] = "Animal Pelt", 				["weight"] = 3000, 		["type"] = "item", 		["image"] = "huntingcarcass3.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 15.0,   ["description"] = "Looks expensive how much would this be?"},
	["huntingcarcass4"] 			 = {["name"] = "huntingcarcass4", 			 	["label"] = "Animal Pelt", 				["weight"] = 4000, 		["type"] = "item", 		["image"] = "huntingcarcass4.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 15.0,   ["description"] = "Looks expensive how much would this be?"},
	["huntingknife"] 			 	 = {["name"] = "huntingknife", 			 		["label"] = "Hunting Knife", 		    ["weight"] = 8000, 		["type"] = "item", 		["image"] = "huntingknife.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 15.0,   ["description"] = "I dont think this is sharp knife"},
	-- showItemImage
	["hunting_map"] 			 	 = {["name"] = "hunting_map", 					["label"] = "Hunting Map", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "huntingmap.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,	["created"] = nil,	["decay"] = 15.0,   ["description"] = "A map of the designated hunting areas."},

	-- Regular Fish
	['stingray1'] 			     	 = {['name'] = 'stingray1', 				    ['label'] = 'Stingray',            	    ['weight'] = 3500,      ['type'] = 'item',      ['image'] = 'stingray.png',         	['unique'] = false,     ['useable'] = false,     ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'Stingray', ['created'] = nil, ['decay'] = 2.0},
	['flounder'] 			     	 = {['name'] = 'flounder', 				        ['label'] = 'Fish',            		    ['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'flounder.png',         	['unique'] = false,     ['useable'] = false,     ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'Flounder', ['created'] = nil, ['decay'] = 2.0},
	['codfish'] 			     	 = {['name'] = 'codfish', 				        ['label'] = 'Fish',            		    ['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'codfish.png',         		['unique'] = false,     ['useable'] = false,     ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'Cod', ['created'] = nil, ['decay'] = 2.0},
	['mackerel'] 			     	 = {['name'] = 'mackerel', 				        ['label'] = 'Fish',            		    ['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'mackerel.png',         	['unique'] = false,     ['useable'] = false,     ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'Mackerel', ['created'] = nil, ['decay'] = 2.0},
	['bass'] 			 		 	 = {['name'] = 'bass', 						    ['label'] = 'Fish',                     ['weight'] = 1250,      ['type'] = 'item',      ['image'] = 'bass.png',                 ['unique'] = false,     ['useable'] = false,     ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'A normal fish Tatses pretty good!', ['created'] = nil, ['decay'] = 2.0},

	-- Trash Items
	['fishingtin'] 			 	 	 = {['name'] = 'fishingtin', 				    ['label'] = 'Fishing Tin', 				['weight'] = 2500, 		['type'] = 'item', 		['image'] = 'fishingtin.png', 			['unique'] = false,    ['useable'] = false, 	['shouldClose'] = false,	 ['combinable'] = nil,   ['description'] = 'Fishing Tin', ['created'] = nil, ['decay'] = 14.0},
	['fishingboot'] 			 	 = {['name'] = 'fishingboot', 				    ['label'] = 'Fishing Boot', 			['weight'] = 2500, 		['type'] = 'item', 		['image'] = 'fishingboot.png', 			['unique'] = false,    ['useable'] = false, 	['shouldClose'] = false,	 ['combinable'] = nil,   ['description'] = 'Fishing Boot', ['created'] = nil, ['decay'] = 14.0},

	-- Exotic Fish
	['killerwhale'] 			 	 = {['name'] = 'killerwhale', 				    ['label'] = 'Whale', 					['weight'] = 14000, 	['type'] = 'item', 		['image'] = 'killerwhale.png', 			['unique'] = true, 	   ['useable'] = false, 	['shouldClose'] = false,	 ['combinable'] = nil,   ['description'] = 'Killer Whale', ['created'] = nil, ['decay'] = 2.0},
	['dolphin'] 			     	 = {['name'] = 'dolphin', 					    ['label'] = 'Dolphin',          		['weight'] = 5000,      ['type'] = 'item',      ['image'] = 'dolphin.png',       		['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'Dolphin', ['created'] = nil, ['decay'] = 2.0},
	['sharkhammer'] 			     = {['name'] = 'sharkhammer', 				    ['label'] = 'Shark',         			['weight'] = 5000,      ['type'] = 'item',      ['image'] = 'sharkhammer.png',       	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'Hammerhead Shark', ['created'] = nil, ['decay'] = 2.0},
	['sharktiger'] 			     	 = {['name'] = 'sharktiger', 				    ['label'] = 'Shark',          			['weight'] = 5000,      ['type'] = 'item',      ['image'] = 'sharktiger.png',       	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'Tigershark', ['created'] = nil, ['decay'] = 2.0},

	-- Gear
	['fishbait'] 			     	 = {['name'] = 'fishbait', 					    ['label'] = 'Fish Bait', 				['weight'] = 400, 		['type'] = 'item', 		['image'] = 'fishingbait.png', 			['unique'] = false,    ['useable'] = true, 	   ['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Fishing bait', ['created'] = nil, ['decay'] = 14.0},
	['fishingrod'] 			 		 = {['name'] = 'fishingrod', 				    ['label'] = 'Fishing Rod', 				['weight'] = 750, 		['type'] = 'item', 		['image'] = 'fishing-rod.png', 			['unique'] = false,    ['useable'] = true, 	   ['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A fishing rod for adventures with friends!!', ['created'] = nil, ['decay'] = 14.0},
	['anchor'] 			 	 		 = {['name'] = 'anchor', 					    ['label'] = 'Boat Anchor', 				['weight'] = 2500, 		['type'] = 'item', 		['image'] = 'anchor.png', 				['unique'] = false,    ['useable'] = true, 	   ['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Boat Anchor', ['created'] = nil, ['decay'] = 14.0},
	['fishicebox'] 			 	 	 = {['name'] = 'fishicebox', 				    ['label'] = 'Fishing Ice Chest', 		['weight'] = 2500, 		['type'] = 'item', 		['image'] = 'fishicebox.png', 			['unique'] = true,     ['useable'] = true, 	   ['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Ice Box to store all of your fish', ['created'] = nil, ['decay'] = 14.0},

	-- Fishing Rewards
	['fishingloot'] 			 	 = {['name'] = 'fishingloot', 				    ['label'] = 'Metal Box', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'fishingloot.png', 			['unique'] = false,    ['useable'] = true, 	   ['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Seems to be a corroded from the salt water, Should be easy to open', ['created'] = nil, ['decay'] = 14.0},
	['fishinglootbig'] 			 	 = {['name'] = 'fishinglootbig', 			    ['label'] = 'Treasure Chest', 			['weight'] = 2500, 		['type'] = 'item', 		['image'] = 'fishinglootbig.png', 		['unique'] = false,    ['useable'] = true, 	   ['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'The lock seems to be intact, Might need a key', ['created'] = nil, ['decay'] = 14.0},
	['fishingkey'] 			 	 	 = {['name'] = 'fishingkey', 			        ['label'] = 'Corroded Key', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'fishingkey.png', 		    ['unique'] = false,    ['useable'] = true, 	   ['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A weathered key that looks usefull', ['created'] = nil, ['decay'] = 14.0},
	['fishtacklebox'] 			 	 = {['name'] = 'fishtacklebox', 			    ['label'] = 'Tackle Box', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fishtacklebox.png', 		['unique'] = false,    ['useable'] = true, 	   ['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Seems to be left over tackle box from another fisherman', ['created'] = nil, ['decay'] = 14.0},
	['pearlscard'] 			 	 	 = {['name'] = 'pearlscard', 				    ['label'] = 'Pearls Seafood', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'pearlscard.png', 			['unique'] = false,    ['useable'] = true, 	   ['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A special member of Pearl\'s Seafood Restaurant', ['created'] = nil, ['decay'] = 14.0},

	-- SMOKES ITEMS
	["redw"] 						 = {["name"] = "redw", 			 	  	  		["label"] = "Redwood Pack", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "redw.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 7.0,   ["description"] = "Take out your cigarettes"},
	["marlboro"] 				     = {["name"] = "marlboro", 			 	  	  	["label"] = "Marlboro Pack", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "marlboro.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 7.0,   ["description"] = "Take out your cigarettes"},
	["cubancigar"] 			         = {["name"] = "cubancigar", 			 	  	["label"] = "Cuban Cigar", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "cubancigar.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 7.0,   ["description"] = "Real cigar"},
	["davidoffcigar"] 	             = {["name"] = "davidoffcigar", 			 	["label"] = "Davidoff Cigar", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "davidoffcigar.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 7.0,   ["description"] = "Real cigar"},
	["redwcig"] 				     = {["name"] = "redwcig", 			 	  	  	["label"] = "Redwood Cigarette", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "redwcig.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 7.0,   ["description"] = "Smoking cigarette"},
	["marlborocig"] 		         = {["name"] = "marlborocig", 			 	  	["label"] = "Marlboro Cigarette", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "marlborocig.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 7.0,   ["description"] = "Smoking cigarette"},
	["vape"] 						 = {["name"] = "vape", 			 	  	  		["label"] = "Vape", 					["weight"] = 200, 		["type"] = "item", 		["image"] = "vape.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = "Electronic cigarette"},
	["liquid"] 					     = {["name"] = "liquid", 			 	  	  	["label"] = "Liquid", 					["weight"] = 200, 		["type"] = "item", 		["image"] = "liquid.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 7.0,   ["description"] = "Vape liquid"},
	["lighter"] 					 = {["name"] = "lighter", 			 	  	  	["label"] = "Lighter", 					["weight"] = 200, 		["type"] = "item", 		["image"] = "lighter.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 7.0,   ["description"] = "Cigarette lighter"},
	["bong"] 						 = {["name"] = "bong", 			 	  	  		["label"] = "Bong", 					["weight"] = 200, 		["type"] = "item", 		["image"] = "bong.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = "Bong"},
	["ocb_paper"] 					 = {["name"] = "ocb_paper", 			 	  	["label"] = "Ocb Paper", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "ocb_paper.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 15.0,   ["description"] = "Ocb paper for rolling joints"},
	["og_kush_joint"] 				 = {["name"] = "og_kush_joint", 			 	["label"] = "Og Kush Joint", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "og_kush_joint.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 7.0,   ["description"] = "Good joint"},
	["blue_dream_joint"] 			 = {["name"] = "blue_dream_joint", 			 	["label"] = "Blue Dream Joint", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "blue_dream_joint.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 7.0,   ["description"] = "Good joint"},
	["purple_haze_joint"] 			 = {["name"] = "purple_haze_joint", 			["label"] = "Purple Haze Joint", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "purple_haze_joint.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 7.0,   ["description"] = "Good joint"},
	["banana_kush_joint"] 			 = {["name"] = "banana_kush_joint", 			["label"] = "Banana Lush Joint", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "banana_kush_joint.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 7.0,   ["description"] = "Good joint"},
	["og_kush_bag"] 				 = {["name"] = "og_kush_bag", 			 		["label"] = "Og Kush Bag", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "og_kush_bag.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 7.0,   ["description"] = "Weed for packing"},
	["blue_dream_bag"] 			 	 = {["name"] = "blue_dream_bag", 			 	["label"] = "Blue Dream Bag", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "blue_dream_bag.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 7.0,   ["description"] = "Weed for packing"},
	["purple_haze_bag"] 			 = {["name"] = "purple_haze_bag", 				["label"] = "Purple Haze Bag", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "purple_haze_bag.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 7.0,   ["description"] = "Weed for packing"},
	["banana_kush_bag"] 			 = {["name"] = "banana_kush_bag", 				["label"] = "Banana Kush Bag", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "banana_kush_bag.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 7.0,   ["description"] = "Weed for packing"},
	["og_kush_weed"] 				 = {["name"] = "og_kush_weed", 			 	  	["label"] = "Og Kush Weed 1G", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "og_kush_weed.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 7.0,   ["description"] = "Weed for packing"},
	["blue_dream_weed"] 			 = {["name"] = "blue_dream_weed", 			 	["label"] = "Blue Dream Weed 1G", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "blue_dream_weed.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 7.0,   ["description"] = "Weed for packing"},
	["banana_kush_weed"] 			 = {["name"] = "banana_kush_weed", 			 	["label"] = "Banana Kush Weed 1G", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "banana_kush_weed.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 7.0,   ["description"] = "Weed for packing"},
	["purple_haze_weed"] 			 = {["name"] = "purple_haze_weed", 			 	["label"] = "Purple Haze Weed 1G", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "purple_haze_weed.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 7.0,   ["description"] = "Weed for packing"},

  -- Digital Den

  ['externaldrive'] 				 = {['name'] = 'externaldrive',				    ['label'] = 'External Drive',		    ['weight'] = 1000,		['type'] = 'item',		  ['image'] = 'externalharddrive.png',	 ['unique'] = true,		['useable'] = true,		['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'External Drive. Could be useful'}, 
  ['customlaptop'] 				     = {['name'] = 'customlaptop',				    ['label'] = 'Custom Built Laptop',		['weight'] = 7500,		['type'] = 'item',		  ['image'] = 'customlaptop.png',		 ['unique'] = true,		['useable'] = true,		['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Custom Built Laptop'}, 
  ['duckusb']                  		 = {['name'] = 'duckusb',                    	['label'] = 'Duck Usb',            		['weight'] = 1000,      ['type'] = 'item',        ['image'] = 'icon_duckusb.png',      	 ['unique'] = true,        ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,      ['description'] = 'you will need this for security systems'}, 	
  ['lanturtle']                      = {['name'] = 'lanturtle',                     ['label'] = 'Lan Turtle',                ['weight'] = 1000,      ['type'] = 'item',        ['image'] = 'icon_lanturtle.png',            ['unique'] = true,        ['useable'] = true,        ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'you will need this to jam the security system'},


  --CSGO Crates
  ['case_recoil'] 			 = {['name'] = 'case_recoil', 				['label'] = 'Recoil Case', 				['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'case_recoil.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A prize awaits inside.'},
  ['case_prisma2'] 			 = {['name'] = 'case_prisma2', 				['label'] = 'Prisma 2 Case', 				['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'case_recoil.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A prize awaits inside.'},

  -- BOWLING ALLEY
	------------------------------------------ HEN BUSINESS

	["tillie"] 		 				= {["name"] = "tillie",  	     			    ["label"] = "Tillie Mae",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "tillie.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "The Tillie Mae Special", ['thirst'] = math.random(20, 30) },
	["b52"] 		 				= {["name"] = "b52",  	     				    ["label"] = "B-52",	 					["weight"] = 200, 		["type"] = "item", 		["image"] = "b52.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "B-52 Cocktail", ['thirst'] = math.random(20, 30) },
	["brussian"] 		 			= {["name"] = "brussian",  	     			    ["label"] = "Black Russian",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "brussian.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Black Russian Cocktail", ['thirst'] = math.random(20, 30) },
	["bkamikaze"] 				 	= {["name"] = "bkamikaze",  	     		    ["label"] = "Blue Kamikaze",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "bkamikaze.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Blue Kamikaze Cocktail", ['thirst'] = math.random(20, 30) },
	["cappucc"] 				 	= {["name"] = "cappucc",  	     			    ["label"] = "Cappuccinotini",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "cappucc.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Cappuccinotini Cocktail", ['thirst'] = math.random(20, 30) },
	["ccookie"] 				 	= {["name"] = "ccookie",  	     			    ["label"] = "Cranberry Cookie",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "ccookie.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Cranberry Cookie Cocktail", ['thirst'] = math.random(20, 30) },
	["iflag"] 				 		= {["name"] = "iflag",  	     			    ["label"] = "Irish Flag",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "iflag.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Irish Flag Cocktail", ['thirst'] = math.random(20, 30) },
	["kamikaze"] 				 	= {["name"] = "kamikaze",  	     			    ["label"] = "Kamikaze",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "kamikaze.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Kamikase Cocktail", ['thirst'] = math.random(20, 30) },
	["sbullet"] 		 			= {["name"] = "sbullet",  	     			    ["label"] = "Silver Bullet",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "sbullet.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Silver Bullet Cocktail", ['thirst'] = math.random(20, 30) },
	["voodoo"] 		 				= {["name"] = "voodoo",  	     			    ["label"] = "Voodoo",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "voodoo.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Voodoo Cocktail", ['thirst'] = math.random(20, 30) },
	["woowoo"] 		 				= {["name"] = "woowoo",  	     			    ["label"] = "Woo Woo",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "woowoo.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Woowoo Cocktail", ['thirst'] = math.random(20, 30) },

	--Drink Ingredients
	["orange"] 				 		= {["name"] = "orange",  	     			    ["label"] = "Orange",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "orange.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "An Orange." },
	["lime"] 				 		= {["name"] = "lime",  	     				    ["label"] = "Lime",	 					["weight"] = 200, 		["type"] = "item", 		["image"] = "lime.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "A Lime." },
	["chocolate"] 				 	= {["name"] = "chocolate",  		     	    ["label"] = "Chocolate",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "chocolate.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Chocolate Bar", ['hunger'] = math.random(20, 30) },

	["cranberry"] 				 	= {["name"] = "cranberry",  	     		    ["label"] = "Cranberry Juice",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "cranberry.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Cranberry Juice", ['thirst'] = math.random(20, 30) },
	["schnapps"] 				 	= {["name"] = "schnapps",  	     			    ["label"] = "Peach Schnapps",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "schnapps.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "A bottle of Peach Schnapps", ['thirst'] = math.random(20, 30) },
	["gin"] 					 	= {["name"] = "gin",  	     				    ["label"] = "Gin",	 					["weight"] = 200, 		["type"] = "item", 		["image"] = "gin.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "A bottle of Gin", ['thirst'] = math.random(20, 30) },
	["scotch"] 					 	= {["name"] = "scotch",  	     			    ["label"] = "Scotch",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "scotch.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "A bottle of Scotch", ['thirst'] = math.random(20, 30) },
	["rum"] 					 	= {["name"] = "rum",  	     				    ["label"] = "Rum",	 					["weight"] = 200, 		["type"] = "item", 		["image"] = "rum.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "A bottle of Rum", ['thirst'] = math.random(20, 30) },
	["icream"] 					 	= {["name"] = "icream",  	     			    ["label"] = "Irish Cream",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "icream.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "A bottle of Irish Cream Liquer", ['thirst'] = math.random(20, 30) },
	["amaretto"] 					= {["name"] = "amaretto",  	     			    ["label"] = "Amaretto",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "amaretto.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "A bottle of Amaretto", ['thirst'] = math.random(20, 30) },
	["curaco"] 						= {["name"] = "curaco",  	     			    ["label"] = "Curaco",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "curaco.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "A bottle of Curaco", ['thirst'] = math.random(20, 30) },

	--BEERS
	["ambeer"] 						= {["name"] = "ambeer",  	    	 		    ["label"] = "AM Beer",		 			["weight"] = 100, 		["type"] = "item", 		["image"] = "ambeer.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "", ['thirst'] = math.random(40, 50) },
	["dusche"] 						= {["name"] = "dusche",  	    	 		    ["label"] = "Dusche Gold",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "dusche.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "", ['thirst'] = math.random(40, 50) },
	["logger"] 						= {["name"] = "logger",  	    	 		    ["label"] = "Logger Beer",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "logger.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "", ['thirst'] = math.random(40, 50) },
	["pisswasser"] 					= {["name"] = "pisswasser",  	    	 	    ["label"] = "Pißwasser",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "pisswaser1.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "", ['thirst'] = math.random(40, 50) },
	["pisswasser2"] 				= {["name"] = "pisswasser2",  	    	 	    ["label"] = "Pißwasser Stout",		 	["weight"] = 100, 		["type"] = "item", 		["image"] = "pisswaser2.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "", ['thirst'] = math.random(40, 50) },
	["pisswasser3"] 				= {["name"] = "pisswasser3",  	    	 	    ["label"] = "Pißwasser Pale Ale",		["weight"] = 100, 		["type"] = "item", 		["image"] = "pisswaser3.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "", ['thirst'] = math.random(40, 50) },

	--SODA
	["sprunk"] 						= {["name"] = "sprunk",  	    	 		    ["label"] = "Sprunk",		 			["weight"] = 100, 		["type"] = "item", 		["image"] = "sprunk.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "", ['thirst'] = math.random(20, 30) },
	["sprunklight"] 				= {["name"] = "sprunklight",  	    	 	    ["label"] = "Sprunk Light",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "sprunklight.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "", ['thirst'] = math.random(20, 30) },
	["ecola"] 						= {["name"] = "ecola",  	    	 		    ["label"] = "eCola",		 			["weight"] = 100, 		["type"] = "item", 		["image"] = "ecola.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "", ['thirst'] = math.random(20, 30) },
	["ecolalight"] 					= {["name"] = "ecolalight",  	    	 	    ["label"] = "eCola Light",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "ecolalight.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "", ['thirst'] = math.random(20, 30) },

	["crisps"] 						= {["name"] = "crisps",  	    			    ["label"] = "Crisps",					["weight"] = 100, 		["type"] = "item", 		["image"] = "chips.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "", ['hunger'] = math.random(20, 30) },

	--Food
	["friedpick"] 				 	= {["name"] = "friedpick",  	     		    ["label"] = "Fried Pickles",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "friedpick.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "A plate of fried pickles", ['hunger'] = math.random(40, 50) },
	["maccheese"] 				 	= {["name"] = "maccheese",  	     		    ["label"] = "Mac n Cheese",		 		["weight"] = 200, 		["type"] = "item", 		["image"] = "maccheese.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "A bowl of maccaroni and cheese", ['hunger'] = math.random(40, 50) },
	["bplate"] 						= {["name"] = "bplate",  	     			    ["label"] = "Brisket Plate",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "bplate.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "A Brisket Plate", ['hunger'] = math.random(40, 50) },
	["cplate"] 						= {["name"] = "cplate",  	     			    ["label"] = "Fish Plate",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "cplate.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "A Catfish Plate", ['hunger'] = math.random(40, 50) },
	["splate"] 						= {["name"] = "splate",  	     			    ["label"] = "Steak Plate",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "splate.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "A Steak Plate", ['hunger'] = math.random(40, 50) },
	["rplate"] 						= {["name"] = "rplate",  	     			    ["label"] = "Ribs Plate",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "rplate.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "A plate of Ribs", ['hunger'] = math.random(40, 50) },
	["nplate"] 						= {["name"] = "nplate",  	     			    ["label"] = "Nachos Plate",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "nplate.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "A plate of nachos and cheese", ['hunger'] = math.random(40, 50) },
	["wings"] 						= {["name"] = "wings",  	     			    ["label"] = "Plate of Wings",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "wings.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "A plate of Chicken Wings", ['hunger'] = math.random(40, 50) },

	["bburrito"] 					= {["name"] = "bburrito",  	     			    ["label"] = "Breakfast Burrito",	 	["weight"] = 200, 		["type"] = "item", 		["image"] = "bburrito.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A breakfast Burrito", ['hunger'] = math.random(40, 50) },

	--Food Ingredients
	["meat"] 						= {["name"] = "meat",  	     				    ["label"] = "Meat",	 					["weight"] = 200, 		["type"] = "item", 		["image"] = "meat.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "A slab of Meat", ['hunger'] = math.random(40, 50) },
	["pasta"] 						= {["name"] = "pasta",  	     			    ["label"] = "Bag of Pasta",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "pasta.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "A bag of Pasta", ['hunger'] = math.random(40, 50) },
	["pickle"] 						= {["name"] = "pickle",  	     			    ["label"] = "Pickle",	 		 		["weight"] = 200, 		["type"] = "item", 		["image"] = "pickle.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "A jar of Pickles", ['hunger'] = math.random(40, 50) },
	["fish"] 						= {["name"] = "fish",  	     				    ["label"] = "CatFish",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "fish.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "A Catfish", ['hunger'] = math.random(40, 50) },
	["nachos"] 						= {["name"] = "nachos",  	     			    ["label"] = "Nachos",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "nachos.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "A bag of Nachos", ['hunger'] = math.random(40, 50) },
	["lettuce"] 	 			 	= {["name"] = "lettuce",       				    ["label"] = "Lettuce",	 				["weight"] = 100, 		["type"] = "item", 		["image"] = "lettuce.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Some big taco brother"},
	["cheddar"] 					= {["name"] = "cheddar",					    ["label"] = "Cheddar Slice",			["weight"] = 500,		["type"] = "item",		["image"] = "cheddar.png",		["unique"] = false, 	["useable"] = false,	["shouldClose"] = false,	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,	["description"] = "Food" },
	["potato"] 						= {["name"] = "potato",						    ["label"] = "Potatoes",					["weight"] = 500,		["type"] = "item",		["image"] = "potatoes.png",		["unique"] = false, 	["useable"] = false,	["shouldClose"] = false,	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,	["description"] = "Food" },

    
	------------------------------------------ VANILLA UNICORN

	--Drink Ingredients
	["cubasil"] 					= {["name"] = "cubasil",  	     			   ["label"] = "Cucumber Basil",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "cubasil.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Hand full of Cucumber and Basil", ['hunger'] = math.random(40, 50) },
	["mintleaf"] 					= {["name"] = "mintleaf",  	     			   ["label"] = "Mint",	 					["weight"] = 200, 		["type"] = "item", 		["image"] = "mint.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Mint Leaves", ['hunger'] = math.random(40, 50) },
	["peach"] 						= {["name"] = "peach",  	     			   ["label"] = "Peach",	 				    ["weight"] = 200, 		["type"] = "item", 		["image"] = "peach.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "A peach", ['hunger'] = math.random(40, 50) },
	["strawberry"] 					= {["name"] = "strawberry",  	     		   ["label"] = "Strawberries",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "strawberry.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Strawberries", ['hunger'] = math.random(40, 50) },
	["lemon"] 				 		= {["name"] = "lemon",  	     			   ["label"] = "Lemon",	 				    ["weight"] = 200, 		["type"] = "item", 		["image"] = "lemon.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "A Lemon." },

	["midori"] 						= {["name"] = "midori",  	     			   ["label"] = "Midori",	 		 		["weight"] = 200, 		["type"] = "item", 		["image"] = "midori.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Midori", ['thirst'] = math.random(40, 50) },
	["pinejuice"] 					= {["name"] = "pinejuice",  	     		   ["label"] = "Pineapple Juice",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "pinejuice.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Pineapple Juice", ['thirst'] = math.random(40, 50) },
	["prosecco"] 					= {["name"] = "prosecco",  	     			   ["label"] = "Prosecco",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "prosecco.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Prosecco", ['thirst'] = math.random(40, 50) },
	["tequila"] 					= {["name"] = "tequila",  	     			   ["label"] = "Tequila",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "tequila.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Tequila", ['thirst'] = math.random(40, 50) },
	["triplsec"] 					= {["name"] = "triplsec",  	     			   ["label"] = "Triple Sec",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "triplesec.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true, 	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Triple Sec", ['thirst'] = math.random(40, 50) },

	--Cocktails
	["amarettosour"] 				= {["name"] = "amarettosour",  	     		   ["label"] = "Amaretto Sour",	 		    ["weight"] = 200, 		["type"] = "item", 		["image"] = "amarettosour.png", ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Amaretto Sour", ['thirst'] = math.random(40, 50) },
	["bellini"] 					= {["name"] = "bellini",  	     			   ["label"] = "Bellini",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "bellini.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Bellini", ['thirst'] = math.random(40, 50) },
	["cosmopolitan"] 				= {["name"] = "cosmopolitan",  	     		   ["label"] = "Cosmopolitan",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "cosmopolitan.png", ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Cosmopolitan", ['thirst'] = math.random(40, 50) },
	["longisland"] 					= {["name"] = "longisland",  	     		   ["label"] = "Long Island Ice tea",	 	["weight"] = 200, 		["type"] = "item", 		["image"] = "longisland.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Long Island Ice Tea", ['thirst'] = math.random(40, 50) },
	["margarita"] 					= {["name"] = "margarita",  	     		   ["label"] = "Margarita",	 			    ["weight"] = 200, 		["type"] = "item", 		["image"] = "margarita.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Margarita", ['thirst'] = math.random(40, 50) },
	["pinacolada"] 					= {["name"] = "pinacolada",  	     		   ["label"] = "Pina Colada",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "pinacolada.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Pine Colada", ['thirst'] = math.random(40, 50) },
	["sangria"] 					= {["name"] = "sangria",  	     			   ["label"] = "Sangria",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "sangria.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Sangria", ['thirst'] = math.random(40, 50) },
	["screwdriver"] 				= {["name"] = "screwdriver",  	     		   ["label"] = "Screwdriver",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "screwdriver.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Screwdriver", ['thirst'] = math.random(40, 50) },
	["strawdaquiri"] 				= {["name"] = "strawdaquiri",  	     		   ["label"] = "Strawberry Daquiri",	 	["weight"] = 200, 		["type"] = "item", 		["image"] = "strawdaquiri.png", ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Strawberry Daquiri", ['thirst'] = math.random(40, 50) },
	["strawmargarita"] 				= {["name"] = "strawmargarita",  	     	   ["label"] = "Strawberry Margarita",	 	["weight"] = 200, 		["type"] = "item", 		["image"] = "strawmargarita.png",["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Starberry Margarita", ['thirst'] = math.random(40, 50) },

	--Food
	["vusliders"] 				 	= {["name"] = "vusliders",  	     		   ["label"] = "Sliders",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "sliders.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Sliders", ['hunger'] = math.random(40, 50) },
	["vutacos"] 				 	= {["name"] = "vutacos",  	     			   ["label"] = "Tacos",	 				    ["weight"] = 200, 		["type"] = "item", 		["image"] = "tacos.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Tacos", ['hunger'] = math.random(40, 50) },
	["tots"] 				 		= {["name"] = "tots",  	     				   ["label"] = "Tits or Tots",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "tots.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Sexy Tots", ['hunger'] = math.random(40, 50) },

	------------------------------------------ CATCAFE
["bmochi"] 						= {["name"] = "bmochi",  	     			["label"] = "Blue Mochi",	 			["weight"] = 100, 		["type"] = "item", 		["image"] = "mochiblue.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(40, 50) },
["pmochi"] 						= {["name"] = "pmochi",  	     			["label"] = "Pink Mochi",	 			["weight"] = 100, 		["type"] = "item", 		["image"] = "mochipink.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(40, 50) },
["gmochi"] 						= {["name"] = "gmochi",  	     			["label"] = "Green Mochi",	 			["weight"] = 100, 		["type"] = "item", 		["image"] = "mochigreen.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(40, 50) },
["omochi"] 						= {["name"] = "omochi",  	     			["label"] = "Orange Mochi",	 			["weight"] = 100, 		["type"] = "item", 		["image"] = "mochiorange.png",		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(40, 50) },

--Drinks
["bobatea"] 					= {["name"] = "bobatea",  	     			["label"] = "Boba Tea",	 				["weight"] = 100, 		["type"] = "item", 		["image"] = "bubbletea.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
["bbobatea"] 					= {["name"] = "bbobatea",  	     			["label"] = "Blue Boba Tea",	 		["weight"] = 100, 		["type"] = "item", 		["image"] = "bubbleteablue.png",	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
["gbobatea"] 					= {["name"] = "gbobatea",  	     			["label"] = "Green Boba Tea",	 		["weight"] = 100, 		["type"] = "item", 		["image"] = "bubbleteagreen.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
["pbobatea"] 					= {["name"] = "pbobatea",  	     			["label"] = "Pink Boba Tea",	 		["weight"] = 100, 		["type"] = "item", 		["image"] = "bubbleteapink.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },
["obobatea"] 					= {["name"] = "obobatea",  	     			["label"] = "Orange Boba Tea",	 		["weight"] = 100, 		["type"] = "item", 		["image"] = "bubbleteaorange.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },

["nekolatte"] 					= {["name"] = "nekolatte",  	     		["label"] = "Neko Latte",	 			["weight"] = 100, 		["type"] = "item", 		["image"] = "latte.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(20, 30) },
["catcoffee"] 					= {["name"] = "catcoffee",  	     		["label"] = "Cat Coffee",	 			["weight"] = 100, 		["type"] = "item", 		["image"] = "catcoffee.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(20, 30) },

["sake"] 						= {["name"] = "sake",  	     				["label"] = "Sake",	 					["weight"] = 100, 		["type"] = "item", 		["image"] = "sake.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },

["miso"] 						= {["name"] = "miso",  	    	 			["label"] = "Miso Soup",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "miso.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(40, 50) },
["cake"] 						= {["name"] = "cake",  	     				["label"] = "Strawberry Cake",	 		["weight"] = 100, 		["type"] = "item", 		["image"] = "cake.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(40, 50) },
["bento"] 						= {["name"] = "bento",  	     			["label"] = "Bento Box",		 		["weight"] = 500, 		["type"] = "item", 		["image"] = "bento.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(40, 50) },

["riceball"] 					= {["name"] = "riceball",  	     			["label"] = "Neko Onigiri",	 			["weight"] = 100, 		["type"] = "item", 		["image"] = "catrice.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(40, 50) },

["nekocookie"] 					= {["name"] = "nekocookie",  	     		["label"] = "Neko Cookie",	 			["weight"] = 100, 		["type"] = "item", 		["image"] = "catcookie.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(40, 50) },
["nekodonut"] 					= {["name"] = "nekodonut",  	     		["label"] = "Neko Donut",	 			["weight"] = 100, 		["type"] = "item", 		["image"] = "catdonut.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(40, 50) },

--Ingredients
["boba"] 						= {["name"] = "boba",  			     		["label"] = "Boba",	 					["weight"] = 100, 		["type"] = "item", 		["image"] = "boba.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(40, 50) },
["flour"] 						= {["name"] = "flour",  			     	["label"] = "Flour",					["weight"] = 100, 		["type"] = "item", 		["image"] = "flour.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(40, 50) },
["rice"] 						= {["name"] = "rice",  			     		["label"] = "Bowl of Rice",	 			["weight"] = 100, 		["type"] = "item", 		["image"] = "rice.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(40, 50) },
["sugar"] 						= {["name"] = "sugar",  			     	["label"] = "Sugar",	 				["weight"] = 100, 		["type"] = "item", 		["image"] = "sugar.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(40, 50) },
["nori"] 						= {["name"] = "nori",  			    	 	["label"] = "Nori",		 				["weight"] = 100, 		["type"] = "item", 		["image"] = "nori.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "" },
["blueberry"] 					= {["name"] = "blueberry",  			    ["label"] = "Blueberry",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "blueberry.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(40, 50) },
["strawberry"] 					= {["name"] = "strawberry",  			    ["label"] = "Strawberry",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "strawberry.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(40, 50) },
["orange"] 				 		= {["name"] = "orange",  	     			["label"] = "Orange",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "orange.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   	["combinable"] = nil,   ["description"] = "An Orange." },
["mint"] 						= {["name"] = "mint",  			    	 	["label"] = "Matcha",		 			["weight"] = 100, 		["type"] = "item", 		["image"] = "matcha.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "" },
["tofu"] 						= {["name"] = "tofu",  			    	 	["label"] = "Tofu",		 				["weight"] = 100, 		["type"] = "item", 		["image"] = "tofu.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(40, 50) },

["mocha"] 						= {["name"] = "mocha",  	     			["label"] = "Mocha Meow",	 			["weight"] = 100, 		["type"] = "item", 		["image"] = "mochameow.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(40, 50) },

["cakepop"] 					= {["name"] = "cakepop",  	    	 		["label"] = "Cat Cake-Pop",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "cakepop.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(40, 50) },
["pancake"] 					= {["name"] = "pancake",  	     			["label"] = "PawCake",	 				["weight"] = 100, 		["type"] = "item", 		["image"] = "pawcakes.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(40, 50) },
["pizza"] 						= {["name"] = "pizza",  	     			["label"] = "Kitty Pizza",		 		["weight"] = 100, 		["type"] = "item", 		["image"] = "catpizza.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(40, 50) },
["purrito"] 					= {["name"] = "purrito",  	     			["label"] = "Purrito",	 				["weight"] = 100, 		["type"] = "item", 		["image"] = "purrito.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(40, 50) },

["noodlebowl"] 					= {["name"] = "noodlebowl",  	     		["label"] = "Bowl of Noodles",	 		["weight"] = 100, 		["type"] = "item", 		["image"] = "noodlebowl.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(40, 50) },
["noodles"] 					= {["name"] = "noodles",  	     			["label"] = "Instant Noodles",	 		["weight"] = 100, 		["type"] = "item", 		["image"] = "noodles.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "" },
["ramen"]						= {["name"] = "ramen",  	     			["label"] = "Bowl of Ramen",	 		["weight"] = 100, 		["type"] = "item", 		["image"] = "ramen.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['hunger'] = math.random(40, 50) },

["milk"]                        = {["name"] = "milk",                       ["label"] = "Milk",                     ["weight"] = 300,       ["type"] = "item",      ["image"] = "burger-milk.png",  ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,     ["combinable"] = nil,    ["description"] = "Carton of Milk", ['thirst'] = math.random(35, 54) },
["onion"]                       = {["name"] = "onion",                      ["label"] = "Onion",                    ["weight"] = 500,       ["type"] = "item",      ["image"] = "burger-onion.png", ["unique"] = false,     ["useable"] = false,    ["shouldClose"] = false,    ["combinable"] = nil,    ["description"] = "An onion"},

	------------------------------------------ BurgerShot
	["onion"] 						 = {["name"] = "onion",						   ["label"] = "Onion",					    ["weight"] = 500,		["type"] = "item",		["image"] = "burger-onion.png",			["unique"] = false, 	["useable"] = false,	["shouldClose"] = false,	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,	["description"] = "An onion"},
	["slicedpotato"] 				 = {["name"] = "slicedpotato",				   ["label"] = "Sliced Potatoes",			["weight"] = 500,		["type"] = "item",		["image"] = "burger-slicedpotato.png",	["unique"] = false, 	["useable"] = false,	["shouldClose"] = false,	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,	["description"] = "Sliced Potato"},
	["slicedonion"] 				 = {["name"] = "slicedonion",				   ["label"] = "Sliced Onions",			    ["weight"] = 500,		["type"] = "item",		["image"] = "burger-slicedonion.png",	["unique"] = false, 	["useable"] = false,	["shouldClose"] = false,	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,	["description"] = "Sliced Onion"},
	["icecream"] 					 = {["name"] = "icecream",					   ["label"] = "Ice Cream",				    ["weight"] = 500,		["type"] = "item",		["image"] = "burger-icecream.png",		["unique"] = false, 	["useable"] = false,	["shouldClose"] = false,	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,	["description"] = "Ice Cream."},
	["frozennugget"] 				 = {["name"] = "frozennugget",				   ["label"] = "Frozen Nuggets",			["weight"] = 500,		["type"] = "item",		["image"] = "burger-frozennugget.png",	["unique"] = false, 	["useable"] = false,	["shouldClose"] = false,	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,	["description"] = "Bag of Frozen Nuggets"},
	["burgerbun"] 		 			 = {["name"] = "burgerbun",       		       ["label"] = "Burger Bun",	 			["weight"] = 100, 		["type"] = "item", 		["image"] = "burgerbun.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,    ["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Some big burger brother"},
	["burgerpatty"] 				 = {["name"] = "burgerpatty",				   ["label"] = "Burger Patty",				["weight"] = 500,		["type"] = "item",		["image"] = "burgerpatty.png",			["unique"] = false, 	["useable"] = false,	["shouldClose"] = false,	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,	["description"] = "Raw Patty"},
	["burgermeat"] 				 	 = {["name"] = "burgermeat",				   ["label"] = "Burger Meat",				["weight"] = 500,		["type"] = "item",		["image"] = "burgermeat.png",			["unique"] = false, 	["useable"] = false,	["shouldClose"] = false,	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,	["description"] = "Cooked Burger Meat"},
	["milkshake"] 					 = {["name"] = "milkshake",					   ["label"] = "Milkshake",				    ["weight"] = 500,		["type"] = "item",		["image"] = "burger-milkshake.png",		["unique"] = false, 	["useable"] = true,		["shouldClose"] = true,	 	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,	["description"] = "BurgerShot Milkshake", ['thirst'] = math.random(35, 54) },
	["shotnuggets"] 				 = {["name"] = "shotnuggets", 			  	   ["label"] = "Shot Nuggets", 			    ["weight"] = 200, 		["type"] = "item", 		["image"] = "burger-shotnuggets.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Burgershot Nuggets", ['hunger'] = math.random(40, 50) },
	["shotrings"] 				 	 = {["name"] = "shotrings", 			  	   ["label"] = "Ring Shots", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "burger-shotrings.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Burgershot Onion Rings", ['hunger'] = math.random(40, 50) },
	["heartstopper"] 			 	 = {["name"] = "heartstopper",       		   ["label"] = "HeartStopper",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "burger-heartstopper.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Heartstopper", ['hunger'] = math.random(50, 60) },
	["shotfries"] 		 			 = {["name"] = "shotfries",       			   ["label"] = "Shot Fries",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "burger-fries.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Shot Fries", ['hunger'] = math.random(40, 50) },
	["moneyshot"] 		 			 = {["name"] = "moneyshot",       			   ["label"] = "Money Shot",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "burger-moneyshot.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Money Shot", ['hunger'] = math.random(40, 50) },
	["meatfree"] 		 			 = {["name"] = "meatfree",       			   ["label"] = "Meat Free",	 			    ["weight"] = 200, 		["type"] = "item", 		["image"] = "burger-meatfree.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "Meat Free", ['hunger'] = math.random(40, 50) },
	["bleeder"] 		 			 = {["name"] = "bleeder",       			   ["label"] = "The Bleeder",	 			["weight"] = 200, 		["type"] = "item", 		["image"] = "burger-bleeder.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "The Bleeder", ['hunger'] = math.random(40, 50) },
	["bscoffee"] 		 			 = {["name"] = "bscoffee",       			   ["label"] = "BurgerShot Coffee",	 	    ["weight"] = 200, 		["type"] = "item", 		["image"] = "burger-coffee.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "BurgerShot Coffee", ['thirst'] = math.random(35, 54) },
	["bscoke"] 		 				 = {["name"] = "bscoke",       				   ["label"] = "BurgerShot Coke",	 		["weight"] = 200, 		["type"] = "item", 		["image"] = "burger-softdrink.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "BurgerShot Cola", ['thirst'] = math.random(35, 54) },
	["torpedo"] 		 			 = {["name"] = "torpedo",       			   ["label"] = "Torpedo",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "burger-torpedo.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "BurgerShot Torpedo", ['hunger'] = math.random(40, 50) },
	["rimjob"] 		 				 = {["name"] = "rimjob",  	     			   ["label"] = "Rim Job",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "burger-rimjob.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil, 	["created"] = nil,	["decay"] = 3.0,  ["description"] = "BurgerShot Donut", ['hunger'] = math.random(40, 50) },
	["creampie"] 		 			 = {["name"] = "creampie",  	     		   ["label"] = "Creampie",	 				["weight"] = 200, 		["type"] = "item", 		["image"] = "burger-creampie.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil, 	["created"] = nil,	["decay"] = 3.0,  ["description"] = "BurgerShot Apple Pie", ['hunger'] = math.random(40, 50) },
	["cheesewrap"] 					 = {["name"] = "cheesewrap", 				   ["label"] = "BS Cheese Wrap", 	     	["weight"] = 150, 		["type"] = "item", 		["image"] = "burger-chickenwrap.png", 	["unique"] = false,   	["useable"] = true,   	["shouldClose"] = true,   	["combinable"] = nil,	["created"] = nil,	["decay"] = 3.0,   ["description"] = "BurgerShot Cheese Wrap", ['hunger'] = math.random(40, 50) },
	["chickenwrap"] 				 = {["name"] = "chickenwrap", 				   ["label"] = "BS Goat Cheese Wrap", 	    ["weight"] = 150, 		["type"] = "item", 		["image"] = "burger-goatwrap.png", 		["unique"] = false,   	["useable"] = true,   	["shouldClose"] = true,   	["combinable"] = nil, 	["created"] = nil,	["decay"] = 3.0,  ["description"] = "BurgerShot Goat Cheese Wrap", ['hunger'] = math.random(40, 50)},
	["murderbag"] 					 = {["name"] = "murderbag", 				   ["label"] = "Murder Bag", 	   			["weight"] = 0, 		["type"] = "item", 		["image"] = "burgerbag.png", 			["unique"] = true,   	["useable"] = true,   	["shouldClose"] = true,   	["combinable"] = nil, 	["created"] = nil,	["decay"] = 3.0,  ["description"] = "Grab a Murder Bag of Burgers", },

	
	

	-- ================ MINING STUF ================
	["stone"] 		 	 			 = {["name"] = "stone",           			    ["label"] = "Stone",	 				["weight"] = 2000, 	    ["type"] = "item", 		["image"] = "stone.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = "Stone woo"},
	["uncut_emerald"] 				 = {["name"] = "uncut_emerald", 			  	["label"] = "Uncut Emerald", 			["weight"] = 100, 		["type"] = "item", 		["image"] = "uncut_emerald.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = "A rough Emerald"},
	["uncut_ruby"] 					 = {["name"] = "uncut_ruby", 			  	  	["label"] = "Uncut Ruby", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "uncut_ruby.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = "A rough Ruby"},
	["uncut_diamond"] 				 = {["name"] = "uncut_diamond", 			  	["label"] = "Uncut Diamond", 			["weight"] = 100, 		["type"] = "item", 		["image"] = "uncut_diamond.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = "A rough Diamond"},
	["uncut_sapphire"] 				 = {["name"] = "uncut_sapphire", 			  	["label"] = "Uncut Sapphire", 			["weight"] = 100, 		["type"] = "item", 		["image"] = "uncut_sapphire.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = "A rough Sapphire"},
	["emerald"] 					 = {["name"] = "emerald", 			  	  		["label"] = "Emerald", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "emerald.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = "A Emerald that shimmers"},
	["ruby"] 						 = {["name"] = "ruby", 			  	  			["label"] = "Ruby", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "ruby.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = "A Ruby that shimmers"},
	["diamond"] 					 = {["name"] = "diamond", 			  	  		["label"] = "Diamond", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "diamond.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = "A Diamond that shimmers"},
	["sapphire"] 					 = {["name"] = "sapphire", 			  	  		["label"] = "Sapphire",					["weight"] = 100, 		["type"] = "item", 		["image"] = "sapphire.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = "A Sapphire that shimmers"},
	["gold_ring"] 					 = {["name"] = "gold_ring", 			  	  	["label"] = "Gold Ring", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "gold_ring.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil, 	["created"] = nil,	["decay"] = 20.0,  ["description"] = ""},
	["diamond_ring"] 				 = {["name"] = "diamond_ring", 			  	  	["label"] = "Diamond Ring", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "diamond_ring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},
	["ruby_ring"] 					 = {["name"] = "ruby_ring", 			  	  	["label"] = "Ruby Ring", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "ruby_ring.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},
	["sapphire_ring"] 				 = {["name"] = "sapphire_ring", 			  	["label"] = "Sapphire Ring", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "sapphire_ring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},
	["emerald_ring"] 				 = {["name"] = "emerald_ring", 			  	  	["label"] = "Emerald Ring", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "emerald_ring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},
	["silver_ring"] 				 = {["name"] = "silver_ring", 			  		["label"] = "Silver Ring", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "silver_ring.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},
	["diamond_ring_silver"] 		 = {["name"] = "diamond_ring_silver", 		  	["label"] = "Diamond Ring Silver", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "diamond_ring_silver.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},
	["ruby_ring_silver"] 			 = {["name"] = "ruby_ring_silver", 			  	["label"] = "Ruby Ring Silver", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "ruby_ring_silver.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},
	["sapphire_ring_silver"] 		 = {["name"] = "sapphire_ring_silver", 		 	["label"] = "Sapphire Ring Silver", 	["weight"] = 200, 		["type"] = "item", 		["image"] = "sapphire_ring_silver.png", ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},
	["emerald_ring_silver"] 		 = {["name"] = "emerald_ring_silver", 		  	["label"] = "Emerald Ring Silver", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "emerald_ring_silver.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},

	["goldchain"] 				 	 = {["name"] = "goldchain", 			  	  	["label"] = "Golden Chain", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "goldchain.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},
	["diamond_necklace"] 			 = {["name"] = "diamond_necklace", 			  	["label"] = "Diamond Necklace", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "diamond_necklace.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},
	["ruby_necklace"] 				 = {["name"] = "ruby_necklace", 			  	["label"] = "Ruby Necklace", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "ruby_necklace.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},
	["sapphire_necklace"] 			 = {["name"] = "sapphire_necklace", 			["label"] = "Sapphire Necklace", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "sapphire_necklace.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},
	["emerald_necklace"] 			 = {["name"] = "emerald_necklace", 			  	["label"] = "Emerald Necklace", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "emerald_necklace.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},

	["silverchain"] 				 = {["name"] = "silverchain", 			  	 	["label"] = "Silver Chain", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "silverchain.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},
	["diamond_necklace_silver"] 	 = {["name"] = "diamond_necklace_silver", 		["label"] = "Diamond Necklace Silver", 	["weight"] = 200, 		["type"] = "item", 		["image"] = "diamond_necklace_silver.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},
	["ruby_necklace_silver"] 		 = {["name"] = "ruby_necklace_silver", 			["label"] = "Ruby Necklace Silver", 	["weight"] = 200, 		["type"] = "item", 		["image"] = "ruby_necklace_silver.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},
	["sapphire_necklace_silver"] 	 = {["name"] = "sapphire_necklace_silver", 		["label"] = "Sapphire Necklace Silver", ["weight"] = 200, 		["type"] = "item", 		["image"] = "sapphire_necklace_silver.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},
	["emerald_necklace_silver"] 	 = {["name"] = "emerald_necklace_silver", 		["label"] = "Emerald Necklace Silver", 	["weight"] = 200, 		["type"] = "item", 		["image"] = "emerald_necklace_silver.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},

	["goldearring"] 				 = {["name"] = "goldearring", 				  	["label"] = "Golden Earrings", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "gold_earring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},
	["diamond_earring"] 			 = {["name"] = "diamond_earring", 			  	["label"] = "Diamond Earrings", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "diamond_earring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},
	["ruby_earring"] 				 = {["name"] = "ruby_earring", 			  		["label"] = "Ruby Earrings", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "ruby_earring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},
	["sapphire_earring"] 			 = {["name"] = "sapphire_earring", 				["label"] = "Sapphire Earrings", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "sapphire_earring.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},
	["emerald_earring"] 			 = {["name"] = "emerald_earring", 			  	["label"] = "Emerald Earrings", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "emerald_earring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},

	["silverearring"] 				 = {["name"] = "silverearring", 				["label"] = "Silver Earrings", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "silver_earring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},
	["diamond_earring_silver"] 		 = {["name"] = "diamond_earring_silver", 		["label"] = "Diamond Earrings Silver", 	["weight"] = 200, 		["type"] = "item", 		["image"] = "diamond_earring_silver.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},
	["ruby_earring_silver"] 		 = {["name"] = "ruby_earring_silver", 			["label"] = "Ruby Earrings Silver", 	["weight"] = 200, 		["type"] = "item", 		["image"] = "ruby_earring_silver.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},
	["sapphire_earring_silver"] 	 = {["name"] = "sapphire_earring_silver", 		["label"] = "Sapphire Earrings Silver", ["weight"] = 200, 		["type"] = "item", 		["image"] = "sapphire_earring_silver.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},
	["emerald_earring_silver"] 		 = {["name"] = "emerald_earring_silver", 		["label"] = "Emerald Earrings Silver", 	["weight"] = 200, 		["type"] = "item", 		["image"] = "emerald_earring_silver.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},

	["carbon"] 					 	 = {["name"] = "carbon", 			  	  		["label"] = "Carbon", 					["weight"] = 1000, 		["type"] = "item", 		["image"] = "carbon.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = "Carbon, a base ore."},
	["ironore"] 					 = {["name"] = "ironore", 			  	  		["label"] = "Iron Ore", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "ironore.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = "Iron, a base ore."},
	["copperore"] 					 = {["name"] = "copperore", 			  	  	["label"] = "Copper Ore", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "copperore.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = "Copper, a base ore."},
	["goldore"] 					 = {["name"] = "goldore", 			  	  		["label"] = "Gold Ore", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "goldore.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = "Gold Ore"},
	["silverore"] 					 = {["name"] = "silverore", 			  	  	["label"] = "Silver Ore", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "silverore.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = "Silver Ore"},
	["goldingot"] 					 = {["name"] = "goldingot", 			  	  	["label"] = "Gold Ingot", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "goldingot.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},
	["silveringot"] 				 = {["name"] = "silveringot", 			  	  	["label"] = "Silver Ingot", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "silveringot.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = ""},
	["pickaxe"] 					 = {["name"] = "pickaxe", 			  	  		["label"] = "Pickaxe", 					["weight"] = 1000, 		["type"] = "item", 		["image"] = "pickaxe.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = "" },
	["miningdrill"] 				 = {["name"] = "miningdrill", 			  	  	["label"] = "Mining Drill", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "miningdrill.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = "" },
	["mininglaser"] 				 = {["name"] = "mininglaser", 			  	  	["label"] = "Mining Laser", 			["weight"] = 900, 		["type"] = "item", 		["image"] = "mininglaser.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = "" },
	["drillbit"] 					 = {["name"] = "drillbit", 			  	  		["label"] = "Drill Bit", 				["weight"] = 10, 		["type"] = "item", 		["image"] = "drillbit.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = "" },
	["goldpan"] 					 = {["name"] = "goldpan", 			  	  		["label"] = "Gold Panning Tray", 		["weight"] = 10, 		["type"] = "item", 		["image"] = "goldpan.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = "" },
	["bottle"] 						 = {["name"] = "bottle", 			  	  		["label"] = "Empty Bottle", 			["weight"] = 10, 		["type"] = "item", 		["image"] = "bottle.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = "A glass bottle"},
	["can"] 						 = {["name"] = "can", 			  	  			["label"] = "Empty Can", 				["weight"] = 10, 		["type"] = "item", 		["image"] = "can.png", 					["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,	["created"] = nil,	["decay"] = 20.0,   ["description"] = "An empty can, good for recycling"},


    -- GunDrop Items
	["goldenphone"]  = {["name"] = "goldenphone", ["label"] = "Golden Satellite Phone",	 ["weight"] = 200, 		["type"] = "item", 		["image"] = "goldenphone.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil, ["decay"] = 20.0,  ["description"] = "A communication device used to contact russian mafia."},
    ["redphone"]     = {["name"] = "redphone",    ["label"] = "Red Satellite Phone",	 ["weight"] = 200, 		["type"] = "item", 		["image"] = "redphone.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil, ["decay"] = 20.0,  ["description"] = "A communication device used to contact russian mafia."},
    ["greenphone"] 	 = {["name"] = "greenphone",  ["label"] = "Green Satellite Phone",	 ["weight"] = 200, 		["type"] = "item", 		["image"] = "greenphone.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil, ["decay"] = 20.0,  ["description"] = "A communication device used to contact russian mafia."},

	


	-- Chop Shop --
    ['carpart_wheel']                  = {['name'] = 'carpart_wheel',                 ['label'] = 'Car Wheel',                 ['weight'] = 10000,         ['type'] = 'item',         ['image'] = 'carpart_wheel.png',         ['unique'] = false,     ['useable'] = false,     ['shouldClose'] = true,       ['combinable'] = nil,   ['description'] = 'A wheel from a vehicle'},
    ['carpart_door']                   = {['name'] = 'carpart_door',                  ['label'] = 'Car Door',                  ['weight'] = 15000,         ['type'] = 'item',         ['image'] = 'carpart_door.png',          ['unique'] = false,     ['useable'] = false,     ['shouldClose'] = true,       ['combinable'] = nil,   ['description'] = 'A door from a vehicle'},
    ['carpart_hood']                   = {['name'] = 'carpart_hood',                  ['label'] = 'Car Hood',                  ['weight'] = 15000,         ['type'] = 'item',         ['image'] = 'carpart_hood.png',          ['unique'] = false,     ['useable'] = false,     ['shouldClose'] = true,       ['combinable'] = nil,   ['description'] = 'A hood from a vehicle'},
    ['carpart_trunk']                  = {['name'] = 'carpart_trunk',                 ['label'] = 'Car Trunk',                 ['weight'] = 15000,         ['type'] = 'item',         ['image'] = 'carpart_trunk.png',         ['unique'] = false,     ['useable'] = false,     ['shouldClose'] = true,       ['combinable'] = nil,   ['description'] = 'A trunk from a vehicle'},

    -- Bank Robbery Items
    ["encrypted_hdd"] 				 = {["name"] = "encrypted_hdd", 			  	["label"] = "Hard Drive", 	["weight"] = 100, 		["type"] = "item", 		["image"] = "encrypted_hdd.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A encrypted stoarage device, may contain passwords..."},
	["laptop_green"] 		 	     = {["name"] = "laptop_green", 					["label"] = "Green Laptop", 			["weight"] = 15000, 	    ["type"] = "item", 		["image"] = "laptop_green.png", 		["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A security Laptop"},
	["laptop_red"] 		 	     	 = {["name"] = "laptop_red", 					["label"] = "Red Laptop", 				["weight"] = 15000, 	    ["type"] = "item", 		["image"] = "laptop_red.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A security Laptop"},
	["laptop_blue"] 				 = {["name"] = "laptop_blue", 			  	  	["label"] = "Blue Laptop", 				["weight"] = 15000, 		["type"] = "item", 		["image"] = "laptop_blue.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A security Laptop"},
	["laptop_gold"] 			 	 = {["name"] = "laptop_gold", 			  		["label"] = "Gold Laptop", 				["weight"] = 15000, 		["type"] = "item", 		["image"] = "laptop_gold.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A security Laptop"},
	-- Use these if you want tradeable laptops
	["usb_green"] 		 	     	 = {["name"] = "usb_green", 					["label"] = "Green USB", 				["weight"] = 5000, 	    	["type"] = "item", 		["image"] = "usb_green.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A security USB"},
	["usb_red"] 		 	     	 = {["name"] = "usb_red", 						["label"] = "Red USB", 					["weight"] = 5000, 	    	["type"] = "item", 		["image"] = "usb_red.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A security USB"},
	["usb_blue"] 				 	 = {["name"] = "usb_blue", 			  	  		["label"] = "Blue USB", 				["weight"] = 5000, 			["type"] = "item", 		["image"] = "pacific_usb.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A security USB"},
	["usb_gold"] 			 	 	 = {["name"] = "usb_gold", 			  			["label"] = "Gold USB", 				["weight"] = 5000, 			["type"] = "item", 		["image"] = "usb_blue.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A security USB"},

   -- Fishing Items
   ['fishingrod'] 					 = {['name'] = 'fishingrod', 					['label'] = 'Fishing Rod', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fishingrod.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,		['combinable'] = nil,   ['description'] = 'With this I can catch the fish..'},
   ['fishingbait'] 				 = {['name'] = 'fishingbait', 					['label'] = 'Fishing Bait', 			['weight'] = 50, 		['type'] = 'item', 		['image'] = 'fishingbait.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'With this I can lure the fishessss..'},
   ['catfish'] 			 		 = {['name'] = 'catfish', 						['label'] = 'Catfish', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'catfish.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'A Fish'},
   ['fish'] 						 = {['name'] = 'fish', 							['label'] = 'Fish', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fish.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'A Fish'},
   ['fish2'] 						 = {['name'] = 'fish2', 						['label'] = 'Fish', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fish2.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'A Fish'},
   ['goldfish'] 					 = {['name'] = 'goldfish', 						['label'] = 'Goldfish', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'goldfish.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'A Fish'},
   ['largemouthbass'] 				 = {['name'] = 'largemouthbass', 				['label'] = 'Largemouth Bass', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'largemouthbass.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'A Fish'},
   ['redfish'] 					 = {['name'] = 'redfish', 						['label'] = 'Redfish', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'redfish.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'A Fish'},
   ['salmon'] 						 = {['name'] = 'salmon', 						['label'] = 'Salmon', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'salmon.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'A Fish'},
   ['stingray'] 					 = {['name'] = 'stingray', 						['label'] = 'Stingray', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'stingray.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'A Fish'},
   ['stripedbass'] 				 = {['name'] = 'stripedbass', 					['label'] = 'Striped Bass', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'stripedbass.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'A Fish'},
   ['whale'] 			 			 = {['name'] = 'whale', 						['label'] = 'Whale', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'whale.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'A Fish'},
   ['whale2'] 						 = {['name'] = 'whale2', 						['label'] = 'Whale', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'whale2.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,	['combinable'] = nil,   ['description'] = 'A Fish'},


   -- Kevin Delivery

   ["small-box"] 			     = {["name"] = "small-box",				    ["label"] = "Delivery Package",			   	["weight"] = 40000,    	["type"] = "item",		["image"] = "small-box.png",         			["unique"] = true,		["useable"] = false,	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "",				["created"] = nil, 		["decay"] = 1.0 },
	["medium-box"] 			     = {["name"] = "medium-box",				    ["label"] = "Delivery Package",			   	["weight"] = 40000,    	["type"] = "item",		["image"] = "medium-box.png",         			["unique"] = true,		["useable"] = false,	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "",				["created"] = nil, 		["decay"] = 1.0 },
	["large-box"] 			     = {["name"] = "large-box",				    ["label"] = "Delivery Package",			   	["weight"] = 40000,    	["type"] = "item",		["image"] = "large-box.png",         			["unique"] = true,		["useable"] = false,	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "",				["created"] = nil, 		["decay"] = 1.0 },
	["large-box2"] 			     = {["name"] = "large-box2",				    ["label"] = "Delivery Package",			   	["weight"] = 40000,    	["type"] = "item",		["image"] = "large-box2.png",         			["unique"] = true,		["useable"] = false,	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "",				["created"] = nil, 		["decay"] = 1.0 },


	-- Trucking Items
	-- ["trucker_contractlvl1"] 	= { ["name"] = "trucker_contractlvl1", 	    ["label"] = "Trucker Contract Level 1", 	["weight"] = 100, 	["type"] = "item", 	["image"] = "trucker_contractlvl1.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, 	["combinable"] = nil, 	["description"] = "Submit me to The Owner And get Paid"},
	-- ["trucker_contractlvl2"] 	= { ["name"] = "trucker_contractlvl2", 	    ["label"] = "Trucker Contract Level 2", 	["weight"] = 100, 	["type"] = "item", 	["image"] = "trucker_contractlvl2.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, 	["combinable"] = nil, 	["description"] = "Submit me to The Owner And get Paid"},
	-- ["trucker_contractlvl3"] 	= {["name"] = "trucker_contractlvl3",	    ["label"] = "Trucker Contract Level 3",	["weight"] = 100,	["type"] = "item",	["image"] = "trucker_contractlvl3.png",	        ["unique"] = false,	["useable"] = false,	["shouldClose"] = false,	["combinable"] = nil,	["description"] = "Submit me to The Owner And get Paid"},
	-- ["trucker_phone"]               = {["name"] = "trucker_phone",              ["label"] = "Trucker Phone",                ["weight"] = 100,       ["type"] = "item",      ["image"] = "trucker_phone.png",                ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = false,    ["combinable"] = nil,   ["description"] = "Phone of truckers"},


	--Drug Process Items
   ["wet_weed"] 		 	 	 	 = {["name"] = "wet_weed",           			["label"] = "Moist Weed",	 			["weight"] = 3000, 		["type"] = "item", 		["image"] = "wet_weed.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Wet weed that needs to be treated!"},
   ["coke"] 		 	 	 	     = {["name"] = "coke",           				["label"] = "Cocaine", 					["weight"] = 1000,		["type"] = "item", 		["image"] = "coke.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Processed cocaine"},
   ["coca_leaf"] 		 	 	 	 = {["name"] = "coca_leaf",           			["label"] = "Cocaine leaves",	 		["weight"] = 1500,		["type"] = "item", 		["image"] = "coca_leaf.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Cocaine leaves that must be processed !"},
   ["cannabis"] 			 		 = {["name"] = "cannabis", 						["label"] = "Cannabis", 				["weight"] = 2500, 		["type"] = "item", 		["image"] = "cannabis.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Uncured cannabis"},
   ["marijuana"] 			 		 = {["name"] = "marijuana", 					["label"] = "Marijuana", 				["weight"] = 500,		["type"] = "item", 		["image"] = "marijuana.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Some fine smelling buds."},
   ["chemicals"] 		 	 	 	 = {["name"] = "chemicals",           			["label"] = "Chemicals",	 			["weight"] = 1500, 		["type"] = "item", 		["image"] = "chemicals.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Chemicals, handle with care..."},
   ["poppyresin"] 		 	 	 	 = {["name"] = "poppyresin",           			["label"] = "Poppy resin",	 			["weight"] = 2000, 		["type"] = "item", 		["image"] = "poppyresin.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "It sticks to your fingers when you handle it."},
   ["heroin"] 		 	 	 	     = {["name"] = "heroin",           				["label"] = "Heroin",	 				["weight"] = 500, 		["type"] = "item", 		["image"] = "heroin.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Really addictive depressant..."},
   ["lsa"] 		 	 	 	         = {["name"] = "lsa",           				["label"] = "LSA",	 					["weight"] = 500, 		["type"] = "item", 		["image"] = "lsa.png", 					["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Almost ready to party..."},
   ["lsd"] 		 	 	 	         = {["name"] = "lsd",           				["label"] = "LSD",	 					["weight"] = 500, 		["type"] = "item", 		["image"] = "lsd.png", 					["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Lets get this party started!"},
   ["meth"] 		 	 	 	     = {["name"] = "meth",           				["label"] = "Meth",	 					["weight"] = 500, 		["type"] = "item", 		["image"] = "meth.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Really addictive stimulant..."},
   ["hydrochloric_acid"] 			 = {["name"] = "hydrochloric_acid", 			["label"] = "Hydrochloric Acid",		["weight"] = 1500, 		["type"] = "item", 		["image"] = "hydrochloric_acid.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Chemicals, handle with care!"},
   ["sodium_hydroxide"] 			 = {["name"] = "sodium_hydroxide", 				["label"] = "Sodium Hydroxide", 		["weight"] = 1500, 		["type"] = "item", 		["image"] = "sodium_hydroxide.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Chemicals, handle with care!"},
   ["sulfuric_acid"] 		 	 	 = {["name"] = "sulfuric_acid",           		["label"] = "Sulfuric Acid",	 		["weight"] = 1500, 		["type"] = "item", 		["image"] = "sulfuric_acid.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Chemicals, handle with care!"},
   ["thionyl_chloride"] 		 	 = {["name"] = "thionyl_chloride",           	["label"] = "Thionyl Chloride",	 		["weight"] = 1500, 		["type"] = "item", 		["image"] = "thionyl_chloride.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Chemicals, handle with care!"},
   ["liquidmix"] 		 	 	     = {["name"] = "liquidmix",           		    ["label"] = "Liquid Chem Mix",	 		["weight"] = 1500, 		["type"] = "item", 		["image"] = "liquidmix.png", 		    ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Chemicals, handle with care!"},
   ["bakingsoda"] 		 	 	     = {["name"] = "bakingsoda",           		    ["label"] = "Baking Soda",	 		    ["weight"] = 1500, 		["type"] = "item", 		["image"] = "bakingsoda.png", 		    ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Household Baking Soda!"},
   ["chemicalvapor"] 		 	     = {["name"] = "chemicalvapor",           	    ["label"] = "Chemical Vapors",	 		["weight"] = 1500, 		["type"] = "item", 		["image"] = "chemicalvapor.png", 	    ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "High Pressure Chemical Vapors, Explosive!"},
   ["trimming_scissors"] 		 	 = {["name"] = "trimming_scissors",           	["label"] = "Trimming Scissors",	 	["weight"] = 1500, 		["type"] = "item", 		["image"] = "trimming_scissors.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Very Sharp Trimming Scissors"},
   ['methtray'] 					 = {['name'] = 'methtray', 						['label'] = 'Meth Tray', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'meth_tray.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'make some meth'},
   ['methkey'] 					     = {['name'] = 'methkey', 						['label'] = 'Key A', 				    ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'keya.png', 			    ['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Random Key, with "Walter" Engraved on the Back...'},
   ['cocainekey'] 					 = {['name'] = 'cocainekey', 					['label'] = 'Key B', 				    ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'keyb.png', 			    ['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Random Key, with a "Razorblade" Engraved on the Back...'},
   ['weedkey'] 					     = {['name'] = 'weedkey', 						['label'] = 'Key C', 				    ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'keyc.png', 			    ['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Random Key, with a "Seed" Engraved on the Back...'},
   ['finescale'] 					 = {['name'] = 'finescale', 					['label'] = 'Fine Scale', 			    ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'finescale.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = false,   ['combinable'] = nil,   ['description'] = 'Scale Used for Fine Powders and Materials.'},
   ['coke_small_brick'] 		 	 = {['name'] = 'coke_small_brick', 				['label'] = 'Coke Package', 			['weight'] = 350, 		['type'] = 'item', 		['image'] = 'coke_small_brick.png', 	['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Small package of cocaine, mostly used for deals and takes a lot of space'},
	
   -- Gun Blueprints
   ['pistol_blueprint'] 		     = {['name'] = 'pistol_blueprint', 	            ['label'] = "<span style='color:red'>Pistol Blueprint</span>",         ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'pistol_blueprint.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'A Blueprint Used To Craft Pistols'},
   ['smg_blueprint'] 				 = {['name'] = 'smg_blueprint', 	            ['label'] = "<span style='color:red'>SMG Blueprint</span>",                ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'smg_blueprint.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'A Blueprint Used To Craft SMG'},
   ['auto_blueprint'] 				 = {['name'] = 'auto_blueprint', 	            ['label'] = "<span style='color:red'>Assault Blueprint</span>",                ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'auto_blueprint.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'A Blueprint Used To Craft Autos'},
 
 
   ["slushy"] 			             = {["name"] = "slushy", 				        ["label"] = "Slushy", 				    ["weight"] = 2000, 		["type"] = "item", 		["image"] = "slushy.png", 		            ["unique"] = false, 	    ["useable"] = true, 	    ["shouldClose"] = true,    ["combinable"] = nil,  ["created"] = nil, ["decay"] = 2.0,   ["description"] = "An Ice Slushy."},
   ['prime'] 			             = {['name'] = 'prime', 			            ['label'] = 'Sports Drink',             ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'primedrink.png', 		     	['unique'] = false, 	    ['useable'] = true,     	['shouldClose'] = true,       ['combinable'] = nil,       ['description'] = 'Full of Electrolytes..'}, 
   ['pepslice'] 				     = {['name'] = 'pepslice', 			        	['label'] = 'Pepperoni Slice',      	['weight'] = 200, 		['type'] = 'item', 		['image'] = 'pizza-slice.png', 				['unique'] = false,      	['useable'] = true, 	    ['shouldClose'] = true,       ['combinable'] = nil,   ["created"] = nil, ["decay"] = 0.4,      ['description'] = 'Something greasy to get you by..'}, 
   ['bsandwich'] 				     = {['name'] = 'bsandwich', 			     	['label'] = 'Breakfast Sandwich',    	['weight'] = 200, 		['type'] = 'item', 		['image'] = 'bsandwich.png', 				['unique'] = false,      	['useable'] = true, 	    ['shouldClose'] = true,       ['combinable'] = nil,    ["created"] = nil, ["decay"] = 0.4,     ['description'] = 'Something to start your day!'},
   ['popcorn'] 					     = {['name'] = 'popcorn', 			     	    ['label'] = 'Popcorn', 	                ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'popcorn.png', 			        ['unique'] = false, 	    ['useable'] = true,      	['shouldClose'] = true,       ['combinable'] = nil,       ['description'] = 'Salty treat to watch content..'}, 
   ['grillcheese'] 					 = {['name'] = 'grillcheese', 			     	['label'] = 'Grilled Cheese', 	         ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'grillcheese.png', 			    ['unique'] = false, 	    ['useable'] = true,      	['shouldClose'] = true,       ['combinable'] = nil,       ['description'] = 'Grilled Cheese Filled With Fiesta Blend Queso..'},  
  
 
   -- Regular Crafting


   ['gunpowder'] 				 = {['name'] = 'gunpowder', 	    ['label'] = "Gunpowder",         ['weight'] = 200, 		['type'] = 'item', 		['image'] = 'blueprint.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'A powder that creates electrical charge!'},

   -- Police Job

   ['broken_handcuffs'] 			 = {['name'] = 'broken_handcuffs', 			    ['label'] = 'Broken Handcuffs', 		['weight'] = 100, 		['type'] = 'item', 		['image'] = 'broken_handcuffs.png', 	['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'It\'s broken, maybe you can repair it?'},
   ['cuffkeys'] 				 	 = {['name'] = 'cuffkeys', 			    		['label'] = 'Cuff Keys', 				['weight'] = 75, 		['type'] = 'item', 		['image'] = 'cuffkeys.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Set them free !'},
   ['ziptie'] 				 	 	 = {['name'] = 'ziptie', 			    		['label'] = 'ZipTie', 					['weight'] = 50, 		['type'] = 'item', 		['image'] = 'ziptie.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Comes in handy when people misbehave. Maybe it can be used for something else?'},
   ['flush_cutter'] 				 = {['name'] = 'flush_cutter', 			    	['label'] = 'Flush Cutter', 			['weight'] = 50, 		['type'] = 'item', 		['image'] = 'flush_cutter.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Comes in handy when you want to cut zipties..'},
   ['bolt_cutter'] 				 = {['name'] = 'bolt_cutter', 			    	['label'] = 'Bolt Cutter', 				['weight'] = 50, 		['type'] = 'item', 		['image'] = 'bolt_cutter.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Wanna cut some metal items ?'},

    -- Ammo Robbery
	["vasebreaker"]       = {["name"] = "vasebreaker", 		["label"] = "Vase Breaker", 	    ["weight"] = 0, ["type"] = "item", 		["image"] = "police_stormram.png", 			["unique"] = true, 	["useable"] = true, ["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Amunation vase weakener (Different serial number every tsunami)"},

    
	-- mt-methlabs
	["meth_jobrecive"]  		= {["name"] = "meth_jobrecive", 				["label"] = "Key Job Recive", 								["weight"] = 100, 		["type"] = "item", 			["image"] = "meth_jobrecive.png", 					["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["meth_key"]  				= {["name"] = "meth_key", 						["label"] = "Labs Key", 									["weight"] = 100, 		["type"] = "item", 			["image"] = "meth_key.png", 						["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["meth"]  					= {["name"] = "meth", 							["label"] = "Meth", 										["weight"] = 100, 		["type"] = "item", 			["image"] = "meth.png", 							["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["hydrochloric_acid"]  		= {["name"] = "hydrochloric_acid", 				["label"] = "Hydrochloric Acid", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "hydrochloric_acid.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["sodium_hydroxide"]  		= {["name"] = "sodium_hydroxide", 				["label"] = "Sodium Hydroxide", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "sodium_hydroxide.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["sulfuric_acid"]  			= {["name"] = "sulfuric_acid", 					["label"] = "Sulfuric Acid", 								["weight"] = 100, 		["type"] = "item", 			["image"] = "sulfuric_acid.png", 					["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["meth_baggies"]  			= {["name"] = "meth_baggies", 					["label"] = "Meth Baggies", 								["weight"] = 100, 		["type"] = "item", 			["image"] = "meth_baggies.png", 					["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["meth_epmty_baggies"]  	= {["name"] = "meth_epmty_baggies", 			["label"] = "Empty Baggies", 								["weight"] = 100, 		["type"] = "item", 			["image"] = "meth_epmty_baggies.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},



-- Carboosting
["boostinglaptop"] 		 	 	 = {["name"] = "boostinglaptop",           		["label"] = "Boosting Laptop",	 		["weight"] = 1000, 		["type"] = "item", 		["image"] = "boostinglaptop.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "A laptop used for boosting contracts."},
["boostingdisabler"] 		 	 = {["name"] = "boostingdisabler",           	["label"] = "Tracking Disabler",	 	["weight"] = 1000, 		["type"] = "item", 		["image"] = "boostingdisabler.png", 	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "This small tool can disable these pesky trackers."},
	


    -- Rentals

	["rentalpapers"]				 = {["name"] = "rentalpapers",           		["label"] = "Rental Documents",	 		["weight"] = 0, 		["type"] = "item", 		["image"] = "rentalpapers.png", 		["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Proof that you rented this vehicle.."},

-- Fishing
["fish"] 			 		 	 = {["name"] = "fish", 							["label"] = "Fish",                     ["weight"] = 1100,      ["type"] = "item",      ["image"] = "fish.png",                 ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
["killerwhalemeat"] 			 = {["name"] = "killerwhalemeat", 				["label"] = "killerwhalemeat",          ["weight"] = 1100,      ["type"] = "item",      ["image"] = "killerwhalemeat.png",      ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
["stingraymeat"] 			     = {["name"] = "stingraymeat", 				    ["label"] = "stingraymeat",              ["weight"] = 1111,      ["type"] = "item",      ["image"] = "stingraymeat.png",         ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
["tigersharkmeat"] 			     = {["name"] = "tigersharkmeat", 				["label"] = "tigersharkmeat",            ["weight"] = 1111,      ["type"] = "item",      ["image"] = "tigersharkmeat.png",       ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
["catfish"] 			         = {["name"] = "catfish", 				        ["label"] = "catfish",                   ["weight"] = 1111,      ["type"] = "item",      ["image"] = "catfish.png",              ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
["salmon"] 			             = {["name"] = "salmon", 				        ["label"] = "salmon",                    ["weight"] = 1111,      ["type"] = "item",      ["image"] = "salmon.png",               ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
["largemouthbass"] 			     = {["name"] = "largemouthbass", 				["label"] = "largemouthbass",            ["weight"] = 1111,      ["type"] = "item",      ["image"] = "largemouthbass.png",       ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
["goldfish"] 			         = {["name"] = "goldfish", 			        	["label"] = "goldfish",                  ["weight"] = 1111,      ["type"] = "item",      ["image"] = "goldfish.png",             ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
["redfish"] 			         = {["name"] = "redfish", 			        	["label"] = "redfish",                   ["weight"] = 1111,      ["type"] = "item",      ["image"] = "redfish.png",              ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
["bluefish"] 			         = {["name"] = "bluefish", 			        	["label"] = "bluefish",                  ["weight"] = 1111,      ["type"] = "item",      ["image"] = "bluefish.png",             ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
["stripedbass"] 			     = {["name"] = "stripedbass", 			        ["label"] = "stripedbass",               ["weight"] = 1111,      ["type"] = "item",      ["image"] = "stripedbass.png",          ["unique"] = false,     ["useable"] = true,     ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fish for Fishing."},
["fishingrod"] 			 		 = {["name"] = "fishingrod", 					["label"] = "Fishing Rod", 				["weight"] = 5000, 		["type"] = "item", 		["image"] = "fishingrod.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A fishing rod for adventures with friends!!"},	
["fishingbait"] 			 	 = {["name"] = "fishingbait", 					["label"] = "Fish Bait", 				["weight"] = 400, 		["type"] = "item", 	["image"] = "fishbait.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,	   ["combinable"] = nil,   ["description"] = "A fish bait"},
   
-- Hunting


    ["meatdeer"] 		 			 	 = {["name"] = "meatdeer",       	    		["label"] = "Deer Horns",	 				["weight"] = 100, 		["type"] = "item", 		["image"] = "deerhorns.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Deer Horns"},
	["meatpig"] 		 			 	 = {["name"] = "meatpig",       	    		["label"] = "Pig Meat",	 					["weight"] = 100, 		["type"] = "item", 		["image"] = "pigpelt.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Pig Meat"},
	["meatboar"] 		 			 	 = {["name"] = "meatboar",       	    		["label"] = "Boar Tusks",	 				["weight"] = 100, 		["type"] = "item", 		["image"] = "boartusks.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Boar Tusks"},
	["meatlion"] 		 			 	 = {["name"] = "meatlion",       	    		["label"] = "Cougar Claws",	 				["weight"] = 100, 		["type"] = "item", 		["image"] = "cougarclaw.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Cougar Claw"},
	["meatcow"] 		 			 	 = {["name"] = "meatcow",       	    		["label"] = "Cow Pelt",	 					["weight"] = 100, 		["type"] = "item", 		["image"] = "cowpelt.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Cow Pelt"},
	["meatrabbit"] 		 			 	 = {["name"] = "meatrabbit",       	    		["label"] = "Rabbit Fur",	 				["weight"] = 100, 		["type"] = "item", 		["image"] = "rabbitfur.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Rabbit Fur"},
	["meatbird"] 		 			 	 = {["name"] = "meatbird",       	    		["label"] = "Bird Feather",	 				["weight"] = 100, 		["type"] = "item", 		["image"] = "birdfeather.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Bird Feather"},
	["meatcoyote"] 		 			 	 = {["name"] = "meatcoyote",       	    		["label"] = "Coyote Pelt",	 				["weight"] = 100, 		["type"] = "item", 		["image"] = "coyotepelt.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Coyote Pelt"},
	["huntingbait"] 		 			 = {["name"] = "huntingbait",       	    	["label"] = "Hunting Bait",	 				["weight"] = 150, 		["type"] = "item", 		["image"] = "huntingbait.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = "Hunting Bait"},



	--miniheists
	["lab-usb"]                      = {["name"] = "lab-usb", 				        ["label"] = "USB Research", 			["weight"] = 500, 		["type"] = "item", 		["image"] = "lab-usb.png", 		        ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "A USB filled with loads of complicated numbers and letters... Big brain stuff!"},
	["mw-usb"]                       = {["name"] = "mw-usb", 				        ["label"] = "Top Secret Data", 			["weight"] = 500, 		["type"] = "item", 		["image"] = "mw-usb.png", 			    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Contains some very lewd photos and a interesting statement from a high ranking official!"},
	['lab-samples'] 		         = {['name'] = 'lab-samples', 			  	   	['label'] = 'Research Samples', 	    ['weight'] = 500, 		['type'] = 'item', 		['image'] = 'lab-samples.png', 		   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'some creepy samples!'},
	['lab-files'] 				     = {['name'] = 'lab-files', 			  	   	['label'] = 'Research Files', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'lab-files.png', 		   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'lots of big words in these!'},

	["liquorkey"] 					 = {["name"] = "liquorkey", 					["label"] = "Liquor Storeroom", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "liquorkey.png", 			["unique"] = false, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A curious key with the label 'Liquor Storeroom'."},
    ["dirtymoney"]                   = {["name"] = "dirtymoney",                    ["label"] = "Dirty Money",              ["weight"] = 0,         ["type"] = "item",      ["image"] = "dirtymoney.png",           ["unique"] = false,		["useable"] = true,     ["shouldClose"] = false,    ["combinable"] = nil,  ["description"] = "The ill-gotten proceeds of criminal activity."}, 
    ['usb2'] 				 	 	 = {['name'] = 'usb2', 			  	  			['label'] = 'Red USB', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'usbred.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'The Blank USB has downloaded a particular encryption marking it red.'},

	-- essential-mining stuff
	["stone"] 		 	 			 = {["name"] = "stone",           				["label"] = "Stone",	 				["weight"] = 2000, 	    ["type"] = "item", 		["image"] = "stone.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "Stone woo"},

	["uncut_emerald"] 				 = {["name"] = "uncut_emerald", 			  	["label"] = "Uncut Emerald", 			["weight"] = 100, 		["type"] = "item", 		["image"] = "uncut_emerald.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "A rough Emerald"},
	["uncut_ruby"] 					 = {["name"] = "uncut_ruby", 			  	  	["label"] = "Uncut Ruby", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "uncut_ruby.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "A rough Ruby"},
	["uncut_diamond"] 				 = {["name"] = "uncut_diamond", 			  	["label"] = "Uncut Diamond", 			["weight"] = 100, 		["type"] = "item", 		["image"] = "uncut_diamond.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "A rough Diamond"},
	["uncut_sapphire"] 				 = {["name"] = "uncut_sapphire", 			  	["label"] = "Uncut Sapphire", 			["weight"] = 100, 		["type"] = "item", 		["image"] = "uncut_sapphire.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "A rough Sapphire"},
	
	["emerald"] 					 = {["name"] = "emerald", 			  	  		["label"] = "Emerald", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "emerald.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "A Emerald that shimmers"},
	["ruby"] 						 = {["name"] = "ruby", 			  	  			["label"] = "Ruby", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "ruby.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "A Ruby that shimmers"},
	["diamond"] 					 = {["name"] = "diamond", 			  	  		["label"] = "Diamond", 					["weight"] = 100, 		["type"] = "item", 		["image"] = "diamond.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "A Diamond that shimmers"},
	["sapphire"] 					 = {["name"] = "sapphire", 			  	  		["label"] = "Sapphire",					["weight"] = 100, 		["type"] = "item", 		["image"] = "sapphire.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "A Sapphire that shimmers"},
	
	["gold_ring"] 					 = {["name"] = "gold_ring", 			  	  	["label"] = "Gold Ring", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "gold_ring.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	["diamond_ring"] 				 = {["name"] = "diamond_ring", 			  	  	["label"] = "Diamond Ring", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "diamond_ring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	["ruby_ring"] 					 = {["name"] = "ruby_ring", 			  	  	["label"] = "Ruby Ring", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "ruby_ring.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	["sapphire_ring"] 				 = {["name"] = "sapphire_ring", 			  	["label"] = "Sapphire Ring", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "sapphire_ring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	["emerald_ring"] 				 = {["name"] = "emerald_ring", 			  	  	["label"] = "Emerald Ring", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "emerald_ring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	
	["silver_ring"] 				 = {["name"] = "silver_ring", 			  		["label"] = "Silver Ring", 				["weight"] = 200, 		["type"] = "item", 		["image"] = "silver_ring.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	["diamond_ring_silver"] 		 = {["name"] = "diamond_ring_silver", 		  	["label"] = "Diamond Ring Silver", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "diamond_ring_silver.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	["ruby_ring_silver"] 			 = {["name"] = "ruby_ring_silver", 			  	["label"] = "Ruby Ring Silver", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "ruby_ring_silver.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	["sapphire_ring_silver"] 		 = {["name"] = "sapphire_ring_silver", 		 	["label"] = "Sapphire Ring Silver", 	["weight"] = 200, 		["type"] = "item", 		["image"] = "sapphire_ring_silver.png", ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	["emerald_ring_silver"] 		 = {["name"] = "emerald_ring_silver", 		  	["label"] = "Emerald Ring Silver", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "emerald_ring_silver.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	
	["goldchain"] 				 	 = {["name"] = "goldchain", 			  	  	["label"] = "Golden Chain", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "goldchain.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	["diamond_necklace"] 			 = {["name"] = "diamond_necklace", 			  	["label"] = "Diamond Necklace", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "diamond_necklace.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	["ruby_necklace"] 				 = {["name"] = "ruby_necklace", 			  	["label"] = "Ruby Necklace", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "ruby_necklace.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	["sapphire_necklace"] 			 = {["name"] = "sapphire_necklace", 			["label"] = "Sapphire Necklace", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "sapphire_necklace.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	["emerald_necklace"] 			 = {["name"] = "emerald_necklace", 			  	["label"] = "Emerald Necklace", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "emerald_necklace.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	
	["silverchain"] 				 = {["name"] = "silverchain", 			  	 	["label"] = "Silver Chain", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "silverchain.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	["diamond_necklace_silver"] 	 = {["name"] = "diamond_necklace_silver", 		["label"] = "Diamond Necklace Silver", 	["weight"] = 200, 		["type"] = "item", 		["image"] = "diamond_necklace_silver.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	["ruby_necklace_silver"] 		 = {["name"] = "ruby_necklace_silver", 			["label"] = "Ruby Necklace Silver", 	["weight"] = 200, 		["type"] = "item", 		["image"] = "ruby_necklace_silver.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	["sapphire_necklace_silver"] 	 = {["name"] = "sapphire_necklace_silver", 		["label"] = "Sapphire Necklace Silver", ["weight"] = 200, 		["type"] = "item", 		["image"] = "sapphire_necklace_silver.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	["emerald_necklace_silver"] 	 = {["name"] = "emerald_necklace_silver", 		["label"] = "Emerald Necklace Silver", 	["weight"] = 200, 		["type"] = "item", 		["image"] = "emerald_necklace_silver.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	
	["goldearring"] 				 = {["name"] = "goldearring", 				  	["label"] = "Golden Earrings", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "gold_earring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	["diamond_earring"] 			 = {["name"] = "diamond_earring", 			  	["label"] = "Diamond Earrings", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "diamond_earring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	["ruby_earring"] 				 = {["name"] = "ruby_earring", 			  		["label"] = "Ruby Earrings", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "ruby_earring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	["sapphire_earring"] 			 = {["name"] = "sapphire_earring", 				["label"] = "Sapphire Earrings", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "sapphire_earring.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	["emerald_earring"] 			 = {["name"] = "emerald_earring", 			  	["label"] = "Emerald Earrings", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "emerald_earring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	
	["silverearring"] 				 = {["name"] = "silverearring", 				["label"] = "Silver Earrings", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "silver_earring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	["diamond_earring_silver"] 		 = {["name"] = "diamond_earring_silver", 		["label"] = "Diamond Earrings Silver", 	["weight"] = 200, 		["type"] = "item", 		["image"] = "diamond_earring_silver.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	["ruby_earring_silver"] 		 = {["name"] = "ruby_earring_silver", 			["label"] = "Ruby Earrings Silver", 	["weight"] = 200, 		["type"] = "item", 		["image"] = "ruby_earring_silver.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	["sapphire_earring_silver"] 	 = {["name"] = "sapphire_earring_silver", 		["label"] = "Sapphire Earrings Silver", ["weight"] = 200, 		["type"] = "item", 		["image"] = "sapphire_earring_silver.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	["emerald_earring_silver"] 		 = {["name"] = "emerald_earring_silver", 		["label"] = "Emerald Earrings Silver", 	["weight"] = 200, 		["type"] = "item", 		["image"] = "emerald_earring_silver.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	
	["carbon"] 					 	 = {["name"] = "carbon", 			  	  		["label"] = "Carbon", 					["weight"] = 1000, 		["type"] = "item", 		["image"] = "carbon.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "Carbon, a base ore."},
	["ironore"] 					 = {["name"] = "ironore", 			  	  		["label"] = "Iron Ore", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "ironore.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "Iron, a base ore."},
	["copperore"] 					 = {["name"] = "copperore", 			  	  	["label"] = "Copper Ore", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "copperore.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "Copper, a base ore."},
	["goldore"] 					 = {["name"] = "goldore", 			  	  		["label"] = "Gold Ore", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "goldore.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "Gold Ore"},
	["silverore"] 					 = {["name"] = "silverore", 			  	  	["label"] = "Silver Ore", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "silverore.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "Silver Ore"},
	
	["goldingot"] 					 = {["name"] = "goldingot", 			  	  	["label"] = "Gold Ingot", 				["weight"] = 1000, 		["type"] = "item", 		["image"] = "goldingot.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	["silveringot"] 				 = {["name"] = "silveringot", 			  	  	["label"] = "Silver Ingot", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "silveringot.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = ""},
	
	["pickaxe"] 					 = {["name"] = "pickaxe", 			  	  		["label"] = "Pickaxe", 					["weight"] = 1000, 		["type"] = "item", 		["image"] = "pickaxe.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "" },
	["miningdrill"] 				 = {["name"] = "miningdrill", 			  	  	["label"] = "Mining Drill", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "miningdrill.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "" },
	["mininglaser"] 				 = {["name"] = "mininglaser", 			  	  	["label"] = "Mining Laser", 			["weight"] = 900, 		["type"] = "item", 		["image"] = "mininglaser.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "" },
	["drillbit"] 					 = {["name"] = "drillbit", 			  	  		["label"] = "Drill Bit", 				["weight"] = 10, 		["type"] = "item", 		["image"] = "drillbit.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "" },
	
	["goldpan"] 					 = {["name"] = "goldpan", 			  	  		["label"] = "Gold Panning Tray", 		["weight"] = 10, 		["type"] = "item", 		["image"] = "goldpan.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "" },
	
	["bottle"] 						 = {["name"] = "bottle", 			  	  		["label"] = "Empty Bottle", 			["weight"] = 10, 		["type"] = "item", 		["image"] = "bottle.png", 				["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "A glass bottle"},
	["can"] 						 = {["name"] = "can", 			  	  			["label"] = "Empty Can", 				["weight"] = 10, 		["type"] = "item", 		["image"] = "can.png", 					["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "An empty can, good for recycling"},
    ['matticket']					 = {['name'] = 'matticket', 					['label'] = 'Material Voucher',			 ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'matticket.png', 			['unique'] = false,		['useable'] = false, 	['shouldClose'] = false,	   ['combinable'] = nil,   ['description'] = "Turn this in at sanitation to be rewarded with some scrapped material"},
    ['recyclable_material']          = {['name'] = 'recyclable_material',           ['label'] = 'Recyclable Material',      ['weight'] = 10,       ['type'] = 'item',      ['image'] = 'recyclable-material.png',  ['unique'] = false,     ['useable'] = false,    ['shouldclose'] = false,   ['combinable'] = nil,   ['description'] = 'Recycling Materials'}, 

    ["weed"] 						 = {["name"] = "weed", 			 		    	["label"] = "Unpackaged Weed", 	  		["weight"] = 200, 	  	["type"] = "item", 		["image"] = "weedbrick.png", 				["unique"] = false, 	  ["useable"] = true, 	["shouldClose"] = true,        ["combinable"] = nil,   ["description"] = "Unpackaged Weed"},

    ["packagedweed"]				 = {["name"] = "packagedweed", 					["label"] = "Weed Baggy", 		    	["weight"] = 100, 		["type"] = "item", 		["image"] = "weed_baggy.png", 		["unique"] = false, 	  ["useable"] = true, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "Baggied filled with 2G of weed"},

    ["packagedmeth"]				 = {["name"] = "packagedmeth", 					["label"] = "Meth", 		    		["weight"] = 100, 		["type"] = "item", 		["image"] = "meth_bag.png", 		["unique"] = false, 	  ["useable"] = true, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "Unpackaged Meth"},

    ["meth"] 						 = {["name"] = "meth", 			  			  	["label"] = "Unpackaged Meth", 	  		["weight"] = 100, 		["type"] = "item", 		["image"] = "methbrick.png", 				["unique"] = false, 	  ["useable"] = true, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "Meth"},

    ["coca"] 						 = {["name"] = "coca", 			  	  			["label"] = "Unpackaged Coca",   		["weight"] = 100, 		["type"] = "item", 		["image"] = "cocaine.png", 				["unique"] = false, 	  ["useable"] = true, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "Unpackaged Coca"},

    ["packagedcoca"] 				 = {["name"] = "packagedcoca", 					["label"] = "Cocain", 	   	    		["weight"] = 100, 		["type"] = "item", 		["image"] = "cocainebaggy.png", 		["unique"] = false, 	  ["useable"] = true, 	["shouldClose"] = false,	   ["combinable"] = nil,   ["description"] = "Cocain"},

    ["saltsyre"] 		 			 = {["name"] = "saltsyre", 			 	  		["label"] = "Saltsyre", 		        ["weight"] = 50, 		["type"] = "item", 		["image"] = "saltsyre.png", 				["unique"] = false, 	  ["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "Saltsyre"},

    ["labcard"] 		 			 = {["name"] = "labcard", 			  			["label"] = "Lab Security Card", 		["weight"] = 0, 		["type"] = "item", 		["image"] = "labcard.png", 				["unique"] = false, 	  ["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "A security card"},

    ["efedrin"] 			 		 = {["name"] = "efedrin", 			 	  		["label"] = "Efedrin", 	   				["weight"] = 50, 		["type"] = "item", 		["image"] = "efedrin.png", 		  		["unique"] = false, 	  ["useable"] = false, 	["shouldClose"] = false,       ["combinable"] = nil,   ["description"] = "Efedrin"},

	-- Fake Plates

    ["fake_plate"] 				     = {["name"] = "fake_plate", 				["label"] = "Fake Plate", 				["weight"] = 0, 		["type"] = "item", 		["image"] = "plate.png", 				    ["unique"] = true, 		["useable"] = true, 	['shouldClose'] = false,    	["combinable"] = nil,   ["description"] = "Marked for Police seizure."},
	["license_plate"] 				 = {["name"] = "license_plate", 			    ["label"] = "License plate", 			["weight"] = 1000, 		["type"] = "item", 		["image"] = "licenseplate.png", 		["unique"] = true, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Fake Plate"},


	-- -- Racing

	-- ['ausb2']                       = {['name'] = 'ausb2',                        ['label'] = 'Alias USB',                     ['weight'] = 3000,         ['type'] = 'item',         ['image'] = 'ausb.png',                 ['unique'] = true,         ['useable'] = true,     ['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'BE WHOEVER YOU WANT TO BE...'},
    -- ['vpn']                         = {['name'] = 'vpn',                          ['label'] = 'Lime USB',                      ['weight'] = 2000,         ['type'] = 'item',         ['image'] = 'limedong.png',                 ['unique'] = true,         ['useable'] = true,     ['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Marked for police seizure...'}, 


	-- Store Robbery Items

	["liquorkey"] 					 = {["name"] = "liquorkey", 					["label"] = "Liquor Storeroom", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "liquorkey.png", 			["unique"] = false, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A curious key with the label 'Liquor Storeroom'."},
    ["dirtymoney"]                   = {["name"] = "dirtymoney",                    ["label"] = "Dirty Money",              ["weight"] = 0,         ["type"] = "item",      ["image"] = "dirtymoney.png",           ["unique"] = false,		["useable"] = true,     ["shouldClose"] = false,    ["combinable"] = nil,  ["description"] = "The ill-gotten proceeds of criminal activity."},  


--TV prop item
	['bigtv'] 				 	     = {['name'] = 'bigtv', 			  	  		['label'] = 'TV', 						['weight'] = 30000, 	['type'] = 'item', 		['image'] = 'stolentv.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Definitely not stolen'},

--PC prop item
	['computer'] 				 	 = {['name'] = 'computer', 			  	  		['label'] = 'Computer', 				['weight'] = 25000, 	['type'] = 'item', 		['image'] = 'stolencomputer.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Definitely not stolen'},

--Microwave prop item
	['microwave'] 				 	 = {['name'] = 'microwave', 			  	  	['label'] = 'Microwave', 				['weight'] = 70000, 	['type'] = 'item', 		['image'] = 'stolenmicro.png', 			['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Definitely not stolen'},

--Stereo prop item
	['stereo'] 				 	     = {['name'] = 'stereo', 			  	  		['label'] = 'HIFI', 					['weight'] = 70000, 	['type'] = 'item', 		['image'] = 'stolenstereo.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Definitely not stolen'},

--T1 safe key item
	['t1_safe_key'] 			 	 = {['name'] = 't1_safe_key', 			 		['label'] = 'Key', 		['weight'] = 500, 		['type'] = 'item', 		['image'] = 'safe_key.png', 			['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Probably unlocks something'},

--T2 safe key item
	['t2_safe_key'] 			 	 = {['name'] = 't2_safe_key', 			 		['label'] = 'Key', 		['weight'] = 500, 		['type'] = 'item', 		['image'] = 'safe_key.png', 			['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Probably unlocks something'},

--T3 safe key item
	['t3_safe_key'] 			 	 = {['name'] = 't3_safe_key', 			 		['label'] = 'Key', 		['weight'] = 500, 		['type'] = 'item', 		['image'] = 'safe_key.png', 			['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Probably unlocks something'},

--Jim-Mechanic Vehicles
["mechanic_tools"] =    {["name"] = "mechanic_tools",   ["label"] = "Mechanic tools",		["weight"] = 0, ["type"] = "item",  ["image"] = "mechanic_tools.png",   ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = "Needed for vehicle repairs"},
["toolbox"] =           {["name"] = "toolbox",          ["label"] = "Toolbox",				["weight"] = 0, ["type"] = "item",  ["image"] = "toolbox.png",          ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = "Needed for Performance part removal"},
["ducttape"] =          {["name"] = "ducttape",         ["label"] = "Duct Tape",			["weight"] = 0, ["type"] = "item",  ["image"] = "bodyrepair.png",       ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = "Good for quick fixes"},
["mechboard"] =         {["name"] = "mechboard",        ["label"] = "Mechanic Sheet",		["weight"] = 0, ["type"] = "item",  ["image"] = "mechboard.png",        ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},

--Performance
["turbo"] =             {["name"] = "turbo",            ["label"] = "Supercharger Turbo",	["weight"] = 0, ["type"] = "item",  ["image"] = "turbo.png",            ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = "Who doesn't need a 65mm Turbo??"},
["car_armor"]=          {["name"] = "car_armor",		["label"] = "Vehicle Armor",		["weight"] = 0, ["type"] = "item",  ["image"] = "car_armour.png",           ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},

["nos"]=                {["name"] = "nos",				["label"] = "NOS Bottle",			["weight"] = 0, ["type"] = "item",  ["image"] = "nos.png",              ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = "A full bottle of NOS"},
["noscan"]=             {["name"] = "noscan",			["label"] = "Empty NOS Bottle",		["weight"] = 0, ["type"] = "item",  ["image"] = "noscan.png",           ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["description"] = "An Empty bottle of NOS"},
["noscolour"]=          {["name"] = "noscolour",		["label"] = "NOS Colour Injector",	["weight"] = 0, ["type"] = "item",  ["image"] = "noscolour.png", 		["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["description"] = "Make that purge spray"},

["engine1"]=            {["name"] = "engine1",			["label"] = "Tier 1 Engine",		["weight"] = 0, ["type"] = "item",  ["image"] = "engine1.png",          ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["engine2"]=            {["name"] = "engine2",			["label"] = "Tier 2 Engine",		["weight"] = 0, ["type"] = "item",  ["image"] = "engine2.png",          ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["engine3"]=            {["name"] = "engine3",			["label"] = "Tier 3 Engine",		["weight"] = 0, ["type"] = "item",  ["image"] = "engine3.png",          ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["engine4"]=            {["name"] = "engine4",			["label"] = "Tier 4 Engine",		["weight"] = 0, ["type"] = "item",  ["image"] = "engine4.png",          ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["engine5"]=            {["name"] = "engine5",			["label"] = "Tier 5 Engine",		["weight"] = 0, ["type"] = "item",  ["image"] = "engine5.png",          ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},

["transmission1"]=      {["name"] = "transmission1",    ["label"] = "Tier 1 Transmission",	["weight"] = 0, ["type"] = "item",  ["image"] = "transmission1.png",    ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["transmission2"]=      {["name"] = "transmission2",	["label"] = "Tier 2 Transmission",	["weight"] = 0, ["type"] = "item",  ["image"] = "transmission2.png",    ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["transmission3"]=      {["name"] = "transmission3",    ["label"] = "Tier 3 Transmission",	["weight"] = 0, ["type"] = "item",  ["image"] = "transmission3.png",    ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["transmission4"]=      {["name"] = "transmission4",	["label"] = "Tier 4 Transmission",	["weight"] = 0, ["type"] = "item",  ["image"] = "transmission4.png",    ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},

["brakes1"]=            {["name"] = "brakes1",			["label"] = "Tier 1 Brakes",		["weight"] = 0, ["type"] = "item",  ["image"] = "brakes1.png",          ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["brakes2"]=            {["name"] = "brakes2",			["label"] = "Tier 2 Brakes",		["weight"] = 0, ["type"] = "item",  ["image"] = "brakes2.png",          ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["brakes3"]=            {["name"] = "brakes3",			["label"] = "Tier 3 Brakes",		["weight"] = 0, ["type"] = "item",  ["image"] = "brakes3.png",          ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},

["suspension1"]=        {["name"] = "suspension1",		["label"] = "Tier 1 Suspension",	["weight"] = 0, ["type"] = "item",  ["image"] = "suspension1.png",      ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["suspension2"]=        {["name"] = "suspension2",		["label"] = "Tier 2 Suspension",	["weight"] = 0, ["type"] = "item",  ["image"] = "suspension2.png",      ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["suspension3"]=        {["name"] = "suspension3",		["label"] = "Tier 3 Suspension",	["weight"] = 0, ["type"] = "item",  ["image"] = "suspension3.png",      ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["suspension4"]=        {["name"] = "suspension4",		["label"] = "Tier 4 Suspension",	["weight"] = 0, ["type"] = "item",  ["image"] = "suspension4.png",      ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["suspension5"]=        {["name"] = "suspension5",		["label"] = "Tier 5 Suspension",	["weight"] = 0, ["type"] = "item",  ["image"] = "suspension5.png",      ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},

["bprooftires"]=        {["name"] = "bprooftires",		["label"] = "Bulletproof Tires",	["weight"] = 0, ["type"] = "item",  ["image"] = "bprooftires.png",      ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["drifttires"]=         {["name"] = "drifttires",		["label"] = "Drift Tires",			["weight"] = 0, ["type"] = "item",  ["image"] = "drifttires.png",       ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},

["oilp1"]=              {["name"] = "oilp1",			["label"] = "Tier 1 Oil Pump",		["weight"] = 0, ["type"] = "item",  ["image"] = "oilp1.png",            ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["oilp2"]=              {["name"] = "oilp2",			["label"] = "Tier 2 Oil Pump",		["weight"] = 0, ["type"] = "item",  ["image"] = "oilp2.png",            ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["oilp3"]=              {["name"] = "oilp3",			["label"] = "Tier 3 Oil Pump",		["weight"] = 0, ["type"] = "item",  ["image"] = "oilp3.png",            ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},

["drives1"]=            {["name"] = "drives1",			["label"] = "Tier 1 Drive Shaft",	["weight"] = 0, ["type"] = "item",  ["image"] = "drives1.png",          ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["drives2"]=            {["name"] = "drives2",			["label"] = "Tier 2 Drive Shaft",	["weight"] = 0, ["type"] = "item",  ["image"] = "drives2.png",          ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["drives3"]=            {["name"] = "drives3",			["label"] = "Tier 3 Drive Shaft",	["weight"] = 0, ["type"] = "item",  ["image"] = "drives3.png",          ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},

["cylind1"]=            {["name"] = "cylind1",			["label"] = "Tier 1 Cylinder Head",	["weight"] = 0, ["type"] = "item",  ["image"] = "cylind1.png",          ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["cylind2"]=            {["name"] = "cylind2",			["label"] = "Tier 2 Cylinder Head",	["weight"] = 0, ["type"] = "item",  ["image"] = "cylind2.png",          ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["cylind3"]=            {["name"] = "cylind3",			["label"] = "Tier 3 Cylinder Head",	["weight"] = 0, ["type"] = "item",  ["image"] = "cylind3.png",          ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},

["cables1"]=            {["name"] = "cables1",			["label"] = "Tier 1 Battery Cables",["weight"] = 0, ["type"] = "item",  ["image"] = "cables1.png",          ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["cables2"]=            {["name"] = "cables2",			["label"] = "Tier 2 Battery Cables",["weight"] = 0, ["type"] = "item",  ["image"] = "cables2.png",          ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["cables3"]=            {["name"] = "cables3",			["label"] = "Tier 3 Battery Cables",["weight"] = 0, ["type"] = "item",  ["image"] = "cables3.png",          ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},

["fueltank1"]=          {["name"] = "fueltank1",		["label"] = "Tier 1 Fuel Tank",     ["weight"] = 0, ["type"] = "item",  ["image"] = "fueltank1.png",        ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["fueltank2"]=          {["name"] = "fueltank2",		["label"] = "Tier 2 Fuel Tank",     ["weight"] = 0, ["type"] = "item",  ["image"] = "fueltank2.png",        ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["fueltank3"]=          {["name"] = "fueltank3",		["label"] = "Tier 3 Fuel Tank",     ["weight"] = 0, ["type"] = "item",  ["image"] = "fueltank3.png",        ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},

["antilag"]=            {["name"] = "antilag",		    ["label"] = "AntiLag",              ["weight"] = 0, ["type"] = "item",  ["image"] = "antiLag.png",        ["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},

--Cosmetics
["underglow_controller"]={["name"] = "underglow_controller",["label"] = "Neon Controller",	["weight"] = 0, ["type"] = "item",  ["image"] = "underglow_controller.png", ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["description"] = "RGB LED Vehicle Remote"},
["headlights"]=         {["name"] = "headlights",       ["label"] = "Xenon Headlights",		["weight"] = 0, ["type"] = "item",  ["image"] = "headlights.png",       ["unique"] = true, 	["useable"] = true, ["shouldClose"] = true, ["description"] = "8k HID headlights"},

["tint_supplies"]=      {["name"] = "tint_supplies",    ["label"] = "Tint Supplies",		["weight"] = 0, ["type"] = "item",  ["image"] = "tint_supplies.png",    ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["description"] = "Supplies for window tinting"},

["customplate"]=        {["name"] = "customplate",      ["label"] = "Customized Plates",	["weight"] = 0, ["type"] = "item",  ["image"] = "plate.png", 			["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["hood"]=               {["name"] = "hood",             ["label"] = "Vehicle Hood",			["weight"] = 0, ["type"] = "item",  ["image"] = "hood.png", 			["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["roof"]=               {["name"] = "roof",             ["label"] = "Vehicle Roof",			["weight"] = 0, ["type"] = "item",  ["image"] = "roof.png", 			["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["spoiler"]=            {["name"] = "spoiler",          ["label"] = "Vehicle Spoiler",		["weight"] = 0, ["type"] = "item",  ["image"] = "spoiler.png", 			["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["bumper"]=             {["name"] = "bumper",           ["label"] = "Vehicle Bumper",		["weight"] = 0, ["type"] = "item",  ["image"] = "bumper.png", 			["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["skirts"]=             {["name"] = "skirts",           ["label"] = "Vehicle Skirts",		["weight"] = 0, ["type"] = "item",  ["image"] = "skirts.png", 			["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["exhaust"]=            {["name"] = "exhaust",          ["label"] = "Vehicle Exhaust",		["weight"] = 0, ["type"] = "item",  ["image"] = "exhaust.png", 			["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["seat"]=               {["name"] = "seat",             ["label"] = "Seat Cosmetics",		["weight"] = 0, ["type"] = "item",  ["image"] = "seat.png", 			["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["rollcage"]=           {["name"] = "rollcage",         ["label"] = "Roll Cage",			["weight"] = 0, ["type"] = "item",  ["image"] = "rollcage.png", 		["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},

["rims"]=               {["name"] = "rims",             ["label"] = "Custom Wheel Rims",	["weight"] = 0, ["type"] = "item",  ["image"] = "rims.png", 			["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},

["livery"]=             {["name"] = "livery",           ["label"] = "Livery Roll",			["weight"] = 0, ["type"] = "item",  ["image"] = "livery.png", 			["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["paintcan"]=           {["name"] = "paintcan",         ["label"] = "Vehicle Spray Can",	["weight"] = 0, ["type"] = "item",  ["image"] = "spraycan.png", 		["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["tires"]=              {["name"] = "tires",            ["label"] = "Drift Smoke Tires",	["weight"] = 0, ["type"] = "item",  ["image"] = "tires.png", 	  		["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},

["horn"]=               {["name"] = "horn",             ["label"] = "Custom Vehicle Horn",	["weight"] = 0, ["type"] = "item",  ["image"] = "horn.png", 			["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},

["internals"] =         {["name"] = "internals",        ["label"] = "Internal Cosmetics",	["weight"] = 0, ["type"] = "item",  ["image"] = "internals.png", 		["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},
["externals"] =         {["name"] = "externals",        ["label"] = "Exterior Cosmetics",	["weight"] = 0, ["type"] = "item",  ["image"] = "mirror.png", 			["unique"] = true,  ["useable"] = true, ["shouldClose"] = true, ["description"] = ""},

--Repair Parts
["newoil"] =            {["name"] = "newoil",           ["label"] = "Car Oil",				["weight"] = 0, ["type"] = "item",  ["image"] = "caroil.png",           ["unique"] = false, ["useable"] = false,["shouldClose"] = false,["description"] = ""},
["sparkplugs"]=         {["name"] = "sparkplugs",       ["label"] = "Spark Plugs",			["weight"] = 0, ["type"] = "item",  ["image"] = "sparkplugs.png",       ["unique"] = false, ["useable"] = false,["shouldClose"] = false,["description"] = ""},
["carbattery"]=         {["name"] = "carbattery",       ["label"] = "Car Battery",			["weight"] = 0, ["type"] = "item",  ["image"] = "carbattery.png",       ["unique"] = false, ["useable"] = false,["shouldClose"] = false,["description"] = ""},
["axleparts"]=          {["name"] = "axleparts",        ["label"] = "Axle Parts",			["weight"] = 0, ["type"] = "item",  ["image"] = "axleparts.png",        ["unique"] = false, ["useable"] = false,["shouldClose"] = false,["description"] = ""},
["sparetire"]=          {["name"] = "sparetire",        ["label"] = "Spare Tire",			["weight"] = 0, ["type"] = "item",  ["image"] = "sparetire.png",        ["unique"] = true,  ["useable"] = false,["shouldClose"] = false,["description"] = ""},



	-- ================ Keep-companion ================
    ["keepcompanionhusky"] = {
        ["name"] = "keepcompanionhusky",
        ["label"] = "Husky",
        ["weight"] = 500,
        ["type"] = "item",
        ["image"] = "A_C_Husky.png",
        ["unique"] = true,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
		["created"] = nil,
        ["description"] = "Husky is your royal companion!"
    },
    ["keepcompanionpoodle"] = {
        ["name"] = "keepcompanionpoodle",
        ["label"] = "Poodle",
        ["weight"] = 500,
        ["type"] = "item",
        ["image"] = "A_C_Poodle.png",
        ["unique"] = true,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
		["created"] = nil,
        ["description"] = "Poodle is your royal companion!"
    },
    ["keepcompanionrottweiler"] = {
        ["name"] = "keepcompanionrottweiler",
        ["label"] = "Rottweiler",
        ["weight"] = 500,
        ["type"] = "item",
        ["image"] = "A_Rottweiler.png",
        ["unique"] = true,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
		["created"] = nil,
        ["description"] = "Rottweiler is your royal companion!"
    },
    ["keepcompanionwesty"] = {
        ["name"] = "keepcompanionwesty",
        ["label"] = "Westy",
        ["weight"] = 500,
        ["type"] = "item",
        ["image"] = "A_C_Westy.png",
        ["unique"] = true,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
		["created"] = nil,
        ["description"] = "Westy is your royal companion!"
    },
    ["keepcompanionmtlion"] = {
        ["name"] = "keepcompanionmtlion",
        ["label"] = "MtLion",
        ["weight"] = 500,
        ["type"] = "item",
        ["image"] = "A_C_MtLion.png",
        ["unique"] = true,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
		["created"] = nil,
        ["description"] = "MtLion is your royal companion!"
    },
    ["keepcompanionmtlion2"] = {
        ["name"] = "keepcompanionmtlion2",
        ["label"] = "Panter",
        ["weight"] = 500,
        ["type"] = "item",
        ["image"] = "A_C_MtLion.png",
        ["unique"] = true,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
		["created"] = nil,
        ["description"] = "Panter is your royal companion!"
    },
    ["keepcompanioncat"] = {
        ["name"] = "keepcompanioncat",
        ["label"] = "Cat",
        ["weight"] = 500,
        ["type"] = "item",
        ["image"] = "A_C_Cat_01.png",
        ["unique"] = true,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
		["created"] = nil,
        ["description"] = "Cat is your royal companion!"
    },
    ["keepcompanionpug"] = {
        ["name"] = "keepcompanionpug",
        ["label"] = "Pug",
        ["weight"] = 500,
        ["type"] = "item",
        ["image"] = "A_C_Pug.png",
        ["unique"] = true,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
		["created"] = nil,
        ["description"] = "Pug is your royal companion!"
    },
    ["keepcompanionretriever"] = {
        ["name"] = "keepcompanionretriever",
        ["label"] = "Retriever",
        ["weight"] = 500,
        ["type"] = "item",
        ["image"] = "A_C_Retriever.png",
        ["unique"] = true,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
		["created"] = nil,
        ["description"] = "Retriever is your royal companion!"
    },
    ["keepcompanionshepherd"] = {
        ["name"] = "keepcompanionshepherd",
        ["label"] = "Shepherd",
        ["weight"] = 500,
        ["type"] = "item",
        ["image"] = "A_C_shepherd.png",
        ["unique"] = true,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
		["created"] = nil,
        ["description"] = "Shepherd is your royal companion!"
    },
    -- new pets
    ["keepcompanioncoyote"]     = {
		["name"] = "keepcompanioncoyote",
		["label"] = "Coyote",
		["weight"] = 500,
		["type"] = "item",
		["image"] = "A_C_Coyote.png",
		["unique"] = true,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["created"] = nil,
		["description"] = "Coyote is your royal companion!"
	},
	["keepcompanionrabbit"]     = {
		["name"] = "keepcompanionrabbit",
		["label"] = "Rabbit",
		["weight"] = 500,
		["type"] = "item",
		["image"] = "A_C_Rabbit_01.png",
		["unique"] = true,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["created"] = nil,
		["description"] = "Rabbit is your royal companion!"
	},
	["keepcompanionhen"]        = {
		["name"] = "keepcompanionhen",
		["label"] = "Hen",
		["weight"] = 500,
		["type"] = "item",
		["image"] = "A_C_Hen.png",
		["unique"] = true,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["created"] = nil,
		["description"] = "Hen is your royal companion!"
	},
    ---
    ["petfood"] = {
        ["name"] = "petfood",
        ["label"] = "pet food",
        ["weight"] = 500,
        ["type"] = "item",
        ["image"] = "petfood.png",
        ["unique"] = false,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
		["created"] = nil,
		["decay"] = 3.0,
        ["description"] = "food for your companion!"
    },
    ["collarpet"] = {
        ["name"] = "collarpet",
        ["label"] = "Pet collar",
        ["weight"] = 500,
        ["type"] = "item",
        ["image"] = "collarpet.png",
        ["unique"] = false,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = true,
		["decay"] = 3.0,
        ["description"] = "Rename your pets!"
    },
    ["firstaidforpet"] = {
        ["name"] = "firstaidforpet",
        ["label"] = "First aid for pet",
        ["weight"] = 500,
        ["type"] = "item",
        ["image"] = "firstaidforpet.png",
        ["unique"] = false,
        ["useable"] = true,
        ["shouldClose"] = true,
        ["combinable"] = nil,
		["decay"] = 3.0,
        ["description"] = "Revive your pet!"
    },
	["petnametag"]              = {
		["name"] = "petnametag",
		["label"] = "Name tag",
		["weight"] = 500,
		["type"] = "item",
		["image"] = "petnametag.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["decay"] = 3.0,
		["description"] = "Rename your pet"
	},
    ["petwaterbottleportable"]  = {
		["name"] = "petwaterbottleportable",
		["label"] = "Portable water bottle",
		["weight"] = 1000,
		["type"] = "item",
		["image"] = "petwaterbottleportable.png",
		["unique"] = true,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["decay"] = 3.0,
		["description"] = "Flask to store water for your pets"
	},
    ["petgroomingkit"]  = {
		["name"] = "petgroomingkit",
		["label"] = "Pet Grooming Kit",
		["weight"] = 1000,
		["type"] = "item",
		["image"] = "petgroomingkit.png",
		["unique"] = true,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["decay"] = 3.0,
		["description"] = "Pet Grooming Kit"
	},
	-- Essential Duffel Bags
	["backpack1"] = {
		["name"] = "backpack1",
		["label"] = "Backpack",
		["weight"] = 7500,
		["type"] = "item",
		["image"] = "backpack1.png",
		["unique"] = true,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "A stylish backpack"
   },
   ["backpack2"] = {
		["name"] = "backpack2",
		["label"] = "Backpack",
		["weight"] = 15000,
		["type"] = "item",
		["image"] = "backpack2.png",
		["unique"] = true,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "A stylish backpack"
   },
   ["backpack3"] = {
		["name"] = "backpack3",
		["label"] = "Backpack",
		["weight"] = 15000,
		["type"] = "item",
		["image"] = "backpack3.png",
		["unique"] = true,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "A stylish backpack"
   },
   ["backpack4"] = {
		["name"] = "backpack4",
		["label"] = "Backpack",
		["weight"] = 15000,
		["type"] = "item",
		["image"] = "backpack4.png",
		["unique"] = true,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "A stylish backpack"
   },
   ["backpack5"] = {
		["name"] = "backpack5",
		["label"] = "Backpack",
		["weight"] = 15000,
		["type"] = "item",
		["image"] = "backpack5.png",
		["unique"] = true,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "A stylish backpack"
   },
   ["backpack6"] = {
		["name"] = "backpack6",
		["label"] = "Backpack",
		["weight"] = 15000,
		["type"] = "item",
		["image"] = "backpack6.png",
		["unique"] = true,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "A stylish backpack"
   },
   ["backpack7"] = {
		["name"] = "backpack7",
		["label"] = "Backpack",
		["weight"] = 15000,
		["type"] = "item",
		["image"] = "backpack7.png",
		["unique"] = true,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "A stylish backpack"
   },
   ["duffle1"] = {
		["name"] = "duffle1",
		["label"] = "Duffle bag",
		["weight"] = 15000,
		["type"] = "item",
		["image"] = "duffle1.png",
		["unique"] = true,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "A stylish duffle bag"
   },
   ["duffle2"] = {
		["name"] = "duffle2",
		["label"] = "Duffle bag",
		["weight"] = 15000,
		["type"] = "item",
		["image"] = "duffle2.png",
		["unique"] = true,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "A stylish duffle bag"
   },
   ["briefcase"] = {
		["name"] = "briefcase",
		["label"] = "Briefcase",
		["weight"] = 10000,
		["type"] = "item",
		["image"] = "briefcase.png",
		["unique"] = true,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "A portable rectangular case used for carrying important documents, files, or other personal belongings."
   },
   ["paramedicbag"] = {
		["name"] = "paramedicbag",
		["label"] = "Paramedic bag",
		["weight"] = 5000,
		["type"] = "item",
		["image"] = "paramedicbag.png",
		["unique"] = true,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "A medical bag used by paramedics, containing essential supplies for emergency care."
   },
   ["policepouches"] = {
	   ["name"] = "policepouches",
	   ["label"] = "Police Pouch",
	   ["weight"] = 5000,
	   ["type"] = "item",
	   ["image"] = "policepouches.png",
	   ["unique"] = true,
	   ["useable"] = true,
	   ["shouldClose"] = true,
	   ["combinable"] = nil,
	   ["description"] = "A pouch used by police officers to store and carry essential supplies such as handcuffs, pepper spray, and other tactical equipment."
   },
   ["policepouches1"] = {
	   ["name"] = "policepouches1",
	   ["label"] = "Police Pouch",
	   ["weight"] = 5000,
	   ["type"] = "item",
	   ["image"] = "policepouches1.png",
	   ["unique"] = true,
	   ["useable"] = true,
	   ["shouldClose"] = true,
	   ["combinable"] = nil,
	   ["description"] = "A larger version of the police pouch used to store additional tactical gear and equipment."
   },
   ["briefcaselockpicker"] = {
		["name"] = "briefcaselockpicker",
		["label"] = "Briefcase Lockpicker",
		["weight"] = 500,
		["type"] = "item",
		["image"] = "lockpick.png",
		["unique"] = false,
		["useable"] = true,
		["shouldClose"] = true,
		["combinable"] = nil,
		["description"] = "Briefcase Lockpicker"
   },
   ["finger_scanner"] = {
	["name"] = "finger_scanner",                                                        
	["label"] = "Finger Scanner",
	["weight"] = 0,
	["type"] = "item",
	["image"] = "finger_scanner.png",
	["unique"] = false,
	["useable"] = true,
	["shouldClose"] = true,
	["combinable"] = nil,
	["description"] = ""
},

}
