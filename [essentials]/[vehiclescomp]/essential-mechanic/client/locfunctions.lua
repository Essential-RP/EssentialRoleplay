PlayerJob = {}

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData) PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
			for _, v in pairs(Config.Main.JobRoles) do if v == PlayerJob.name then havejob = true end end
			if havejob then TriggerServerEvent("QBCore:ToggleDuty") end end
    end)
	makeLocs()
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo) PlayerJob = JobInfo onDuty = PlayerJob.onduty end)
RegisterNetEvent('QBCore:Client:SetDuty', function(duty) onDuty = duty end)

AddEventHandler('onResourceStart', function(resource) if GetCurrentResourceName() ~= resource then return end
	QBCore.Functions.GetPlayerData(function(PlayerData)
		PlayerJob = PlayerData.job
		for _, v in pairs(Config.Main.JobRoles) do if v == PlayerJob.name then havejob = true end end
		if havejob then onDuty = PlayerJob.onduty end
	end)
	Wait(500)
	if GetVehiclePedIsIn(PlayerPedId()) ~= 0 then
		TriggerEvent("jim-mechanic:Client:EnteredVehicle")
	end
	makeLocs()
end)

local Prop, Targets, locsCreated = {}, {}, false
function makeLocs()
	if locsCreated then return end
	if LocalPlayer.state['isLoggedIn'] == false then return end
	Wait(3000)
	for k, v in pairs(Config.Locations) do local JobLocation = nil
	local loc = Config.Locations[k]
	if loc.Enabled then
	--Zone Creation
		JobLocation = PolyZone:Create(loc.zones, { name = loc.job or "public", debugPoly = Config.System.Debug })
		Config.Locations[k].designatedName = "MechZone: "..k
		JobLocation:onPlayerInOut(function(isPointInside)
			if Config.System.Debug then print("^5Debug^7: ^3Preview: ^2Using client to reset vehicle properties of abandoned vehicle^7") end

			if isPointInside then inLocation = Config.Locations[k].designatedName
				if Config.System.Debug then print("^5Debug^7: ^3Entered ^2Mech Zone^7: (^6"..Config.Locations[k].designatedName.."^7)") end
			else inLocation = ""
				if Config.System.Debug then print("^5Debug^7: ^3Exited ^2Mech Zone^7: (^6"..Config.Locations[k].designatedName.."^7)") end
			end

			if Config.Previews.PreviewLocation then
				if isPointInside then inpreview = true
				else inpreview = false end
			end
			if Config.Main.JobLocationRequired then
				if loc.job ~= nil and PlayerJob.name == tostring(loc.job) then
					if isPointInside then
						if loc.autoClock.enter and not onDuty then
							TriggerServerEvent("QBCore:ToggleDuty")
						end
					else
						if loc.autoClock.exit and onDuty then
							TriggerServerEvent("QBCore:ToggleDuty")
						end
					end
				end
			end
		end)
	--Blip Creation
		if loc.blip then
			local blip = loc.blip
			if Config.Main.LocationBlips then
				makeBlip({ coords = blip.coords, sprite = blip.sprite or 446, col = blip.color, scale = blip.scale, disp = blip.disp, category = blip.cat, name = blip.label })
			end
		end
	--Make Crafting Locations
		if Config.StoreCraft.Crafting then
			if loc.crafting then
				for l, b in pairs(loc.crafting) do local name = "MechCraft: "..k..l
					local restrict = nil if loc.Restrictions and loc.Restrictions.Allow[1] then restrict = loc.Restrictions.Allow end
					JobLocation:onPlayerInOut(function(isPointInside)
						if isPointInside then
							if b.prop then Prop[name] = makeProp({coords = vec4(b.coords.x, b.coords.y, b.coords.z, b.coords.w), prop = "gr_prop_gr_bench_03b"}, 1, 0) end
						end
					end)
					Targets[name] =
					exports['qb-target']:AddBoxZone(name, vec3(b.coords.x, b.coords.y, b.coords.z-1), b.w, b.d, { name=name, heading = b.coords.w, debugPoly=Config.System.Debug, minZ=b.coords.z-1.0, maxZ=b.coords.z+1.0 },
						{ options = { { event = "jim-mechanic:client:Crafting:Menu", icon = "fas fa-cogs", label = Loc[Config.Lan]["crafting"].menuheader, job = loc.job, coords = b.coords.xyz, restrict = restrict }, },
							distance = 2.0 })
				end
			end
		end
	--Make Store Locations
		if Config.StoreCraft.Stores then
			if loc.store then
				for l, b in pairs(loc.store) do local name = "MechStore: "..k..l
					local restrict = nil if loc.Restrictions and loc.Restrictions.Allow[1] then restrict = loc.Restrictions.Allow end
					JobLocation:onPlayerInOut(function(isPointInside)
						if isPointInside then
							if b.prop then Prop[name] = makeProp({coords = vec4(b.coords.x, b.coords.y, b.coords.z, b.coords.w), prop = "gr_prop_gr_bench_04b"}, 1, 0) end
						end
					end)
					Targets[name] =
					exports['qb-target']:AddBoxZone(name, vec3(b.coords.x, b.coords.y, b.coords.z-1), b.w or 3.6, b.d or 0.8, { name=name, heading = b.coords.w, debugPoly=Config.System.Debug, minZ=b.coords.z-1.0, maxZ=b.coords.z+1.0 },
						{ options = { { event = "jim-mechanic:client:Store:Menu", icon = "fas fa-cogs", label = Loc[Config.Lan]["stores"].browse, job = loc.job, restrict = restrict }, },
							distance = 2.0 })
				end
			end
		end
	--Make Cash Register Locations
		if loc.payments then
			for l, b in pairs(loc.payments) do local name = "MechReceipt: "..k..l
				if l ~= "img" then
					JobLocation:onPlayerInOut(function(isPointInside)
						if isPointInside then
							if b.prop then Prop[name] = makeProp({prop = "prop_till_03", coords = vec4(b.coords.x, b.coords.y, b.coords.z+1.03, b.coords.w+180.0)}, 1, false) end
						end
					end)
					Targets[name] =
					exports['qb-target']:AddBoxZone(name, vec3(b.coords.x, b.coords.y, b.coords.z), (b.w or 0.5), (b.d or 0.5), { name=name, heading = b.coords.w, debugPoly=Config.System.Debug, minZ=b.coords.z-0.1, maxZ=b.coords.z+0.4 },
						{ options = { { event = "jim-payments:client:Charge", icon = "fas fa-credit-card", label = Loc[Config.Lan]["payments"].charge, job = loc.job, img = loc.payments.img }, },
							distance = 2.0
					})
				end
			end
		end
	--Make Mechanic Stash locations
		if ((Config.Repairs.StashRepair and not Config.Repairs.FreeRepair) or Config.StoreCraft.StashCraft) or Config.Overrides.ShowAllStash then
			if loc.stash then
				for l, b in pairs(loc.stash) do local name = "MechSafe: "..k..l
					JobLocation:onPlayerInOut(function(isPointInside)
						if isPointInside then
							if b.prop then Prop[name] = makeProp({coords = vec4(b.coords.x, b.coords.y, b.coords.z, b.coords.w), prop = "prop_ld_int_safe_01"}, 1, 0) end
						end
					end)
					Targets[name] =
					exports['qb-target']:AddBoxZone(name, vec3(b.coords.x, b.coords.y, b.coords.z-1), b.w or 3.6, b.d or 0.8, { name=name, heading = b.coords.w, debugPoly=Config.System.Debug, minZ=b.coords.z-1.0, maxZ=b.coords.z+1.0 },
						{ options = { { event = "jim-mechanic:client:Safe", icon = "fas fa-cogs", label = Loc[Config.Lan]["repair"].browse, job = loc.job }, },
							distance = 2.0 })
				end
			end
		end
	--Make Manual Clockin locations
		if loc.clockin then
			for l, b in pairs(loc.clockin) do local name = "MechClock: "..k..l
				if type(b) ~= "boolean" then
					local bossrole = {}
					if loc.job then
						if not QBCore.Shared.Jobs[loc.job] then print("Can't find the job "..loc.job.." in the core shared files") break end
						for grade in pairs(QBCore.Shared.Jobs[loc.job].grades) do
							if QBCore.Shared.Jobs[loc.job].grades[grade].isboss == true then
								if bossrole[loc.job] then
									if bossrole[loc.job] > tonumber(grade) then bossrole[loc.job] = tonumber(grade) end
								else bossrole[loc.job] = tonumber(grade) end
							end
						end
						JobLocation:onPlayerInOut(function(isPointInside)
							if isPointInside then
								if b.prop then Prop[name] = makeProp({prop = "prop_laptop_01a", coords = vec4(b.coords.x, b.coords.y, b.coords.z+1.03, b.coords.w+180.0)}, 1, false) end
							end
						end)
						Targets[name] =
						exports['qb-target']:AddBoxZone(name, b.coords.xyz, (b.w or 0.45), (b.d or 0.4), { name=name, heading = b.coords.w, debugPoly=Config.System.Debug, minZ=b.coords.z-0.1, maxZ=b.coords.z+0.4 },
							{ options = {
								{ type = "server", event = "QBCore:ToggleDuty", icon = "fas fa-clipboard", label = "Duty Toggle", job = loc.job },
								{ event = "qb-bossmenu:client:OpenMenu", icon = "fas fa-list", label = "Open Bossmenu", job = bossrole, },
							},
							distance = 2.0 })
					end
				end
			end
		end
	--Garage Locations
		if loc.garage then TriggerServerEvent("jim-jobgarage:server:syncAddLocations", { job = loc.job, garage = loc.garage }) end
	--Manual Repair Bench
		if loc.manualRepair then
			for l, b in pairs(loc.manualRepair) do local name = "RepairBench: "..k..l
				JobLocation:onPlayerInOut(function(isPointInside)
					if isPointInside then
						if b.prop then Prop[name] = makeProp({coords = vec4(b.coords.x, b.coords.y, b.coords.z-1.37, b.coords.w), prop = "gr_prop_gr_bench_03a"}, 1, 0) end
					end
				end)
				Targets[name] =
				exports['qb-target']:AddBoxZone(name, vec3(b.coords.x, b.coords.y, b.coords.z-1), (b.w or 1.2), (b.d or 4.2), { name=name, heading = b.coords.w, debugPoly=Config.System.Debug, minZ = b.coords.z-1, maxZ = b.coords.z+1.4, },
					{ options = { { event = "jim-mechanic:client:Manual:Menu", icon = "fas fa-cogs", label = Loc[Config.Lan]["police"].userepair, society = loc.job }, }, distance = 5.0 })
			end
		end

	--NosRefill Locations
		if loc.nosrefill and not Config.Overrides.disableNos then
			for l, b in pairs(loc.nosrefill) do local name = "MechNos: "..k..l
				Prop[name] = makeProp({prop = "prop_byard_gastank02", coords = vec4(b.coords.x, b.coords.y, b.coords.z, b.coords.w+180.0)}, 1, false)
				Targets[name] =
				exports['qb-target']:AddBoxZone(name, vec3(b.coords.x, b.coords.y, b.coords.z-1), 0.7, 0.7, { name=name, heading = b.coords[4], debugPoly=Config.System.Debug, minZ=b.coords.z-1.05, maxZ=b.coords.z+0.25 },
					{ options = { { event = "jim-mechanic:client:NosRefill", item = "noscan", icon = "fas fa-gauge-high", label = "NOS ($"..Config.NOS.NosRefillCharge..")", coords = b.coords, tank = Prop[name], society = loc.job }, },
					distance = 2.0 })
			end
		end
	--Carlifts
		if loc.carLift and Config.CarLifts.Enable == true then
			for l, b in pairs(loc.carLift) do local name = "MechLift: "..k..l
				JobLocation:onPlayerInOut(function(isPointInside)
					if isPointInside then
						if b.use then
							local currentPylons, currentLift, targetOffset = 0, 0, nil
							for k, v in pairs(Config.CarLifts.CarLiftUse) do
								currentPylons = GetClosestObjectOfType(b.coords.x, b.coords.y, b.coords.z, 4.0, k, false, 0, 0)
								currentLift = GetClosestObjectOfType(GetEntityCoords(currentPylons), 3.0, v.lift, false, 0, 0)
								targetOffSet = GetOffsetFromEntityInWorldCoords(currentPylons, v.offset)
								if Config.System.Debug then print(currentPylons, currentLift) end
								if currentPylons ~= 0 then break end
							end
							if currentPylons ~= 0 and currentLift ~= 0 then
								if GetEntityCoords(currentLift).z >= GetEntityCoords(currentPylons).z+2.1 then local coords = GetEntityCoords(currentLift) SetEntityCoords(currentLift, coords.x, coords.y,  GetEntityCoords(currentPylons).z+2.1) end
								lift[name] = { lift = currentLift,
									loc = (GetEntityCoords(currentPylons).z == GetEntityCoords(currentLift).z) and "down" or "up",
									moving = false, bottom = GetEntityCoords(currentPylons).z, top = GetEntityCoords(currentPylons).z + 2.1
								}
								exports["qb-target"]:RemoveZone(name)
								Targets[name] =
									exports['qb-target']:AddBoxZone(name, vec3(targetOffSet.x, targetOffSet.y, targetOffSet.z-1.8), 0.7, 0.7, { name=name, heading = GetEntityHeading(currentLift), debugPoly=Config.System.Debug, minZ=targetOffSet.z-2.55, maxZ=targetOffSet.z+0.55 },
										{ options = {
											{ event = "jim-mechanic:client:lift", icon = "fas fa-gauge-high", label = "UP", lift = name, dir = "up", sound = Config.CarLifts.Sound, location = Config.Locations[k].designatedName },
											{ event = "jim-mechanic:client:lift", icon = "fas fa-gauge-high", label = "DOWN", lift = name, dir = "down", sound = Config.CarLifts.Sound, location = Config.Locations[k].designatedName },
										}, distance = 2.0 })
							end
						else
							if lift[name] == nil then
								for _, v in pairs(Config.CarLifts.CarLiftModelReplace) do CreateModelHide(b.coords.x, b.coords.y, b.coords.z, 3.0, v, true) end
								Prop[name.."pylon"] = makeProp({prop = "carlift_pylons", coords = vec4(b.coords.x, b.coords.y, b.coords.z, b.coords.w+90.0)}, 1, false)
								local targetOffSet = GetOffsetFromEntityInWorldCoords(Prop[name.."pylon"], -0.2, -1.6, 0.0)
								Prop[name.."lift"] = makeProp({prop = "carlift_frame", coords = vec4(b.coords.x, b.coords.y, b.coords.z, b.coords.w+90.0)}, 1, false)
								lift[name] = { lift = Prop[name.."lift"], loc = "down", moving = false, bottom = GetEntityCoords(Prop[name.."lift"]).z, top = GetEntityCoords(Prop[name.."lift"]).z + 2.1 }
								Targets[name] =
									exports['qb-target']:AddBoxZone(name, vec3(targetOffSet.x, targetOffSet.y, targetOffSet.z-1.8), 0.7, 0.7, { name=name, heading = b.coords[4], debugPoly=Config.System.Debug, minZ=targetOffSet.z-2.55, maxZ=targetOffSet.z+0.55 },
										{ options = {
											{ event = "jim-mechanic:client:lift", icon = "fas fa-gauge-high", label = "UP", lift = name, dir = "up", sound = Config.CarLifts.Sound, location = Config.Locations[k].designatedName },
											{ event = "jim-mechanic:client:lift", icon = "fas fa-gauge-high", label = "DOWN", lift = name, dir = "down", sound = Config.CarLifts.Sound, location = Config.Locations[k].designatedName },
										},
									distance = 2.0 })
							end
						end
					end
				end)
			end
			JobLocation:onPlayerInOut(function(isPointInside)
				if isPointInside then
					TriggerServerEvent("jim-mechanic:server:lift:SendSync")
				end
			end)
		end
	end end
	locsCreated = true
