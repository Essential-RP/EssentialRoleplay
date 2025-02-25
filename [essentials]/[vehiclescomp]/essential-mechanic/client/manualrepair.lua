RegisterNetEvent('jim-mechanic:client:Manual:Menu', function(data) local Ped = PlayerPedId()
	if not outCar() then return end
	if Config.ManualRepairs.requireDutyCheck == true then
		local p = promise.new()	QBCore.Functions.TriggerCallback('jim-mechanic:mechCheck', function(cb) p:resolve(cb) end)
		if Citizen.Await(p) == true then triggerNotify(nil, Config.ManualRepairs.dutyMessage, "error") return end
	end

	local vehicle = GetVehiclePedIsIn(Ped, false)
	local health = 0
	local engHealth = (GetVehicleEngineHealth(vehicle)/10)
	if GetVehicleEngineHealth(vehicle) > 1000 then engHealth = 100 end
	if GetVehicleEngineHealth(vehicle) < 0 then engHealth = 1 end
	local bodHealth = (GetVehicleBodyHealth(vehicle)/10)
	if GetVehicleEngineHealth(vehicle) > 1000 then bodHealth = 100 end
	if GetVehicleEngineHealth(vehicle) < 0 then bodHealth = 1 end
	if Config.ManualRepairs.repairEngine then health = math.ceil(engHealth/2)+math.ceil(bodHealth/2)
	elseif not Config.ManualRepairs.repairEngine then health = math.ceil((bodHealth)) end
	local cost = 0
	if Config.ManualRepairs.ManualRepairBased then
		for k, v in pairs(QBCore.Shared.Vehicles) do
			if tonumber(v.hash) == GetEntityModel(vehicle) then
				local percent = (Config.ManualRepairs.ManualRepairPercent / 100)
				if Config.System.Debug then print("^5Debug^7: ^2Vehicle^7: '^6"..v.hash.. "^7' (^6"..QBCore.Shared.Vehicles[k].name.."^7)") end
				cost = math.ceil((QBCore.Shared.Vehicles[k].price * percent) - math.ceil((health/100) * (QBCore.Shared.Vehicles[k].price * percent)))
			end
		end
	else
		if Config.ManualRepairs.ManualRepairCostBased then cost = Config.ManualRepairs.ManualRepairCost
		else cost = Config.ManualRepairs.ManualRepairCost - math.ceil((health/100) * Config.ManualRepairs.ManualRepairCost) end
	end

	if GetPedInVehicleSeat(vehicle, -1) ~= Ped then return end
	local p2 = promise.new() QBCore.Functions.TriggerCallback('jim-mechanic:checkCash', function(cb) p2:resolve(cb) end) local cash = Citizen.Await(p2)
	local header = searchCar(vehicle)
	local txt =  "Class: "..getClass(vehicle)..br..Loc[Config.Lan]["check"].plate.." ["..trim(GetVehicleNumberPlateText(vehicle)).."]"..br..Loc[Config.Lan]["check"].value..searchPrice(vehicle)..br..searchDist(vehicle)
	local RepairMenu = {}
	RepairMenu[#RepairMenu+1] = { isMenuHeader = true, disabled = (Config.System.Menu == "ox"), header = header, txt = txt, title = txt }
	if Config.System.Menu == "qb" then
		RepairMenu[#RepairMenu+1] = { icon = "fas fa-circle-xmark", header = Loc[Config.Lan]["common"].close, params = { event = "jim-mechanic:client:Menu:Close" } }
	end

	local seticon, greyed, check = "fas fa-wrench", false, "✅"
	if cost == 0 and not (engHealth < 100 or bodHealth < 100) then greyed = true check = "" end
	if cash < cost then seticon = "fas fa-wallet" greyed = true check = "❌" end
	RepairMenu[#RepairMenu+1] = { isMenuHeader = greyed, disabled = (Config.System.Menu == "ox" and greyed),
									icon = seticon,
									header = Loc[Config.Lan]["police"].repair.." - $"..cost.." "..check, title = Loc[Config.Lan]["police"].repair.." - $"..cost.." "..check,
									params = { event = "jim-mechanic:client:Manual:Repair", args = { cost = cost, society = data.society }, },
									event = "jim-mechanic:client:Manual:Repair", args = { cost = cost, society = data.society, }
								}
	RepairMenu[#RepairMenu+1] = { isMenuHeader = true,
									header = Loc[Config.Lan]["repair"].engine..": "..math.ceil((GetVehicleEngineHealth(vehicle)/10)).."%",
									title = Loc[Config.Lan]["repair"].engine..": "..math.ceil((GetVehicleEngineHealth(vehicle)/10)).."%",
									txt = nosBar(math.ceil((GetVehicleEngineHealth(vehicle)/10))),
									progress = GetVehicleEngineHealth(vehicle)/10,

								}
	RepairMenu[#RepairMenu+1] = { isMenuHeader = true,
									header = Loc[Config.Lan]["repair"].body..": "..math.ceil((GetVehicleBodyHealth(vehicle)/10)).."%",
									title = Loc[Config.Lan]["repair"].body..": "..math.ceil((GetVehicleBodyHealth(vehicle)/10)).."%",
									txt = nosBar(math.ceil((GetVehicleBodyHealth(vehicle)/10))),
									progress = GetVehicleBodyHealth(vehicle)/10,
								}

	if Config.System.Debug then RepairMenu[#RepairMenu+1] = {
		header = "Test", txt = "Vehicle Death Simulator", params = { event = "jim-mechanic:client:Emergency:Damage" },
		title = "Test", description = "Vehicle Death Simulator", event = "jim-mechanic:client:Emergency:Damage"
	} end

	if Config.System.Menu == "ox" then	exports.ox_lib:registerContext({id = 'Menu', title = header, position = 'top-right', options = RepairMenu }) exports.ox_lib:showContext("Menu")
	elseif Config.System.Menu == "qb" then	exports['qb-menu']:openMenu(RepairMenu) end
end)

local repairing = false
RegisterNetEvent('jim-mechanic:client:Manual:Repair', function(data)
	if repairing then return end
	repairing = true
	local vehicle = GetVehiclePedIsIn(PlayerPedId(), false) pushVehicle(vehicle)
	local currentFuel = GetVehicleFuelLevel(vehicle)
	local plate = trim(GetVehicleNumberPlateText(vehicle))
	local currentHealth = { engHealth = GetVehicleEngineHealth(vehicle), bodyHealth = GetVehicleBodyHealth(vehicle) }
	local cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", GetOffsetFromEntityInWorldCoords(vehicle, -1.8, 3.5, 2.0), 0.0, 0.0, 0.0, 60.00, false, 0) PointCamAtEntity(cam, vehicle)
	local cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", GetOffsetFromEntityInWorldCoords(vehicle, 3.5, 0.0, 0.5), 0.0, 0.0, 0.0, 60.00, false, 0) PointCamAtEntity(cam2, vehicle)
	local cam3 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", GetOffsetFromEntityInWorldCoords(vehicle, 2.6, 0.0, 3.0), 0.0, 0.0, 0.0, 60.00, false, 0) PointCamAtEntity(cam3, vehicle)
	local cam4 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", GetOffsetFromEntityInWorldCoords(vehicle, 1.8, -3.5, 2.5), 0.0, 0.0, 0.0, 60.00, false, 0) PointCamAtEntity(cam4, vehicle)
	FreezeEntityPosition(vehicle, true)
	if Config.ManualRepairs.repairAnimate then
		startTempCam(cam)
		if Config.ManualRepairs.repairEngine then
			TriggerServerEvent("jim-mechanic:chargeCash", data.cost, data.society)
			triggerNotify(nil, Loc[Config.Lan]["police"].engine)
			Wait(10000) -- 10000 = 10 second wait
			SetVehicleEngineHealth(vehicle, 1000.0)
			if Config.Repairs.ExtraDamages == true and Config.ManualRepairs.repairExtras then
				TriggerServerEvent("jim-mechanic:server:fixAllPart", trim(GetVehicleNumberPlateText(vehicle)))
			end
		end
		local wait = 1500
		SetCamActiveWithInterp(cam2, cam, 800, 0, 0)
		triggerNotify(nil, Loc[Config.Lan]["manual"].tyres)
		for _, v in pairs({0, 1, 2, 3, 4, 5, 45, 47}) do
			if IsVehicleTyreBurst(vehicle, v, false) == 1 or IsVehicleTyreBurst(vehicle, v, true) == 1 then
				SetVehicleTyreFixed(vehicle, v)
				Wait(wait)
			end
		end
		SetCamActiveWithInterp(cam3, cam2, 800, 0, 0)
		if not AreAllVehicleWindowsIntact(vehicle) then
			triggerNotify(nil, Loc[Config.Lan]["manual"].window)
			for i = 0, 5 do if not IsVehicleWindowIntact(vehicle, i) then RemoveVehicleWindow(vehicle, i) Wait(wait/2) end end
		end
		SetCamActiveWithInterp(cam4, cam3, 800, 0, 0)
		triggerNotify(nil, Loc[Config.Lan]["police"].body)
		Wait(wait*2)
		SetVehicleBodyHealth(vehicle, 1000.0)
		SetVehicleFixed(vehicle)
		TriggerEvent('jim-mechanic:client:Manual:Menu', { society = data.society })
		triggerNotify(nil, Loc[Config.Lan]["police"].complete, "success")
		CreateThread(function() Wait(1000) stopTempCam() end)
	else
		if progressBar({label = Loc[Config.Lan]["repair"].repairing, time = 10000, cancel = true, cam = cam }) then
			SetVehicleFixed(vehicle)
			if Config.ManualRepairs.repairEngine then SetVehicleEngineHealth(vehicle, 1000.0)
			else SetVehicleEngineHealth(vehicle, currentHealth.engHealth) end
			SetVehicleBodyHealth(vehicle, 1000.0)
			if Config.Repairs.ExtraDamages == true and Config.ManualRepairs.repairExtras then
				TriggerServerEvent("jim-mechanic:server:fixAllPart", trim(GetVehicleNumberPlateText(vehicle)))
			end
			TriggerServerEvent("jim-mechanic:chargeCash", data.cost, data.society)
			TriggerEvent('jim-mechanic:client:Manual:Menu', { society = data.society })
			triggerNotify(nil, Loc[Config.Lan]["police"].complete, "success")
		else end
	end
	FreezeEntityPosition(vehicle, false)
	SetVehicleFuelLevel(vehicle, currentFuel)
	repairing = false
	qblog("Repair Bench used ($**"..data.cost.."**) [**"..plate.."**]")
end)