end

--[[
--Thread for finding locations of existing pylons/lifts
CreateThread(function()
	local objects = GetGamePool('CObject')
	for i = 1, #objects, 1 do
		if GetEntityModel(objects[i]) == `imp_prop_impexp_postlift` then
			local coords = GetOffsetFromEntityInWorldCoords(objects[i], 0.0, 1.5, 0.0)
			local heading = GetEntityHeading(objects[i])-90
			coords = vec4(coords.x, coords.y, coords.z, heading)
			--Prop[#Prop+1] = makeProp({prop = "prop_fnclink_06gatepost", coords = coords }, 1, false)
			print("{ coords = "..coords.." },")
			Wait(1000)
		end
	end
end)
]]

----- CRAFTING STUFF -------
RegisterNetEvent('jim-mechanic:client:Crafting:Menu', function(data)
	local Menu = {}
	if Config.System.Menu == "qb" then
		Menu[#Menu + 1] = { isMenuHeader = true, header = Loc[Config.Lan]["crafting"].menuheader, txt = "", }
		Menu[#Menu + 1] = { icon = "fas fa-circle-xmark", header = "", txt = Loc[Config.Lan]["common"].close, params = { event = "jim-mechanic:client:Menu:Close" } }
	end
	local restrictionTable = {}
	if data.restrict then for i = 1, #data.restrict do restrictionTable[data.restrict[i]] = true end end
	if data.restrict and not restrictionTable["tools"] then else Menu[#Menu + 1] = {
		header = Loc[Config.Lan]["crafting"].toolheader, txt = #Crafting.Tools..Loc[Config.Lan]["crafting"].numitems,
		params = { event = "jim-mechanic:Crafting", args = { craftable = Crafting.Tools, header = Loc[Config.Lan]["crafting"].toolheader, } } ,
		title = Loc[Config.Lan]["crafting"].toolheader, description = #Crafting.Tools..Loc[Config.Lan]["crafting"].numitems,
		event = "jim-mechanic:Crafting", args = { craftable = Crafting.Tools, header = Loc[Config.Lan]["crafting"].toolheader, }
	} end
	if data.restrict and not restrictionTable["repairs"] then else Menu[#Menu + 1] = {
		header = Loc[Config.Lan]["crafting"].repairheader, txt = #Crafting.Repairs..Loc[Config.Lan]["crafting"].numitems,
		params = { event = "jim-mechanic:Crafting", args = { craftable = Crafting.Repairs, header = Loc[Config.Lan]["crafting"].repairheader, } } ,
		title = Loc[Config.Lan]["crafting"].repairheader, description = #Crafting.Repairs..Loc[Config.Lan]["crafting"].numitems,
		event = "jim-mechanic:Crafting", args = { craftable = Crafting.Repairs, header = Loc[Config.Lan]["crafting"].repairheader, }
	} end
	if data.restrict and not restrictionTable["perform"] then else Menu[#Menu + 1] = {
		header = Loc[Config.Lan]["crafting"].performheader, txt = #Crafting.Perform..Loc[Config.Lan]["crafting"].numitems,
		params = { event = "jim-mechanic:Crafting", args = { craftable = Crafting.Perform, header = Loc[Config.Lan]["crafting"].performheader, } },
		title = Loc[Config.Lan]["crafting"].performheader, description = #Crafting.Perform..Loc[Config.Lan]["crafting"].numitems,
		event = "jim-mechanic:Crafting", args = { craftable = Crafting.Perform, header = Loc[Config.Lan]["crafting"].performheader, }
	} end
	if data.restrict and not restrictionTable["cosmetics"] then else Menu[#Menu + 1] = {
		header = Loc[Config.Lan]["crafting"].cosmetheader, txt = #Crafting.Cosmetic..Loc[Config.Lan]["crafting"].numitems,
		params = { event = "jim-mechanic:Crafting", args = { craftable = Crafting.Cosmetic, header = Loc[Config.Lan]["crafting"].cosmetheader, } },
		title = Loc[Config.Lan]["crafting"].cosmetheader, description = #Crafting.Cosmetic..Loc[Config.Lan]["crafting"].numitems,
		event = "jim-mechanic:Crafting", args = { craftable = Crafting.Cosmetic, header = Loc[Config.Lan]["crafting"].cosmetheader, }
	} end
	if data.restrict and not restrictionTable["nos"] and not Config.Overrides.disableNos then else Menu[#Menu + 1] = {
		header = Loc[Config.Lan]["crafting"].nosheader, txt = #Crafting.Nos..Loc[Config.Lan]["crafting"].numitems,
		params = { event = "jim-mechanic:Crafting", args = { craftable = Crafting.Nos, header = Loc[Config.Lan]["crafting"].nosheader, } } ,
		title = Loc[Config.Lan]["crafting"].nosheader, description = #Crafting.Nos..Loc[Config.Lan]["crafting"].numitems,
		event = "jim-mechanic:Crafting", args = { craftable = Crafting.Nos, header = Loc[Config.Lan]["crafting"].nosheader, }
	} end
	if Config.System.Menu == "ox" then exports.ox_lib:registerContext({id = 'Crafting', title = Loc[Config.Lan]["crafting"].menuheader, position = 'top-right', options = Menu })	exports.ox_lib:showContext("Crafting")
	elseif Config.System.Menu == "qb" then	exports['qb-menu']:openMenu(Menu) end
	lookVeh(data.coords)
end)

local timeout = 0
local timing = false
local stashItems = {}
function GetStashTimeout(stashName, stop)
	if stop then stashItems = {} timing = false timeout = 0 return end
	if stashItems[1] then return true else
		if timeout <= 0 then
			local p = promise.new()	QBCore.Functions.TriggerCallback('jim-mechanic:server:GetStashItems', function(cb) p:resolve(cb) end, stashName) stashItems = Citizen.Await(p)
			timeout = Config.StoreCraft.StashCraftTimeout
			if not timing then
				CreateThread(function()
					timing = true
					while timeout > 0 do timeout -= 1000 Wait(1000) end
					timing = false stashItems = {} timeout = 0
				end)
			end
		end
		return false
	end
end

RegisterNetEvent('jim-mechanic:Crafting', function(data)
	if Config.StoreCraft.StashCraft and not GetStashTimeout(PlayerJob.name.."Safe") then triggerNotify(nil, Loc[Config.Lan]["functions"].checking, "info") Wait(2000) end
	local Menu = {}
	if Config.System.Menu == "qb" then
		Menu[#Menu + 1] = { header = data.header, txt = "", isMenuHeader = true }
	end
	Menu[#Menu + 1] = { icon = "fas fa-circle-arrow-left", header = "", txt = Loc[Config.Lan]["common"].ret, title = Loc[Config.Lan]["common"].ret, params = { event = "jim-mechanic:client:Crafting:Menu", args = data }, event = "jim-mechanic:client:Crafting:Menu", args = data }
	for i = 1, #data.craftable do
		for k, v in pairs(data.craftable[i]) do
			if k ~= "amount" and k ~= "job" then
				if data.craftable[i]["job"] then hasjob = false
					for l, b in pairs(data.craftable[i]["job"]) do
						if l == PlayerJob.name and PlayerJob.grade.level >= b then hasjob = true end
					end
				end
				if not QBCore.Shared.Items[k] then print("^5Debug^7: ^2Item not found in server^7: '^6"..k.."^7'") else
					if data.craftable[i]["job"] and hasjob == false then else
						local text = ""
						setheader = QBCore.Shared.Items[tostring(k)].label
						if data.craftable[i]["amount"] then setheader = setheader.." x"..data.craftable[i]["amount"] end
						local disable = false
						local checktable = {}
						for l, b in pairs(data.craftable[i][tostring(k)]) do
							text = text..QBCore.Shared.Items[l].label.." x"..b..br
							settext = text
							if Config.StoreCraft.StashCraft then checktable[l] = stashHasItem(stashItems, l, b) end
							if not Config.StoreCraft.StashCraft then checktable[l] = HasItem(l, b) end
							Wait(0)
						end
						for _, v in pairs(checktable) do if v == false then disable = true break end end
						if not Config.StoreCraft.StashCraft then if not disable then setheader = setheader.." ✔️" end end
						Menu[#Menu + 1] = {
							disabled = disable,
							icon = "nui://"..Config.System.img..QBCore.Shared.Items[tostring(k)].image,
							header = setheader, txt = settext, --qb-menu
							params = { event = "jim-mechanic:Crafting:MakeItem", args = { item = k, craft = data.craftable[i], craftable = data.craftable, header = data.header } }, -- qb-menu
							title = setheader, description = settext, -- ox_lib
							event = "jim-mechanic:Crafting:MakeItem", args = { item = k, craft = data.craftable[i], craftable = data.craftable, header = data.header }, -- ox_lib
						}
						settext, setheader = nil
					end
				end
			end
		end
	end
	if Config.System.Menu == "ox" then	exports.ox_lib:registerContext({id = 'Crafting', title = data.header, position = 'top-right', options = Menu })	exports.ox_lib:showContext("Crafting")
	elseif Config.System.Menu == "qb" then	exports['qb-menu']:openMenu(Menu) end
	lookVeh(data.coords)
end)

RegisterNetEvent('jim-mechanic:Crafting:MakeItem', function(data)
	if not CraftLock then CraftLock = true else return end
	local bartext = ""
	if progressBar({label = bartext..QBCore.Shared.Items[data.item].label, time = 2000, cancel = true, dict = "mini@repair", anim = "fixing_a_ped", flag = 8, icon = data.icon}) then
		CraftLock = false TriggerServerEvent('jim-mechanic:Crafting:GetItem', data.item, data.craft) GetStashTimeout(nil, true) Wait(500) TriggerEvent("jim-mechanic:Crafting", data)
	else
		CraftLock = false TriggerEvent('inventory:client:busy:status', false)
	end
end)

------ Nos Refill -------
local refilling = false
RegisterNetEvent('jim-mechanic:client:NosRefill', function(data) local Ped = PlayerPedId()
	if refilling then return end local cash = 0
	if Config.System.Inv == "ox" then if HasItem("money", Config.NOS.NosRefillCharge) then cash = Config.NOS.NosRefillCharge end
	else
		local p = promise.new()	QBCore.Functions.TriggerCallback('jim-mechanic:checkCash', function(cb) p:resolve(cb) end)
		cash = Citizen.Await(p)
	end
	if cash >= Config.NOS.NosRefillCharge then
		refilling = true
		local coords = GetOffsetFromEntityInWorldCoords(data.tank, 0, 0.5, 0.02)
		local prop = makeProp({prop = "v_ind_cs_gascanister", coords = vec4(coords.x, coords.y, coords.z+1.03, GetEntityHeading(data.tank))}, 1, 1)
		local cam = createTempCam(prop, Ped)
		lookVeh(coords)
		--if not IsPedHeadingTowardsPosition(Ped, coords, 20.0) then TaskTurnPedToFaceCoord(Ped, coords, 1500) Wait(1500) end
		if #(coords - GetEntityCoords(Ped)) > 1.3 then TaskGoStraightToCoord(Ped, coords, 0.5, 400, 0.0, 0) Wait(400) end

		UseParticleFxAssetNextCall('core')
		local gas = StartParticleFxLoopedOnEntity('ent_sht_steam', prop, 0.02, 0.00, 0.42, 0.0, 0.0, 0.0, 0.1, 0, 0, 0)
		if progressBar({label = "Refilling "..QBCore.Shared.Items["nos"].label, time = 7000, cancel = true, task = "CODE_HUMAN_MEDIC_TEND_TO_DEAD", cam = cam }) then
			qblog("Purchased a NOS refill")
			TriggerServerEvent("jim-mechanic:chargeCash", Config.NOS.NosRefillCharge, data.society)
			toggleItem(false, "noscan", 1)
			toggleItem(true, "nos", 1)
		end
		DeleteObject(prop)
		emptyHands(Ped)
		StopParticleFxLooped(gas)
		prop = nil gas = nil
		refilling = false
	else
		triggerNotify(nil, "Not enough cash", "error") return
	end
end)

------ Store Stuff ------
-- Menu to pick the store
RegisterNetEvent('jim-mechanic:client:Store:Menu', function(data)
	lookVeh(data.coords)
	local Menu = {}
	local restrictionTable = {}
	if Config.System.Menu == "qb" then Menu[#Menu+1] = { icon = "fas fa-circle-xmark", header = "", txt = Loc[Config.Lan]["common"].close, params = { event = "jim-mechanic:client:Menu:Close" } } end
	if data.restrict then for i = 1, #data.restrict do restrictionTable[data.restrict[i]] = true end end
	if data.restrict and not restrictionTable["nos"] and not Config.Overrides.disableNos then else Menu[#Menu + 1] = {
        header = Loc[Config.Lan]["stores"].nos, params = { event = "jim-mechanic:client:Store", args = { shopName = "nosShop", store = Stores.NosItems, job = data.job } },
        title = Loc[Config.Lan]["stores"].nos, event = "jim-mechanic:client:Store", args = { shopName = "nosShop", store = Stores.NosItems, job = data.job }
	} end
	if data.restrict and not restrictionTable["tools"] then else Menu[#Menu + 1] = {
        header = Loc[Config.Lan]["stores"].tools, params = { event = "jim-mechanic:client:Store", args = { shopName = "toolShop", store = Stores.ToolItems, job = data.job } },
        title = Loc[Config.Lan]["stores"].tools, event = "jim-mechanic:client:Store", args = { shopName = "toolShop",  store = Stores.ToolItems, job = data.job }
	} end
	if data.restrict and not restrictionTable["repairs"] then else Menu[#Menu + 1] = {
        header = Loc[Config.Lan]["stores"].repairs, params = { event = "jim-mechanic:client:Store", args = { shopName = "repairShop", store = Stores.RepairItems, job = data.job } },
        title = Loc[Config.Lan]["stores"].repairs, event = "jim-mechanic:client:Store", args = { shopName = "repairShop",  store = Stores.RepairItems, job = data.job }
	} end
	if data.restrict and not restrictionTable["perform"] then else Menu[#Menu + 1] = {
        header = Loc[Config.Lan]["stores"].perform, params = { event = "jim-mechanic:client:Store", args = { shopName = "performShop", store = Stores.PerformItems, job = data.job } },
        title = Loc[Config.Lan]["stores"].perform, event = "jim-mechanic:client:Store", args = { shopName = "performShop",  store = Stores.PerformItems, job = data.job }
	} end
	if data.restrict and not restrictionTable["cosmetics"] then else Menu[#Menu + 1] = {
        header = Loc[Config.Lan]["stores"].cosmetic, params = { event = "jim-mechanic:client:Store", args = { shopName = "cosmeticShop", store = Stores.CosmeticItems, job = data.job } },
        title = Loc[Config.Lan]["stores"].cosmetic, event = "jim-mechanic:client:Store", args = { shopName = "cosmeticShop",  store = Stores.CosmeticItems, job = data.job }
	} end
	if Config.System.Menu == "ox" then exports.ox_lib:registerContext({id = 'Crafting', title = Loc[Config.Lan]["crafting"].menuheader, position = 'top-right', options = Menu })	exports.ox_lib:showContext("Crafting")
	elseif Config.System.Menu == "qb" then	exports['qb-menu']:openMenu(Menu) end
end)

-- Open the selected store
RegisterNetEvent('jim-mechanic:client:Store', function(data)
	local event = "inventory:server:OpenInventory"
	if Config.System.JimShops then event = "jim-shops:ShopOpen"
	elseif Config.System.Inv == "ox" then exports.ox_inventory:openInventory('shop', { type = data.shopName, }) end
	TriggerServerEvent(event, "shop", PlayerJob.name, data.store)
end)

------ Repair Stash Stuff -----
RegisterNetEvent('jim-mechanic:client:Safe', function(data)
	if Config.System.Inv == "ox" then exports.ox_inventory:openInventory('stash', PlayerJob.name.."Safe")
	else TriggerEvent("inventory:client:SetCurrentStash", PlayerJob.name.."Safe") TriggerServerEvent("inventory:server:OpenInventory", "stash", PlayerJob.name.."Safe", { maxweight = 4000000, slots = 50, }) end
end)

AddEventHandler('onResourceStop', function(r) if r ~= GetCurrentResourceName() then return end
	emptyHands(PlayerPedId())
	unloadModel("carlift_pylons")
	unloadModel("carlift_frame")
	for k in pairs(Prop) do DeleteEntity(Prop[k]) end
	for k in pairs(Targets) do exports["qb-target"]:RemoveZone(k) end
end)