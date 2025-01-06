mods.arcTrade = {}

local function vter(cvec)
    local i = -1
    local n = cvec:size()
    return function()
        i = i + 1
        if i < n then return cvec[i] end
    end
end

local function get_distance(point1, point2)
    return math.sqrt(((point2.x - point1.x)^ 2)+((point2.y - point1.y) ^ 2))
end

local industryList = {}
industryList[1] = "Construction"
industryList[2] = "Mining"
industryList[3] = "Factory"
industryList[4] = "Farming"
industryList[5] = "Fuel"
industryList[6] = "Shipyard"
industryList[7] = "Amenities"
industryList[8] = "Military"

local eventList = {}
eventList[1] = "None"
eventList[2] = "Food Crisis"
eventList[3] = "Resource Shortage"
eventList[4] = "Refugees"
eventList[5] = "High Tariffs"
eventList[6] = "War Preparation"

local resourceTypeList = {}
resourceTypeList[1] = "Metals"
resourceTypeList[2] = "Foods"
resourceTypeList[3] = "Supplies"
resourceTypeList[4] = "Military"
resourceTypeList[5] = "Amenities"
resourceTypeList[6] = "Resources"

local cargoList = {
	{name = "Steel", basePrice = 80, type = 1, supply = 2, demand = {true, false, true, false, false, true, false, true}, average = 0 },
	{name = "Aluminium", basePrice = 25, type = 1, supply = 2, demand = {false, false, true, false, false, false, true, true}, average = 0 },
	{name = "Titanium", basePrice = 160, type = 1, supply = 2, demand = {false, false, true, false, false, true, false, true}, average = 0 },
	{name = "Nickel", basePrice = 95, type = 1, supply = 2, demand = {false, false, true, false, false, true, false, true}, average = 0 },
	{name = "Copper", basePrice = 30, type = 1, supply = 2, demand = {false, false, true, false, false, false, true, false}, average = 0 },
	{name = "Iron", basePrice = 45, type = 1, supply = 2, demand = {true, false, true, false, false, true, false, false}, average = 0 },
	{name = "Iridium", basePrice = 420, type = 1, supply = 2, demand = {true, false, true, false, false, true, false, false}, average = 0 },
	{name = "Rhodium", basePrice = 700, type = 1, supply = 2, demand = {true, false, true, false, false, true, false, false}, average = 0 }, 

	{name = "Grain", basePrice = 25, type = 2, supply = 4, demand = {true, false, false, false, false, false, true, false}, average = 0 },
	{name = "Baked Goods", basePrice = 55, type = 2, supply = 4, demand = {false, false, false, false, false, false, true, false}, average = 0 },
	{name = "Animal Meat", basePrice = 80, type = 2, supply = 4, demand = {false, false, false, false, false, false, true, true}, average = 0 },
	{name = "Vegetables", basePrice = 35, type = 2, supply = 4, demand = {false, false, false, false, false, false, true, false}, average = 0 },
	{name = "Synthetic Meat", basePrice = 95, type = 2, supply = 3, demand = {false, false, false, false, false, false, true, true}, average = 0 },
	{name = "Basic Rations", basePrice = 60, type = 2, supply = 4, demand = {true, true, true, false, false, false, false, false}, average = 0 },
	{name = "Adv. Rations", basePrice = 120, type = 2, supply = 4, demand = {false, false, false, false, false, true, true, true}, average = 0 },

	{name = "Basic Medicines", basePrice = 40, type = 3, supply = 3, demand = {false, false, false, true, false, false, true, false}, average = 0 },
	{name = "Stimulents", basePrice = 120, type = 3, supply = 3, demand = {false, false, false, false, false, true, false, true}, average = 0 },
	{name = "Adv. Medicines", basePrice = 210, type = 3, supply = 3, demand = {false, false, false, true, false, false, true, false}, average = 0 },
	{name = "Power Cells", basePrice = 120, type = 3, supply = 5, demand = {false, true, false, false, false, true, true, true}, average = 0 },
	{name = "Ion Distributor", basePrice = 80, type = 3, supply = 3, demand = {false, false, false, false, true, false, true, true}, average = 0 },
	{name = "Water", basePrice = 20, type = 3, supply = 3, demand = {false, true, false, true, false, false, true, true}, average = 0, average = 0 },
	{name = "Oxygen", basePrice = 40, type = 3, supply = 3, demand = {false, true, false, true, false, false, true, true}, average = 0 },

	{name = "Personal Weapons", basePrice = 80, type = 4, supply = 8, demand = {false, true, false, true, false, false, true, false}, average = 0 },
	{name = "Battle Weapons", basePrice = 120, type = 4, supply = 8, demand = {false, true, false, false, false, true, true, false}, average = 0 },
	{name = "Personal Armour", basePrice = 60, type = 4, supply = 8, demand = {false, true, false, false, false, true, true, false}, average = 0 },
	{name = "Protective Suits", basePrice = 35, type = 4, supply = 8, demand = {true, true, false, false, true, true, false, false}, average = 0 },
	{name = "Robotics", basePrice = 180, type = 4, supply = 8, demand = {true, true, true, false, false, true, false, false}, average = 0 },

	{name = "Luxury Goods", basePrice = 250, type = 5, supply = 7, demand = {false, false, false, true, false, false, false, true}, average = 0 },
	{name = "Consumer Tech", basePrice = 90, type = 5, supply = 7, demand = {false, false, true, true, false, true, false, false}, average = 0 },
	{name = "Appliances", basePrice = 65, type = 5, supply = 7, demand = {true, false, false, true, false, false, false, true}, average = 0 },
	{name = "Wine", basePrice = 85, type = 5, supply = 7, demand = {false, false, false, true, false, false, false, true}, average = 0 },
	{name = "Beer", basePrice = 70, type = 5, supply = 7, demand = {true, true, false, true, false, true, false, false}, average = 0 },

	{name = "Concrete", basePrice = 10, type = 6, supply = 1, demand = {false, false, true, true, true, false, false, true}, average = 0 },
	{name = "Prefab Buildings", basePrice = 100, type = 6, supply = 1, demand = {false, true, false, true, false, false, false, true}, average = 0 },
	{name = "Shuttle Parts", basePrice = 1000, type = 6, supply = 6, demand = {false, true, false, false, false, false, true, true}, average = 0 }
}


local industryListShort = {}
industryListShort[1] = "Con"
industryListShort[2] = "Mine"
industryListShort[3] = "Fact"
industryListShort[4] = "Farm"
industryListShort[5] = "Fuel"
industryListShort[6] = "Ship"
industryListShort[7] = "Ame"
industryListShort[8] = "Mil"

local function generateBlankInventory()
	local inventory = {}
	for i, c in ipairs(cargoList) do
		inventory[i] = {number = 0, trend = 0, price = c.basePrice}
	end
	return inventory
end
local function generateBlankPlayerInventory()
	local inventory = {}
	for i, c in ipairs(cargoList) do
		inventory[i] = {number = 0}
	end
	return inventory
end
local planetNameList = {
	"Lizzards mum",
	"Planet-A",
	"Planet-B",
	"Planet-C",
	"Planet-D",
	"Planet-E",
	"Planet-F",
	"Planet-G",
	"Planet-H",
	"Planet-I",
	"Planet-J",
	"Planet-K",
	"Planet-L",
	"Planet-M",
	"Planet-N",
	"Planet-O",
	"Planet-P",
	"Planet-Q",
	"Planet-R",
	"Planet-S",
	"Planet-T",
	"Planet-U",
	"Planet-V",
	"Planet-W",
	"Planet-X",
	"Planet-Y",
	"Planet-Z"
}

function arc_test()
	local i = math.random(1, 40)
	print(i)
	print("arctrade_p"..i.."_beacon")
	print(Hyperspace.metaVariables["arctrade_p"..i.."_beacon"])
end


local usedNames = {}
-- 635 AND 338
local planetImageTag = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planettag.png", -45, -45-17, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local planetImageSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planetselect.png", -45, -45, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local planetImageSelectGlow = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planetselect3.png", -45, -45, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local planetImageList = {
	Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planet1.png", -45, -45, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planet2.png", -45, -45, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planet3.png", -45, -45, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planet4.png", -45, -45, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planet5.png", -45, -45, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planet6.png", -45, -45, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planet7.png", -45, -45, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planet8.png", -45, -45, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
}

local planetTableList = {
	{beacon = -1, planet = 1, name = 1, type = 1, event = 1, inventory = generateBlankInventory(), tariff = 0, exchangeRate = 100},
	{beacon = -1, planet = 1, name = 1, type = 1, event = 1, inventory = generateBlankInventory(), tariff = 0, exchangeRate = 100},
	{beacon = -1, planet = 1, name = 1, type = 1, event = 1, inventory = generateBlankInventory(), tariff = 0, exchangeRate = 100},
	{beacon = -1, planet = 1, name = 1, type = 1, event = 1, inventory = generateBlankInventory(), tariff = 0, exchangeRate = 100},
	{beacon = -1, planet = 1, name = 1, type = 1, event = 1, inventory = generateBlankInventory(), tariff = 0, exchangeRate = 100},
	{beacon = -1, planet = 1, name = 1, type = 1, event = 1, inventory = generateBlankInventory(), tariff = 0, exchangeRate = 100},
	{beacon = -1, planet = 1, name = 1, type = 1, event = 1, inventory = generateBlankInventory(), tariff = 0, exchangeRate = 100}
}

local function resetPlanets()
	planetTableList = {
		{beacon = -1, planet = 1, name = 1, type = 1, event = 1, inventory = generateBlankInventory(), tariff = 0, exchangeRate = 100},
		{beacon = -1, planet = 1, name = 1, type = 1, event = 1, inventory = generateBlankInventory(), tariff = 0, exchangeRate = 100},
		{beacon = -1, planet = 1, name = 1, type = 1, event = 1, inventory = generateBlankInventory(), tariff = 0, exchangeRate = 100},
		{beacon = -1, planet = 1, name = 1, type = 1, event = 1, inventory = generateBlankInventory(), tariff = 0, exchangeRate = 100},
		{beacon = -1, planet = 1, name = 1, type = 1, event = 1, inventory = generateBlankInventory(), tariff = 0, exchangeRate = 100},
		{beacon = -1, planet = 1, name = 1, type = 1, event = 1, inventory = generateBlankInventory(), tariff = 0, exchangeRate = 100},
		{beacon = -1, planet = 1, name = 1, type = 1, event = 1, inventory = generateBlankInventory(), tariff = 0, exchangeRate = 100}
	}
end

local eventTable = {inventory = generateBlankInventory(), tariff = 0, exchangeRate = 100}

local playerCredits = 0
local playerCargo = 0
local playerCargoSpace = 100
local playerInventory = generateBlankPlayerInventory()

local function generateInventory(type, event, level)
	local inventory = {}
	for i, c in ipairs(cargoList) do
		local mod = math.ceil(1000/c.basePrice)
		local number = mod + math.ceil(math.random() * 0.3 * mod)
		local trend = (math.random() - 0.5) * (c.basePrice * 0.05)
		local price = c.basePrice + (0.1 * c.basePrice * (1 + level)) + (math.random() * c.basePrice)
		if type == c.supply then
			number = number * 5
			price = price / 1.5
			trend = -1 * math.abs(trend)
		elseif c.demand[type] then 
			number = math.floor(number * (0.2 + (math.random() * 0.25)))
			price = price * 1.5
			trend = math.abs(trend / 2)
		end

		if event == 2 and (c.type == 2 or c.type == 3) then
			number = math.floor(number * (0.4 + (math.random() * 0.35)))
			price = price * 1.2
		elseif event == 3 and (c.type == 1 or c.type == 6) then
			number = math.floor(number * (0.4 + (math.random() * 0.35)))
			price = price * 1.2
		elseif event == 4 and (c.type == 2 or c.type == 5) then
			number = math.floor(number * (0.4 + (math.random() * 0.35)))
			price = price * 1.2
		elseif event == 5 and not c.type == 2 then
			number = math.floor(number * (0.4 + (math.random() * 0.35)))
			price = price * 1.2
		elseif event == 6 and (c.type == 1 or c.type == 4) then
			number = math.floor(number * (0.4 + (math.random() * 0.35)))
			price = price * 1.2
		end
		if math.random() > 0.7 then 
			number = 0 
			trend = math.abs(trend/2)
			if c.demand[type] then
				price = 1.5 * price
				trend = 3 * trend
			end
		end
		price = math.ceil(math.max(1, price))
		trend = math.floor(trend)
		inventory[i] = {number = number, trend = trend, price = price}
	end
	return inventory
end

local function calculateAverage()
	--print("CALC AVERAGE")
	for i, c in ipairs(cargoList) do
		local sum = 0
		local count = 0
		for k, v in ipairs(planetTableList) do
			if v.beacon >= 0 then 
				--print("Adding Price:"..v.inventory[i].price)
				sum = sum + v.inventory[i].price
				count = count + 1
			end
		end
		if count > 0 then
			c.average = sum/count
		end
	end
end

local function calculateCargo()
	playerCargo = 0
	for i, tab in ipairs(playerInventory) do
		if tab.number < 0 then tab.number = 0 end
		playerCargo = playerCargo + tab.number
	end
end

local function savePlayerInventory()
	--print("SAVE PLAYER INVENTORY")
	for i, tab in ipairs(playerInventory) do
		Hyperspace.metaVariables["arctrade_player_"..i] = tab.number
	end
	Hyperspace.metaVariables["arctrade_player_credits"] = playerCredits
	--Hyperspace.metaVariables["arctrade_player_cargo"] = playerCargoSpace
end

local function loadPlayerInventory()
	--print("LOAD PLAYER INVENTORY")
	for i, tab in ipairs(playerInventory) do
		tab.number = Hyperspace.metaVariables["arctrade_player_"..i]
	end
	playerCredits = Hyperspace.metaVariables["arctrade_player_credits"]
	--playerCargoSpace = Hyperspace.metaVariables["arctrade_player_cargo"]
	calculateCargo()
end

local function savePlanets()
	--print("SAVE PLANETS")
	for i, planetTable in ipairs(planetTableList) do
		--print("arctrade_planet"..i.."_beacon"..Hyperspace.metaVariables["arctrade_planet"..i.."_beacon"])
		Hyperspace.metaVariables["arctrade_planet"..i.."_beacon"] = planetTable.beacon
		--print("arctrade_planet"..i.."_beacon"..Hyperspace.metaVariables["arctrade_planet"..i.."_beacon"])
		Hyperspace.metaVariables["arctrade_planet"..i.."_image"] = planetTable.planet
		Hyperspace.metaVariables["arctrade_planet"..i.."_name"] = planetTable.name
		Hyperspace.metaVariables["arctrade_planet"..i.."_type"] = planetTable.type
		Hyperspace.metaVariables["arctrade_planet"..i.."_event"] = planetTable.event
		Hyperspace.metaVariables["arctrade_planet"..i.."_tariff"] = planetTable.tariff * 1000
		--print("arctrade_planet"..i.."_tariff "..Hyperspace.metaVariables["arctrade_planet"..i.."_tariff"].." "..Hyperspace.metaVariables["arctrade_planet"..i.."_tariff"] / 1000)
		Hyperspace.metaVariables["arctrade_planet"..i.."_exchangeRate"] = planetTable.exchangeRate
		for item, iTab in ipairs(planetTable.inventory) do
			Hyperspace.metaVariables["arctrade_planet"..i.."_"..item.."_number"] = iTab.number
			Hyperspace.metaVariables["arctrade_planet"..i.."_"..item.."_trend"] = iTab.trend * 100
			Hyperspace.metaVariables["arctrade_planet"..i.."_"..item.."_price"] = iTab.price
		end
	end
end


local function loadPlanets()
	--print("LOAD PLANETS")
	for i, planetTable in ipairs(planetTableList) do
		--print("arctrade_planet"..i.."_beacon"..Hyperspace.metaVariables["arctrade_planet"..i.."_beacon"])
		planetTable.beacon = Hyperspace.metaVariables["arctrade_planet"..i.."_beacon"]
		planetTable.planet = Hyperspace.metaVariables["arctrade_planet"..i.."_image"]
		planetTable.name = Hyperspace.metaVariables["arctrade_planet"..i.."_name"]
		planetTable.type = Hyperspace.metaVariables["arctrade_planet"..i.."_type"]
		planetTable.event = Hyperspace.metaVariables["arctrade_planet"..i.."_event"]
		planetTable.tariff = Hyperspace.metaVariables["arctrade_planet"..i.."_tariff"] / 1000
		--print("arctrade_planet"..i.."_tariff "..Hyperspace.metaVariables["arctrade_planet"..i.."_tariff"].." "..Hyperspace.metaVariables["arctrade_planet"..i.."_tariff"] / 1000)
		planetTable.exchangeRate = Hyperspace.metaVariables["arctrade_planet"..i.."_exchangeRate"]
		for item, iTab in ipairs(planetTable.inventory) do
			iTab.number = Hyperspace.metaVariables["arctrade_planet"..i.."_"..item.."_number"]
			iTab.trend = Hyperspace.metaVariables["arctrade_planet"..i.."_"..item.."_trend"] / 100
			iTab.price = Hyperspace.metaVariables["arctrade_planet"..i.."_"..item.."_price"]
		end
	end
end

script.on_init(function()
	--print("LOAD GAME")
	loadPlayerInventory()
	loadPlanets()
	calculateAverage()
end)

function arc_trade_save()
	print("SAVE GAME")
	savePlayerInventory()
	savePlanets()
end
function arc_trade_load()
	print("LOAD GAME")
	loadPlayerInventory()
	loadPlanets()
	calculateAverage()
end


local function generateSector()
	--print("GENERATE SECTOR")
	resetPlanets()
	local planetNumber = math.random(3,7)
	if planetNumber < 6 then planetNumber = planetNumber + 1 end
	local map = Hyperspace.App.world.starMap
	--print("WorldLevel: "..tostring(map.worldLevel))
	local beaconCount = map.locations:size()
	if beaconCount <= 1 then return end
	local existingBeacons = {}
	for i = 1, planetNumber, 1 do
		local beaconNumber = math.random(0, beaconCount - 1)
		local count = 0
		while existingBeacons[beaconNumber] do
			beaconNumber = math.random(0, beaconCount - 1)
			count = count + 1
			if count > 100 then break end
		end
		if count > 100 then break end
		existingBeacons[beaconNumber] = true

		local name = math.random(2, #planetNameList)
		--print("START NAME:"..name.." STRING:"..planetNameList[name])
		if usedNames[name] then
			local foundName = false
			for n = 1, #planetNameList, 1 do
				local newName = name + n
				if newName > #planetNameList then newName = newName - #planetNameList + 1 end
				--print("NEW NAME:"..newName.." STRING:"..planetNameList[newName])
				if not usedNames[newName] then
					--print("UNUSED")
					name = newName
					foundName = true
					break
				end
				if not foundName then
					name = 1
				end
			end
		end
		usedNames[name] = true
		local planet = math.random (1, #planetImageList)
		local type = math.random(1, #industryList)
		local event = math.random(1, #eventList)
		local tariff = math.random() * (0.05 + 0.02)
		if event == 5 then tariff = tariff + 0.1 end
		local rate = 70 + 10 * map.worldLevel + math.random(1, 20 + 5 * map.worldLevel)
		--print("ADD PLANET: beacon:"..beaconNumber.." planetImage:"..planet.." name:"..name.." type:"..type.." event:"..event.." tariff:"..tariff.." exchangeRate:"..rate)

		planetTableList[i] = {beacon = beaconNumber, planet = planet, name = name, type = type, event = event, inventory = generateInventory(type, event, map.worldLevel), tariff = tariff, exchangeRate = rate}
		calculateAverage()
	end
	
	savePlanets()
end

local function giveRandomReward(multiplyer)
    Hyperspace.Sounds:PlaySoundMix("levelup", -1, false)
    local map = Hyperspace.App.world.starMap
    local rewardAmount = math.random(1 * multiplyer, 10 * multiplyer + 2 * map.worldLevel)
    local rewardItem = math.random(1, #cargoList)
    --print("amount:"..rewardAmount.." item:"..rewardItem)
	local cargoLeft = playerCargoSpace - playerCargo
	rewardAmount = math.min(cargoLeft, rewardAmount)
    local rewardPrice = cargoList[rewardItem].average * rewardAmount
    if rewardPrice > 5000 + 500 * map.worldLevel then
    	rewardAmount = math.ceil((5000 + 500 * map.worldLevel) / cargoList[rewardItem].average)
   		rewardPrice = cargoList[rewardItem].average * rewardAmount
   	end
    --print("reward: "..rewardPrice)
    if rewardPrice < 2000 then
    	local creditReward = math.random(100, 2200 - rewardPrice + 200 * map.worldLevel)
    	if cargoLeft > 0 then
    		print("You found "..math.floor(rewardAmount).."kg of "..cargoList[rewardItem].name.." and "..math.floor(creditReward).."c")
    		playerInventory[rewardItem].number = playerInventory[rewardItem].number + rewardAmount
    		playerCredits = playerCredits + creditReward
    	else
    		print("You found "..math.floor(creditReward * 2).."c")
    		playerCredits = playerCredits + creditReward * 2
    	end
    else
		print("You found "..math.floor(rewardAmount).."kg of "..cargoList[rewardItem].name)
		playerInventory[rewardItem].number = playerInventory[rewardItem].number + rewardAmount
    end
    calculateCargo()
    savePlayerInventory()
end


script.on_game_event("START_BEACON_EXPLAIN", false, function()
    generateSector()
    playerCredits = 0
end)
local lastWorldLevel = 0
script.on_internal_event(Defines.InternalEvents.ON_TICK, function()
	local map = Hyperspace.App.world.starMap
	if Hyperspace.Global.GetInstance():GetCApp().world.bStartedGame and not map.worldLevel == lastWorldLevel then
		generateSector()
	end
	lastMouseLevel = map.worldLevel
end)

local inMenu = false

local backImage = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_main.png", 335, 78, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local backImageStencil = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_main_stencil.png", -640, -320, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

local backImageTab1 = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_main_tab1.png", 335, 78, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local backImageTab2 = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_main_tab2.png", -143, -143, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

local backButtonTab2Off = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_back_off.png", 355, 142, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local backButtonTab2On = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_back_on.png", 355, 142, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local backButtonTab2Select = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_back_select2.png", 355, 142, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

local switchButtonOff = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_switch_off.png", 874, 180, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local switchButtonOn = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_switch_on.png", 874, 180, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local switchButtonSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_switch_select2.png", 874, 180, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

local tab1Image = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_tab1.png", 335, 78, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local tab2Image = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_tab2.png", 335, 78, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local tab3Image = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_tab3.png", 335, 78, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local tab4Image = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_tab4.png", 335, 78, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local tab1ImageSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_tab1_select.png", 335, 78, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local tab2ImageSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_tab2_select.png", 335, 78, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local tab3ImageSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_tab3_select.png", 335, 78, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local tab4ImageSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_tab4_select.png", 335, 78, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

local sidebarTop = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_sidebar_top.png", 679, 142, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local sidebarBot = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_sidebar_bot.png", 679, 142, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local jettisonButton = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_jettison.png", 743, 511, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local jettisonButtonSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_jettison.png", 743, 511, 0, Graphics.GL_Color(58/255, 127/255, 255/255, 1), 1, false)

local sidebarBot2 = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_sidebar_bot2.png", 679, 142, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local buyButton = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_buy.png", 743, 511, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local buyButtonSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_buy.png", 743, 511, 0, Graphics.GL_Color(58/255, 127/255, 255/255, 1), 1, false)

local sidebarBot3 = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_sidebar_bot3.png", 679, 142, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local sellButton = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_sell.png", 743, 511, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local sellButtonSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_sell.png", 743, 511, 0, Graphics.GL_Color(58/255, 127/255, 255/255, 1), 1, false)

local jettisonUpMin = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_increase_min.png", 817, 498, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local jettisonUpMinS = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_increase_min.png", 817, 498, 0, Graphics.GL_Color(58/255, 127/255, 255/255, 1), 1, false)
local jettisonUpBig = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_increase_big.png", 829, 498, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local jettisonUpBigS = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_increase_big.png", 829, 498, 0, Graphics.GL_Color(58/255, 127/255, 255/255, 1), 1, false)
local jettisonUpMax = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_increase_full.png", 841, 498, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local jettisonUpMaxS = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_increase_full.png", 841, 498, 0, Graphics.GL_Color(58/255, 127/255, 255/255, 1), 1, false)

local jettisonDownMin = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_increase_minf.png", 767, 498, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local jettisonDownMinS = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_increase_minf.png", 767, 498, 0, Graphics.GL_Color(58/255, 127/255, 255/255, 1), 1, false)
local jettisonDownBig = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_increase_bigf.png", 755, 498, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local jettisonDownBigS = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_increase_bigf.png", 755, 498, 0, Graphics.GL_Color(58/255, 127/255, 255/255, 1), 1, false)
local jettisonDownMax = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_increase_fullf.png", 743, 498, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local jettisonDownMaxS = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_increase_fullf.png", 743, 498, 0, Graphics.GL_Color(58/255, 127/255, 255/255, 1), 1, false)

local itemImage = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local itemImageOff = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_off.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local itemImageSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_select2.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local itemImageSelectGlow = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_select3.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local stencilImage = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_stencil.png", 0, 0, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

local itemPlanetBase = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_planet_base.png", 355, 142, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local itemPlanet = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_planet.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local itemPlanetOff = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_planet_off.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local itemPlanetSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_planet_select2.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local itemPlanetSelectGlow = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_planet_select3.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local itemPlanetStencil = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_stencil.png", 241, 0, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local itemTrend1 = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_trend_1.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local itemTrend2 = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_trend_2.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local itemTrend3 = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_trend_3.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local itemTrend4 = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_trend_4.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local itemTrend5 = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_trend_5.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)


local scrollUpOff = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_scroll_up_off.png", 335 + 324, 78 + 64, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local scrollUpOn = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_scroll_up_on.png", 335 + 324, 78 + 64, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local scrollUpSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_scroll_up_select2.png", 335 + 324, 78 + 64, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

local scrollDownOff = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_scroll_down_off.png", 335 + 324, 78 + 441, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local scrollDownOn = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_scroll_down_on.png", 335 + 324, 78 + 441, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local scrollDownSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_scroll_down_select2.png", 335 + 324, 78 + 441, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

local scrollBar = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_scroll_bar.png", 335 + 324, 78 + 84, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local scrollBarScale = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_scroll_bar_scale.png", 335 + 327, 78 + 87, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

local creditTab = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_credits.png", 684, 498, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

local typeImages = {
	Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_type1.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_type2.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_type3.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_type4.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_type5.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_type6.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
}

local planettag1l = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planettag1l.png", -45, -45-17, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local planettag1c = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planettag1c.png", -45, -45-17, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local planettag1r = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planettag1r.png", -45, -45-17, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

local arrowROff = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_arrow_r_off.png", 563, 330, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local arrowROn = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_arrow_r_on.png", 563, 330, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local arrowRSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_arrow_r_select2.png", 563, 330, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

local arrowLOff = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_arrow_l_off.png", 362, 330, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local arrowLOn = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_arrow_l_on.png", 362, 330, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local arrowLSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_arrow_l_select2.png", 362, 330, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

local scroll = 0
local scrollMax = 0
local playerItemCount = 0
local planetItemCount = 0

local scrollTop = false
local scrollBottom = false
local scrollOverBar = false
local mouseDownPos = nil
local lastMousePos = nil
local scrollingUp = false
local scrollingDown = false
local hoverItem = -1
local selectedItem = 1
local hoverBuyItem = -1
local selectedBuyItem = 1

local jettisonAmt = 0
local jettisonHover = false
local jAmountHover = 0

local buyAmt = 0
local buyHover = false
local buyPoor = false
local bAmountHover = 0

local tab = 1
local tab1Hover = false
local tab2Hover = false
local tab3Hover = false
local tab4Hover = false

local menuButtonOff = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_button_off.png", 1207, 608, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local menuButtonOn = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_button_on.png", 1207, 608, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local menuButtonSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_button_select2.png", 1207, 608, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local menuButtonHover = false

function arc_trade_gen()
	generateSector()
end

function arc_trade_c()
	playerCredits = playerCredits + 1000
end

local tab2Spin = 1
local hoverPlanet = -1
local selectPlanet = -1
local oldSelectPlanet = -1
local planetZoom = 1
local backButtonHover = false
local currentPlanet = -1
local exchangeMult = 1
local exchangeMultHover = 0
local exchangeHover = 0

local buyingFromPlanet = true

local switchButtonHover = false

local planetLeftButton = false
local planetRightButton = false

function arc_trade_back()
	oldSelectPlanet = selectPlanet
	selectPlanet = -1
end

local function RenderTab1(mousePos)
	Graphics.CSurface.GL_RenderPrimitive(sidebarTop)
    Graphics.freetype.easy_printCenter(62, 797, 148, "CARGO HOLD")
    Graphics.freetype.easy_printCenter(10, 797, 170, "Credits:"..math.floor(playerCredits))
    Graphics.freetype.easy_printCenter(10, 797, 186, math.floor(playerCargo).."/"..math.floor(playerCargoSpace).." Cargo Space")
	--Graphics.CSurface.GL_DrawRect(797, 148, 1, 1, Graphics.GL_Color(1, 1, 1, 1))

	jAmountHover = 0
	if selectedItem > 0 then
		local cInfoTab = cargoList[selectedItem]
    	Graphics.CSurface.GL_RenderPrimitive(sidebarBot)
    	Graphics.freetype.easy_printCenter(14, 797, 218, cargoList[selectedItem].name)

    	Graphics.freetype.easy_printCenter(0, 797, 381, math.floor(playerInventory[selectedItem].number).."kg")
    	Graphics.freetype.easy_printCenter(6, 797, 401, "Supplied By: "..industryList[cInfoTab.supply])
    	local s = ""
        local set = false
        for key, short in ipairs(industryList) do
        	if cInfoTab.demand[key] then
        		if set == false then
        			s = short
        			set = true
        		else
            		s = s..", "..short
            	end
        	end
        end
    	Graphics.freetype.easy_printCenter(6, 797, 418, "Consumed By:")
    	Graphics.freetype.easy_printCenter(6, 797, 428, s)
    	Graphics.freetype.easy_printCenter(10, 797, 455, "Average:\n"..math.ceil(cInfoTab.average).."c")

    	local max = nil
    	local min = nil
    	local maxPlanet = -1
    	local minPlanet = -1
    	for planet, pTable in ipairs(planetTableList) do
    		if pTable.beacon >= 0 then
	    		local price = pTable.inventory[selectedItem].price
	    		if max then
	    			if price > max then
	    				max = price
	    				maxPlanet = planet
	    			end
	    		else
					max = price
					maxPlanet = planet
				end
				if min then
	    			if price < min then
	    				min = price
	    				minPlanet = planet
	    			end
	    		else
					min = price
					minPlanet = planet
				end
			end
		end
		Graphics.CSurface.GL_PushMatrix()
		Graphics.CSurface.GL_Translate(201, 319, 0)
    	Graphics.CSurface.GL_RenderPrimitive(itemTrend4)
		Graphics.CSurface.GL_PopMatrix()
		Graphics.CSurface.GL_PushMatrix()
		Graphics.CSurface.GL_Translate(359, 319, 0)
    	Graphics.CSurface.GL_RenderPrimitive(itemTrend2)
		Graphics.CSurface.GL_PopMatrix()
    	Graphics.freetype.easy_printCenter(10, 719, 452, " Max:\n"..math.ceil(max).."c")
    	Graphics.freetype.easy_printCenter(6, 719, 480, planetNameList[planetTableList[maxPlanet].name])
    	Graphics.freetype.easy_printCenter(10, 875, 452, " Min:\n"..math.ceil(min).."c")
    	Graphics.freetype.easy_printCenter(6, 875, 480, planetNameList[planetTableList[minPlanet].name])


    	if mousePos.y > 498 and mousePos.y < 498+11 and playerInventory[selectedItem].number > 0 then
        	if mousePos.x > 743 and mousePos.x < 743+11 then
        		jAmountHover = 1
        	elseif mousePos.x > 755 and mousePos.x < 755+11 then
        		jAmountHover = 2
        	elseif mousePos.x > 767 and mousePos.x < 767+11 then
        		jAmountHover = 3
        	elseif mousePos.x > 817 and mousePos.x < 817+11 then
        		jAmountHover = 4
        	elseif mousePos.x > 829 and mousePos.x < 829+11 then
        		jAmountHover = 5
        	elseif mousePos.x > 841 and mousePos.x < 841+11 then
        		jAmountHover = 6
        	end
        end
        if mousePos.x > 743-1 and mousePos.x < 743+110 and mousePos.y > 511-1 and mousePos.y < 511+21 and playerInventory[selectedItem].number > 0 then
        	jettisonHover = true
        end
        if playerInventory[selectedItem].number > 0 then
    		Graphics.freetype.easy_printCenter(5, 797, 497, math.floor(jettisonAmt))
	        if jAmountHover == 3 then
	        	Graphics.CSurface.GL_RenderPrimitive(jettisonDownMinS)
	        else
	        	Graphics.CSurface.GL_RenderPrimitive(jettisonDownMin)
	        end
	        if jAmountHover == 2 then
	        	Graphics.CSurface.GL_RenderPrimitive(jettisonDownBigS)
	        else
	        	Graphics.CSurface.GL_RenderPrimitive(jettisonDownBig)
	        end
	        if jAmountHover == 1 then
	        	Graphics.CSurface.GL_RenderPrimitive(jettisonDownMaxS)
	        else
	        	Graphics.CSurface.GL_RenderPrimitive(jettisonDownMax)
	        end

	        if jAmountHover == 4 then
	        	Graphics.CSurface.GL_RenderPrimitive(jettisonUpMinS)
	        else
	        	Graphics.CSurface.GL_RenderPrimitive(jettisonUpMin)
	        end
	        if jAmountHover == 5 then
	        	Graphics.CSurface.GL_RenderPrimitive(jettisonUpBigS)
	        else
	        	Graphics.CSurface.GL_RenderPrimitive(jettisonUpBig)
	        end
	        if jAmountHover == 6 then
	        	Graphics.CSurface.GL_RenderPrimitive(jettisonUpMaxS)
	        else
	        	Graphics.CSurface.GL_RenderPrimitive(jettisonUpMax)
	        end

	        if jettisonAmt > 0 then
		        if jettisonHover then 
		        	Graphics.CSurface.GL_RenderPrimitive(jettisonButtonSelect)
		        else
		        	Graphics.CSurface.GL_RenderPrimitive(jettisonButton)
		        end
		    end
		end
    end

	Graphics.CSurface.GL_RenderPrimitive(scrollBar)

    local scrollLength = math.ceil(math.min(376 / (playerItemCount * 20), 1) * 346)

	if mouseDownPos then
		scroll = math.min(scrollMax, math.max(0, scroll + ((Hyperspace.Mouse.position.y - lastMousePos) / (346 - scrollLength)) * scrollMax ))
		lastMousePos = Hyperspace.Mouse.position.y
	elseif scrollingUp then
		scroll = math.max(0, scroll - 10 * playerItemCount * Hyperspace.FPS.SpeedFactor/16)
	elseif scrollingDown then
		scroll = math.min(scrollMax, scroll + 10 * playerItemCount * Hyperspace.FPS.SpeedFactor/16)
	end
	scroll = math.min(scrollMax, math.max(0, scroll))

    local scrollOffset = (scroll/scrollMax) * (346 - scrollLength) 
    if scrollMax == 0 then
    	scrollOffset = 0
    end
    --local scrollBack = (scrollOffset / (346 - scrollLength)) * scrollMax
    --print("scroll:"..tostring(scroll).." offset:"..tostring(scrollOffset).." back:"..tostring(scrollBack))

    if scrollMax == 0 then
		Graphics.CSurface.GL_RenderPrimitive(scrollUpOff)
		Graphics.CSurface.GL_RenderPrimitive(scrollDownOff)
    else
    	if mousePos.x > 659-1 and mousePos.x < 659+17 and mousePos.y > 142-1 and mousePos.y < 142+18 then
    		scrollTop = true
    	elseif mousePos.x > 662-1 and mousePos.x < 662+17 and mousePos.y > 519-1 and mousePos.y < 519+18 then
			scrollBottom = true
		elseif mousePos.x > 662-1 and mousePos.x < 662+11 and mousePos.y > 166 + scrollOffset - 2 and mousePos.y < 166 + scrollOffset + scrollLength + 2 then
			scrollOverBar = true
    	end

    	if scrollTop or scrollingUp then
    		Graphics.CSurface.GL_RenderPrimitive(scrollUpSelect)
    	else
    		Graphics.CSurface.GL_RenderPrimitive(scrollUpOn)
    	end
    	if scrollBottom or scrollingdown then
    		Graphics.CSurface.GL_RenderPrimitive(scrollDownSelect)
    	else
    		Graphics.CSurface.GL_RenderPrimitive(scrollDownOn)
    	end
    end

    local barColour = Graphics.GL_Color(1, 1, 1, 1)
    if scrollMax == 0 then
    	barColour = Graphics.GL_Color(160/255, 162/255, 171/255, 1)
    elseif scrollOverBar or mouseDownPos then
    	barColour = Graphics.GL_Color(58/255, 127/255, 255/255, 1)
    end

	Graphics.CSurface.GL_DrawRect(662 + 1, 166 + scrollOffset - 1, 8, 1, barColour)
	Graphics.CSurface.GL_DrawRect(662, 166 + scrollOffset, 10, scrollLength, barColour)
	Graphics.CSurface.GL_DrawRect(662 + 1, 166 + scrollOffset + scrollLength, 8, 1, barColour)

    Graphics.freetype.easy_printCenter(5, 355 + 28, 132 + 12, "#")
    Graphics.freetype.easy_print(5, 355 + 44, 132 + 12 , "Name")
    Graphics.freetype.easy_print(5, 355 + 126 + 17, 132 + 12, "Supply")
    Graphics.freetype.easy_print(5, 355 + 194, 132 + 12, "Demanded By")

	Graphics.CSurface.GL_PushStencilMode()
    Graphics.CSurface.GL_SetStencilMode(1,1,1)
    Graphics.CSurface.GL_RenderPrimitive(stencilImage)
    Graphics.CSurface.GL_SetStencilMode(2,1,1)

    local itemCount = 2
    scrollMax = math.max(0, playerItemCount * 20 - 376)
    --print(scrollMax)
    hoverItem = -1
    for i, v in ipairs(playerInventory) do
    	if v.number > 0 then
        	local InfoTable = cargoList[i]
	        --Graphics.CSurface.GL_PushStencilMode()
        	if mousePos.x > 355-1 and mousePos.x < 355+301 and mousePos.y > 20 * itemCount - 10 - scroll + 132-1 and mousePos.y < 20 * itemCount - 10 - scroll + 132+18 then
        		hoverItem = i
        	end
        	if 20 * itemCount - 10 - scroll >= -20 then 
    			Graphics.CSurface.GL_PushMatrix()
		        Graphics.CSurface.GL_Translate(0,20 * itemCount - 10 - scroll)
		        if selectedItem == i then
			        Graphics.CSurface.GL_RenderPrimitive(itemImageSelectGlow)
		        elseif hoverItem == i then
			        Graphics.CSurface.GL_RenderPrimitive(itemImageSelect)
		        else
			        Graphics.CSurface.GL_RenderPrimitive(itemImage)
			    end
		        Graphics.CSurface.GL_RenderPrimitive(typeImages[InfoTable.type])
		        local amount = tostring(math.floor(v.number))
		        if v.number > 999999 then
		        	amount = tostring(math.floor(v.number / 1000000)).."M"
		        elseif v.number > 9999 then
		        	amount = tostring(math.floor(v.number / 1000)).."K"
		        elseif v.number > 999 then
		        	local sub = tostring(math.floor(v.number / 100)).."K"
		        	--print(sub)
		        	amount = string.sub(sub, 1, 1).."."..string.sub(sub, 2, 3)
		        end
	            Graphics.freetype.easy_printCenter(5, 355 + 28, 132 + 2, amount)
	            Graphics.freetype.easy_print(5, 355 + 44, 132 + 2 , InfoTable.name)
	            Graphics.freetype.easy_print(5, 355 + 126 + 17, 132 + 2, industryListShort[InfoTable.supply])
	            local s = ""
	            local set = false
	            for key, short in ipairs(industryListShort) do
	            	if InfoTable.demand[key] then
	            		if set == false then
	            			s = short
	            			set = true
	            		else
		            		s = s..", "..short
		            	end
	            	end
	            end
	            Graphics.freetype.easy_print(5, 355 + 194, 132 + 2, s)
       			Graphics.CSurface.GL_PopMatrix()
       		end
	        --Graphics.CSurface.GL_PopStencilMode()
	        itemCount = itemCount + 1
	    end
    end
    playerItemCount = itemCount - 2
    Graphics.CSurface.GL_SetStencilMode(0,1,1)
	Graphics.CSurface.GL_PopStencilMode()
end

local function RenderTab2(mousePos)
    Graphics.CSurface.GL_SetStencilMode(1,1,1)
    Graphics.CSurface.GL_ClearAll()
    Graphics.CSurface.GL_SetStencilMode(1,1,1)
    Graphics.CSurface.GL_RenderPrimitive(backImageStencil)
    Graphics.CSurface.GL_SetStencilMode(2,1,1)


	local count = 0
	for i, planetTable in ipairs(planetTableList) do
		if planetTable.beacon > -1 then
			count = count + 1
    	end
	end
	Graphics.CSurface.GL_PushMatrix()
	local xOffset = (635 / planetZoom)
	local yOffset = (338 / planetZoom)
	local anglePlanet = 0
	if selectPlanet > -1 then
		anglePlanet = 270 + ((selectPlanet - 1) * (360 / count)) * tab2Spin/100 
		while anglePlanet > 360 do
			anglePlanet = anglePlanet - 360
		end
		xOffset = xOffset - (164 * (planetZoom - 1) / planetZoom) - math.cos(math.rad(anglePlanet)) * 140 * (planetZoom - 1)
		yOffset = yOffset - math.sin(math.rad(anglePlanet)) * 140 * (planetZoom - 1)
		planetZoom = math.min(2, planetZoom + Hyperspace.FPS.SpeedFactor/16)
	elseif selectPlanet < 0 and planetZoom > 1 then
		 anglePlanet = 270 + ((oldSelectPlanet - 1) * (360 / count)) * tab2Spin/100 
		while anglePlanet > 360 do
			anglePlanet = anglePlanet - 360
		end
		xOffset = xOffset - (164 * (planetZoom - 1) / planetZoom) - math.cos(math.rad(anglePlanet)) * 140 * (planetZoom - 1)
		yOffset = yOffset - math.sin(math.rad(anglePlanet)) * 140 * (planetZoom - 1)
		planetZoom = math.max(1, planetZoom - Hyperspace.FPS.SpeedFactor/8)
	end
	Graphics.CSurface.GL_Scale(planetZoom, planetZoom, 0)
    Graphics.CSurface.GL_Translate(xOffset, yOffset, 0)
    Graphics.CSurface.GL_SetColorTint(Graphics.GL_Color(1, 1, 1, 1 - 0.75 * (planetZoom - 1)))
	Graphics.CSurface.GL_RenderPrimitive(backImageTab2)
	Graphics.CSurface.GL_RemoveColorTint()
	Graphics.CSurface.GL_PopMatrix()
	if count > 0 then
    	for i, planetTable in ipairs(planetTableList) do
    		if planetTable.beacon > -1 and not (i == selectPlanet or (i == oldSelectPlanet and planetZoom > 1 and selectPlanet < 0)) then
    			local angle = 270 + ((i - 1) * (360 / count)) * tab2Spin/100 
    			while angle > 360 do
    				angle = angle - 360
    			end
	    		--print("I:"..tostring(i).." COUNT:"..tostring(count).." ANGLE:"..tostring(angle).." X:"..tostring(math.cos(angle)).." Y:"..tostring(math.sin(angle)))
	    		Graphics.CSurface.GL_PushMatrix()
	    		local xOffset = (635 / planetZoom) + math.cos(math.rad(angle)) * 140
	    		local yOffset = (338 / planetZoom) + math.sin(math.rad(angle)) * 140
	    		local renderTag = false
	    		if selectPlanet > -1 or (selectPlanet < 0 and planetZoom > 1) then
					xOffset = xOffset - (164 * (planetZoom - 1) / planetZoom) - math.cos(math.rad(anglePlanet)) * 140 * (planetZoom - 1)
					yOffset = yOffset - math.sin(math.rad(anglePlanet)) * 140 * (planetZoom - 1)
	    		else
		        	local pPoint = Hyperspace.Pointf(635 + math.cos(math.rad(angle)) * 140, 338 + math.sin(math.rad(angle)) * 140)
		        	if get_distance(mousePos, pPoint) < 45 then 
						hoverPlanet = i
					end
					if tab2Spin >= 100 then
						renderTag = true
					end
	    		end
	    		Graphics.CSurface.GL_Scale(planetZoom, planetZoom, 0)
		        Graphics.CSurface.GL_Translate(xOffset, yOffset, 0)
    			Graphics.CSurface.GL_SetColorTint(Graphics.GL_Color(1, 1, 1, 1 - 0.5 * (planetZoom - 1)))
    			
	        	Graphics.CSurface.GL_RenderPrimitive(planetImageList[planetTable.planet])
	        	if currentPlanet == i then
	        		Graphics.CSurface.GL_RenderPrimitive(planetImageSelectGlow)
	        	end
	    		if hoverPlanet == i then
	        		Graphics.CSurface.GL_RenderPrimitive(planetImageSelect)
	        	end
				Graphics.CSurface.GL_RemoveColorTint()
	    		Graphics.CSurface.GL_PopMatrix()

	    		if renderTag then
        			local size = Graphics.freetype.easy_measureWidth(51, planetNameList[planetTable.name]) - 8
					Graphics.CSurface.GL_PushMatrix()
			        Graphics.CSurface.GL_Translate(xOffset, yOffset, 0)
					Graphics.CSurface.GL_RenderPrimitive(planettag1l)
					Graphics.CSurface.GL_PopMatrix()

					for offset = 0, size-1, 1 do
						Graphics.CSurface.GL_PushMatrix()
				        Graphics.CSurface.GL_Translate(xOffset + 93 + offset, yOffset, 0)
						Graphics.CSurface.GL_RenderPrimitive(planettag1c)
						Graphics.CSurface.GL_PopMatrix()
					end

					Graphics.CSurface.GL_PushMatrix()
			        Graphics.CSurface.GL_Translate(xOffset + 93 + size, yOffset, 0)
					Graphics.CSurface.GL_RenderPrimitive(planettag1r)
					Graphics.CSurface.GL_PopMatrix()
		            Graphics.freetype.easy_print(51, xOffset + 44, yOffset -45 -9, planetNameList[planetTable.name])
        		end
	    	end
    	end
    end
	--Graphics.CSurface.GL_DrawRect(0, 0, 1280, 720, Graphics.GL_Color(1, 0, 0, 0.5))
	Graphics.CSurface.GL_SetStencilMode(0,1,1)
	--Graphics.CSurface.GL_PopStencilMode()
    if planetZoom > 1 then
    	if planetZoom < 2 then
    		Graphics.CSurface.GL_RenderPrimitive(backButtonTab2Off)
    	elseif mousePos.x > 355-1 and mousePos.x < 355+65 and mousePos.y > 142-1 and mousePos.y < 142+25 then
    		backButtonHover = true
    		Graphics.CSurface.GL_RenderPrimitive(backButtonTab2Select)
    	else
    		Graphics.CSurface.GL_RenderPrimitive(backButtonTab2On)
    	end
    end

    if selectPlanet > -1 or (selectPlanet < 0 and planetZoom > 1) then
    	local targetPlanet = selectPlanet
    	if selectPlanet < 0 and planetZoom > 1 then targetPlanet = oldSelectPlanet end
    	local planetTable = planetTableList[targetPlanet]
	    local angle = 270 + ((targetPlanet - 1) * (360 / count)) * tab2Spin/100 
		while angle > 360 do
			angle = angle - 360
		end
		--print("I:"..tostring(i).." COUNT:"..tostring(count).." ANGLE:"..tostring(angle).." X:"..tostring(math.cos(angle)).." Y:"..tostring(math.sin(angle)))
		Graphics.CSurface.GL_PushMatrix()
		local xOffset = (635 / planetZoom) + math.cos(math.rad(angle)) * 140 - (164 * (planetZoom - 1) / planetZoom) - math.cos(math.rad(anglePlanet)) * 140 * (planetZoom - 1)
		local yOffset = (338 / planetZoom) + math.sin(math.rad(angle)) * 140 - math.sin(math.rad(anglePlanet)) * 140 * (planetZoom - 1)

		Graphics.CSurface.GL_Scale(planetZoom, planetZoom, 0)
        Graphics.CSurface.GL_Translate(xOffset, yOffset, 0)
    	--Graphics.CSurface.GL_RenderPrimitive(planetImageTag)
		--Graphics.freetype.easy_printCenter(5, -45+130, -45-17+7, planetNameList[planetTable.name])
    	Graphics.CSurface.GL_RenderPrimitive(planetImageList[planetTable.planet])
		Graphics.CSurface.GL_RenderPrimitive(planetImageSelect)
		if currentPlanet == targetPlanet then
    		Graphics.CSurface.GL_RenderPrimitive(planetImageSelectGlow)
    	end
		Graphics.CSurface.GL_PopMatrix()
	end

	if selectPlanet > -1 and planetZoom >= 2 then
		local targetPlanet = selectPlanet
    	if selectPlanet < 0 and planetZoom > 1 then targetPlanet = oldSelectPlanet end
    	local planetTable = planetTableList[targetPlanet]
    	Graphics.freetype.easy_printCenter(62, 470, 184, planetNameList[planetTable.name])
    	Graphics.freetype.easy_printCenter(10, 470, 208, "Industry: "..industryList[planetTable.type])
    	Graphics.freetype.easy_printCenter(10, 470, 226, "Condition: "..eventList[planetTable.event])
    	Graphics.freetype.easy_printCenter(10, 470, 436, "Tariff: "..math.floor(planetTable.tariff * 100).."%")
    	Graphics.freetype.easy_printCenter(10, 470, 454, "Exchange Rate: "..math.floor(planetTable.exchangeRate).."c per ~")

    	Graphics.CSurface.GL_RenderPrimitive(arrowLOn)
    	Graphics.CSurface.GL_RenderPrimitive(arrowROn)
    	if mousePos.x > 361 and mousePos.x < 379 and mousePos.y > 329 and mousePos.y < 346 then
			planetLeftButton = true
    		Graphics.CSurface.GL_RenderPrimitive(arrowLSelect)
    	elseif mousePos.x > 562 and mousePos.x < 580 and mousePos.y > 329 and mousePos.y < 346 then
			planetRightButton = true
    		Graphics.CSurface.GL_RenderPrimitive(arrowRSelect)
    	end


    	Graphics.CSurface.GL_PushMatrix()
        Graphics.CSurface.GL_Translate(241, 0, 0)
    	Graphics.CSurface.GL_RenderPrimitive(scrollBar)

        local scrollLength = math.ceil(math.min(376 / (planetItemCount * 20), 1) * 346)

		if mouseDownPos then
			scroll = scroll + ((Hyperspace.Mouse.position.y - lastMousePos) / (346 - scrollLength)) * scrollMax 
			lastMousePos = Hyperspace.Mouse.position.y
		elseif scrollingUp then
			scroll = scroll - 10 * planetItemCount * Hyperspace.FPS.SpeedFactor/16
		elseif scrollingDown then
			scroll = scroll + 10 * planetItemCount * Hyperspace.FPS.SpeedFactor/16
		end
		scroll = math.min(scrollMax, math.max(0, scroll))

        local scrollOffset = (scroll/scrollMax) * (346 - scrollLength) 
        if scrollMax == 0 then
        	scrollOffset = 0
        end
        --local scrollBack = (scrollOffset / (346 - scrollLength)) * scrollMax
        --print("scroll:"..tostring(scroll).." offset:"..tostring(scrollOffset).." back:"..tostring(scrollBack))

        if scrollMax == 0 then
    		Graphics.CSurface.GL_RenderPrimitive(scrollUpOff)
    		Graphics.CSurface.GL_RenderPrimitive(scrollDownOff)
        else
        	if mousePos.x > 241+659-1 and mousePos.x < 241+659+17 and mousePos.y > 142-1 and mousePos.y < 142+18 then
        		scrollTop = true
        	elseif mousePos.x > 241+662-1 and mousePos.x < 241+662+17 and mousePos.y > 519-1 and mousePos.y < 519+18 then
    			scrollBottom = true
    		elseif mousePos.x > 241+662-1 and mousePos.x < 241+662+11 and mousePos.y > 166 + scrollOffset - 2 and mousePos.y < 166 + scrollOffset + scrollLength + 2 then
    			scrollOverBar = true
        	end

        	if scrollTop or scrollingUp then
        		Graphics.CSurface.GL_RenderPrimitive(scrollUpSelect)
        	else
        		Graphics.CSurface.GL_RenderPrimitive(scrollUpOn)
        	end
        	if scrollBottom or scrollingdown then
        		Graphics.CSurface.GL_RenderPrimitive(scrollDownSelect)
        	else
        		Graphics.CSurface.GL_RenderPrimitive(scrollDownOn)
        	end
        end

        local barColour = Graphics.GL_Color(1, 1, 1, 1)
        if scrollMax == 0 then
        	barColour = Graphics.GL_Color(160/255, 162/255, 171/255, 1)
        elseif scrollOverBar or mouseDownPos then
        	barColour = Graphics.GL_Color(58/255, 127/255, 255/255, 1)
        end

        Graphics.CSurface.GL_RenderPrimitive(itemPlanetBase)

		Graphics.CSurface.GL_DrawRect(662 + 1, 166 + scrollOffset - 1, 8, 1, barColour)
		Graphics.CSurface.GL_DrawRect(662, 166 + scrollOffset, 10, scrollLength, barColour)
		Graphics.CSurface.GL_DrawRect(662 + 1, 166 + scrollOffset + scrollLength, 8, 1, barColour)

        Graphics.freetype.easy_printCenter(5, 355 + 28, 132 + 12, "#")
        Graphics.freetype.easy_print(5, 355 + 44, 132 + 12 , "Name")
        Graphics.freetype.easy_print(5, 355 + 126 + 30, 132 + 12, "Price")
        Graphics.freetype.easy_print(5, 355 + 194, 132 + 12, "Demanded By")
		Graphics.CSurface.GL_PopMatrix()

    	Graphics.CSurface.GL_PushStencilMode()
        Graphics.CSurface.GL_SetStencilMode(1,1,1)
        Graphics.CSurface.GL_ClearAll()
        Graphics.CSurface.GL_SetStencilMode(1,1,1)
        Graphics.CSurface.GL_RenderPrimitive(itemPlanetStencil)
        Graphics.CSurface.GL_SetStencilMode(2,1,1)

        local itemCount = 2
        scrollMax = math.max(0, planetItemCount * 20 - 376)
        --print(scrollMax)
        hoverItem = -1
        for i, v in ipairs(planetTable.inventory) do
        	local InfoTable = cargoList[i]
			Graphics.CSurface.GL_PushMatrix()
	        Graphics.CSurface.GL_Translate(241, 20 * itemCount - 10 - scroll, 0)
	        if v.number > 0 then
		        Graphics.CSurface.GL_RenderPrimitive(itemPlanet)
		    else
		        Graphics.CSurface.GL_RenderPrimitive(itemPlanetOff)
		    end
		    if v.price < InfoTable.average - InfoTable.basePrice then 
		        Graphics.CSurface.GL_RenderPrimitive(itemTrend1)
		    elseif v.price < InfoTable.average - 0.4 * InfoTable.basePrice then 
		        Graphics.CSurface.GL_RenderPrimitive(itemTrend2)
		    elseif v.price > InfoTable.average + InfoTable.basePrice then 
		        Graphics.CSurface.GL_RenderPrimitive(itemTrend5)
		    elseif v.price > InfoTable.average + 0.4 * InfoTable.basePrice then 
		        Graphics.CSurface.GL_RenderPrimitive(itemTrend4)
		    else
		        Graphics.CSurface.GL_RenderPrimitive(itemTrend3)
		    end
	        Graphics.CSurface.GL_RenderPrimitive(typeImages[InfoTable.type])
	        local amount = tostring(math.floor(v.number))
	        if v.number > 999999 then
	        	amount = tostring(math.floor(v.number / 1000000)).."M"
	        elseif v.number > 9999 then
	        	amount = tostring(math.floor(v.number / 1000)).."K"
	        elseif v.number > 999 then
	        	local sub = tostring(math.floor(v.number / 100)).."K"
	        	--print(sub)
	        	amount = string.sub(sub, 1, 1).."."..string.sub(sub, 2, 3)
	        end
            Graphics.freetype.easy_printCenter(5, 355 + 28, 132 + 2, amount)
            Graphics.freetype.easy_print(5, 355 + 44, 132 + 2 , InfoTable.name)
            Graphics.freetype.easy_print(5, 355 + 126 + 30, 132 + 2, math.ceil(v.price).."c")
            local s = ""
            local set = false
            for key, short in ipairs(industryListShort) do
            	if InfoTable.demand[key] then
            		if set == false then
            			s = short
            			set = true
            		else
	            		s = s..", "..short
	            	end
            	end
            end
            Graphics.freetype.easy_print(5, 355 + 194, 132 + 2, s)
   			Graphics.CSurface.GL_PopMatrix()
	        --Graphics.CSurface.GL_PopStencilMode()
	        itemCount = itemCount + 1
	    end
	    planetItemCount = itemCount - 2
        Graphics.CSurface.GL_SetStencilMode(0,1,1)
    	Graphics.CSurface.GL_PopStencilMode()
	end

    if tab2Spin <= 75 then
    	tab2Spin = math.min(100, tab2Spin + 5 * Hyperspace.FPS.SpeedFactor/16 + tab2Spin * Hyperspace.FPS.SpeedFactor/8)
    else
    	tab2Spin = math.min(100, tab2Spin + (5 - ((tab2Spin - 75) / 25) * 4.95) * Hyperspace.FPS.SpeedFactor/16 + (tab2Spin - (tab2Spin - 75) * 3) * Hyperspace.FPS.SpeedFactor/8)
    end
end

local exchangeButton = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_ex_button.png", 0, 0, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local exchangeButtonSmall = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_ex_button_small.png", 0, 0, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

local function RenderTab3(mousePos)
	
	if currentPlanet < 0 then
	    Graphics.freetype.easy_printCenter(64, 635, 292, "NO TRADING\nAVAILABLE HERE")
		--Graphics.CSurface.GL_DrawRect(635, 338, 1, 1, Graphics.GL_Color(1, 0, 0, 1))
	else
		local planetTable = planetTableList[currentPlanet]
    	Graphics.CSurface.GL_RenderPrimitive(itemPlanetBase)
		Graphics.CSurface.GL_RenderPrimitive(sidebarTop)
		if buyingFromPlanet then
		    Graphics.freetype.easy_printCenter(62, 797, 148, planetNameList[planetTable.name])
		    Graphics.freetype.easy_printCenter(6, 797, 168, "Exchange Rate: "..math.floor(planetTable.exchangeRate).."c per ~")
		    local tooExpensive1 = false
		    local tooExpensive2 = false
		    if Hyperspace.ships.player.currentScrap < exchangeMult then
    			tooExpensive1 = true
    		end
		    if playerCredits < planetTable.exchangeRate * exchangeMult then
    			tooExpensive2 = true
    		end
		    if mousePos.y > 183 and mousePos.y < 202 then
		    	if mousePos.x > 721 and mousePos.x < 796 and not tooExpensive1 then
		    		exchangeHover = 1
		    	elseif mousePos.x > 798 and mousePos.x < 873 and not tooExpensive2 then
		    		exchangeHover = 2
		    	end
		    end
		    if mousePos.x > 687 and mousePos.x < 713 then
		    	if mousePos.y > 168 and mousePos.y < 179 then
		    		exchangeMultHover = 1
		    	elseif mousePos.y > 179 and mousePos.y < 190 then
		    		exchangeMultHover = 2
		    	elseif mousePos.y > 190 and mousePos.y < 201 then
		    		exchangeMultHover = 3
		    	end
		    end
			Graphics.CSurface.GL_PushMatrix()
			Graphics.CSurface.GL_Translate(688, 169, 0)
			if exchangeMultHover == 1 then 
				Graphics.CSurface.GL_SetColorTint(Graphics.GL_Color(58/255, 127/255, 255/255, 1))
			end
    		Graphics.CSurface.GL_RenderPrimitive(exchangeButtonSmall)
			Graphics.CSurface.GL_PopMatrix()
		    Graphics.freetype.easy_printCenter(51, 700, 169, "1x")
		    Graphics.CSurface.GL_RemoveColorTint()

			Graphics.CSurface.GL_PushMatrix()
			Graphics.CSurface.GL_Translate(688, 180, 0)
			if exchangeMultHover == 2 then 
				Graphics.CSurface.GL_SetColorTint(Graphics.GL_Color(58/255, 127/255, 255/255, 1))
			end
    		Graphics.CSurface.GL_RenderPrimitive(exchangeButtonSmall)
			Graphics.CSurface.GL_PopMatrix()
		    Graphics.freetype.easy_printCenter(51, 700, 180, "10x")
		    Graphics.CSurface.GL_RemoveColorTint()

			Graphics.CSurface.GL_PushMatrix()
			Graphics.CSurface.GL_Translate(688, 191, 0)
			if exchangeMultHover == 3 then 
				Graphics.CSurface.GL_SetColorTint(Graphics.GL_Color(58/255, 127/255, 255/255, 1))
			end
    		Graphics.CSurface.GL_RenderPrimitive(exchangeButtonSmall)
			Graphics.CSurface.GL_PopMatrix()
		    Graphics.freetype.easy_printCenter(51, 700, 191, "100x")
		    Graphics.CSurface.GL_RemoveColorTint()

			Graphics.CSurface.GL_PushMatrix()
			Graphics.CSurface.GL_Translate(723-7, 185, 0)
			if tooExpensive1 then
				Graphics.CSurface.GL_SetColorTint(Graphics.GL_Color(160/255, 162/255, 171/255, 1))
			elseif exchangeHover == 1 then 
				Graphics.CSurface.GL_SetColorTint(Graphics.GL_Color(58/255, 127/255, 255/255, 1))
			end
    		Graphics.CSurface.GL_RenderPrimitive(exchangeButton)
			Graphics.CSurface.GL_PopMatrix()
		    Graphics.freetype.easy_printCenter(6, 759-3, 184, math.floor(planetTable.exchangeRate * exchangeMult).."c for "..math.floor(exchangeMult).."~")
    		Graphics.CSurface.GL_RemoveColorTint()

			Graphics.CSurface.GL_PushMatrix()
			Graphics.CSurface.GL_Translate(799, 185, 0)
			if tooExpensive2 then
				Graphics.CSurface.GL_SetColorTint(Graphics.GL_Color(160/255, 162/255, 171/255, 1))
			elseif exchangeHover == 2 then 
				Graphics.CSurface.GL_SetColorTint(Graphics.GL_Color(58/255, 127/255, 255/255, 1))
			end
    		Graphics.CSurface.GL_RenderPrimitive(exchangeButton)
			Graphics.CSurface.GL_PopMatrix()
		    Graphics.freetype.easy_printCenter(6, 835+4, 184, math.floor(exchangeMult).."~ for "..math.floor(planetTable.exchangeRate * exchangeMult).."c")
		    Graphics.CSurface.GL_RemoveColorTint()
		else
		    Graphics.freetype.easy_printCenter(62, 797, 148, "YOUR CARGO")
		    Graphics.freetype.easy_printCenter(10, 797, 170, "Credits:"..math.floor(playerCredits))
		    Graphics.freetype.easy_printCenter(10, 797, 186, math.floor(playerCargo).."/"..math.floor(playerCargoSpace).." Cargo Space")
		end

		


	    local currentInventory = playerInventory
	    if buyingFromPlanet then
	    	currentInventory = planetTable.inventory
	    end

		if selectedBuyItem > 0 then
			local cInfoTab = cargoList[selectedBuyItem]
			if buyingFromPlanet then
	    		Graphics.CSurface.GL_RenderPrimitive(sidebarBot2)
	    	else
	    		Graphics.CSurface.GL_RenderPrimitive(sidebarBot3)
	    	end
	    	Graphics.freetype.easy_printCenter(14, 797, 218, cargoList[selectedBuyItem].name)

	    	Graphics.freetype.easy_printCenter(0, 797, 381, math.floor(planetTableList[currentPlanet].inventory[selectedBuyItem].price).."c per kg")

	    	Graphics.freetype.easy_printCenter(6, 797, 401, "Supplied By: "..industryList[cInfoTab.supply])
	    	local s = ""
	        local set = false
	        for key, short in ipairs(industryList) do
	        	if cInfoTab.demand[key] then
	        		if set == false then
	        			s = short
	        			set = true
	        		else
	            		s = s..", "..short
	            	end
	        	end
	        end
	        Graphics.freetype.easy_printCenter(6, 797, 418, "Consumed By:")
	    	Graphics.freetype.easy_printCenter(6, 797, 428, s)
	    	Graphics.freetype.easy_printCenter(10, 797, 455, "Average:\n"..math.ceil(cInfoTab.average).."c")

	    	local max = nil
	    	local min = nil
	    	local maxPlanet = -1
	    	local minPlanet = -1
	    	for planet, pTable in ipairs(planetTableList) do
	    		if pTable.beacon >= 0 then
		    		local price = pTable.inventory[selectedBuyItem].price
		    		if max then
		    			if price > max then
		    				max = price
		    				maxPlanet = planet
		    			end
		    		else
						max = price
						maxPlanet = planet
					end
					if min then
		    			if price < min then
		    				min = price
		    				minPlanet = planet
		    			end
		    		else
						min = price
						minPlanet = planet
					end
				end
			end
			Graphics.CSurface.GL_PushMatrix()
			Graphics.CSurface.GL_Translate(201, 319, 0)
	    	Graphics.CSurface.GL_RenderPrimitive(itemTrend4)
			Graphics.CSurface.GL_PopMatrix()

			Graphics.CSurface.GL_PushMatrix()
			Graphics.CSurface.GL_Translate(359, 319, 0)
	    	Graphics.CSurface.GL_RenderPrimitive(itemTrend2)
			Graphics.CSurface.GL_PopMatrix()
	    	Graphics.freetype.easy_printCenter(10, 719, 452, " Max:\n"..math.ceil(max).."c")
	    	Graphics.freetype.easy_printCenter(6, 719, 480, planetNameList[planetTableList[maxPlanet].name])
	    	Graphics.freetype.easy_printCenter(10, 875, 452, " Min:\n"..math.ceil(min).."c")
	    	Graphics.freetype.easy_printCenter(6, 875, 480, planetNameList[planetTableList[minPlanet].name])

	    	if buyingFromPlanet then
		    	Graphics.CSurface.GL_RenderPrimitive(creditTab)
		    	Graphics.freetype.easy_printCenter(5, 711, 499, "You")
		    	Graphics.freetype.easy_printCenter(5, 711, 514, math.floor(playerCredits).."c")

				Graphics.CSurface.GL_PushMatrix()
				Graphics.CSurface.GL_Translate(172, 0, 0)
		    	Graphics.CSurface.GL_RenderPrimitive(creditTab)
		    	Graphics.freetype.easy_printCenter(5, 711, 499, "Price")
		    	Graphics.freetype.easy_printCenter(5, 711, 514, math.floor(planetTableList[currentPlanet].inventory[selectedBuyItem].price * buyAmt).."c")
				Graphics.CSurface.GL_PopMatrix()
			else
		    	Graphics.CSurface.GL_RenderPrimitive(creditTab)
		    	Graphics.freetype.easy_printCenter(5, 711, 499, "Value")
		    	Graphics.freetype.easy_printCenter(5, 711, 514, math.floor(planetTableList[currentPlanet].inventory[selectedBuyItem].price * buyAmt).."c")

				Graphics.CSurface.GL_PushMatrix()
				Graphics.CSurface.GL_Translate(172, 0, 0)
		    	Graphics.CSurface.GL_RenderPrimitive(creditTab)
		    	Graphics.freetype.easy_printCenter(5, 711, 499, "Tariff")
		    	Graphics.freetype.easy_printCenter(5, 711, 514, math.floor(planetTableList[currentPlanet].inventory[selectedBuyItem].price * buyAmt * planetTableList[currentPlanet].tariff).."c")
				Graphics.CSurface.GL_PopMatrix()
			end

	    	if mousePos.y > 498 and mousePos.y < 498+11 and currentInventory[selectedBuyItem].number > 0 then
	        	if mousePos.x > 743 and mousePos.x < 743+11 then
	        		bAmountHover = 1
	        	elseif mousePos.x > 755 and mousePos.x < 755+11 then
	        		bAmountHover = 2
	        	elseif mousePos.x > 767 and mousePos.x < 767+11 then
	        		bAmountHover = 3
	        	elseif mousePos.x > 817 and mousePos.x < 817+11 then
	        		bAmountHover = 4
	        	elseif mousePos.x > 829 and mousePos.x < 829+11 then
	        		bAmountHover = 5
	        	elseif mousePos.x > 841 and mousePos.x < 841+11 then
	        		bAmountHover = 6
	        	end
	        end
	        if mousePos.x > 743-1 and mousePos.x < 743+110 and mousePos.y > 511-1 and mousePos.y < 511+21 and currentInventory[selectedBuyItem].number > 0 then
	        	buyHover = true
	        end
	        if currentInventory[selectedBuyItem].number > 0 then
	    		Graphics.freetype.easy_printCenter(5, 797, 497, math.floor(buyAmt))
		        if bAmountHover == 3 then
		        	Graphics.CSurface.GL_RenderPrimitive(jettisonDownMinS)
		        else
		        	Graphics.CSurface.GL_RenderPrimitive(jettisonDownMin)
		        end
		        if bAmountHover == 2 then
		        	Graphics.CSurface.GL_RenderPrimitive(jettisonDownBigS)
		        else
		        	Graphics.CSurface.GL_RenderPrimitive(jettisonDownBig)
		        end
		        if bAmountHover == 1 then
		        	Graphics.CSurface.GL_RenderPrimitive(jettisonDownMaxS)
		        else
		        	Graphics.CSurface.GL_RenderPrimitive(jettisonDownMax)
		        end

		        if bAmountHover == 4 then
		        	Graphics.CSurface.GL_RenderPrimitive(jettisonUpMinS)
		        else
		        	Graphics.CSurface.GL_RenderPrimitive(jettisonUpMin)
		        end
		        if bAmountHover == 5 then
		        	Graphics.CSurface.GL_RenderPrimitive(jettisonUpBigS)
		        else
		        	Graphics.CSurface.GL_RenderPrimitive(jettisonUpBig)
		        end
		        if bAmountHover == 6 then
		        	Graphics.CSurface.GL_RenderPrimitive(jettisonUpMaxS)
		        else
		        	Graphics.CSurface.GL_RenderPrimitive(jettisonUpMax)
		        end

		        if buyAmt > 0 and not buyPoor then
			        if buyHover then 
			        	if buyingFromPlanet then
				        	Graphics.CSurface.GL_RenderPrimitive(buyButtonSelect)
				        else
				        	Graphics.CSurface.GL_RenderPrimitive(sellButtonSelect)
				        end
			        else
			        	if buyingFromPlanet then
				        	Graphics.CSurface.GL_RenderPrimitive(buyButton)
				        else
				        	Graphics.CSurface.GL_RenderPrimitive(sellButton)
				        end
			        end
			    end
			end
	    end

		Graphics.CSurface.GL_RenderPrimitive(scrollBar)

	    local scrollLength = math.ceil(math.min(376 / (planetItemCount * 20), 1) * 346)

		if mouseDownPos then
			scroll = math.min(scrollMax, math.max(0, scroll + ((Hyperspace.Mouse.position.y - lastMousePos) / (346 - scrollLength)) * scrollMax ))
			lastMousePos = Hyperspace.Mouse.position.y
		elseif scrollingUp then
			scroll = math.max(0, scroll - 10 * planetItemCount * Hyperspace.FPS.SpeedFactor/16)
		elseif scrollingDown then
			scroll = math.min(scrollMax, scroll + 10 * planetItemCount * Hyperspace.FPS.SpeedFactor/16)
		end
		scroll = math.min(scrollMax, math.max(0, scroll))

	    local scrollOffset = (scroll/scrollMax) * (346 - scrollLength) 
	    if scrollMax == 0 then
	    	scrollOffset = 0
	    end
	    --local scrollBack = (scrollOffset / (346 - scrollLength)) * scrollMax
	    --print("scroll:"..tostring(scroll).." offset:"..tostring(scrollOffset).." back:"..tostring(scrollBack))

	    if scrollMax == 0 then
			Graphics.CSurface.GL_RenderPrimitive(scrollUpOff)
			Graphics.CSurface.GL_RenderPrimitive(scrollDownOff)
	    else
	    	if mousePos.x > 659-1 and mousePos.x < 659+17 and mousePos.y > 142-1 and mousePos.y < 142+18 then
	    		scrollTop = true
	    	elseif mousePos.x > 662-1 and mousePos.x < 662+17 and mousePos.y > 519-1 and mousePos.y < 519+18 then
				scrollBottom = true
			elseif mousePos.x > 662-1 and mousePos.x < 662+11 and mousePos.y > 166 + scrollOffset - 2 and mousePos.y < 166 + scrollOffset + scrollLength + 2 then
				scrollOverBar = true
	    	end

	    	if scrollTop or scrollingUp then
	    		Graphics.CSurface.GL_RenderPrimitive(scrollUpSelect)
	    	else
	    		Graphics.CSurface.GL_RenderPrimitive(scrollUpOn)
	    	end
	    	if scrollBottom or scrollingdown then
	    		Graphics.CSurface.GL_RenderPrimitive(scrollDownSelect)
	    	else
	    		Graphics.CSurface.GL_RenderPrimitive(scrollDownOn)
	    	end
	    end

	    local barColour = Graphics.GL_Color(1, 1, 1, 1)
	    if scrollMax == 0 then
	    	barColour = Graphics.GL_Color(160/255, 162/255, 171/255, 1)
	    elseif scrollOverBar or mouseDownPos then
	    	barColour = Graphics.GL_Color(58/255, 127/255, 255/255, 1)
	    end

		Graphics.CSurface.GL_DrawRect(662 + 1, 166 + scrollOffset - 1, 8, 1, barColour)
		Graphics.CSurface.GL_DrawRect(662, 166 + scrollOffset, 10, scrollLength, barColour)
		Graphics.CSurface.GL_DrawRect(662 + 1, 166 + scrollOffset + scrollLength, 8, 1, barColour)

	    Graphics.freetype.easy_printCenter(5, 355 + 28, 132 + 12, "#")
	    Graphics.freetype.easy_print(5, 355 + 44, 132 + 12 , "Name")
        Graphics.freetype.easy_print(5, 355 + 126 + 30, 132 + 12, "Price")
        Graphics.freetype.easy_print(5, 355 + 194, 132 + 12, "Demanded By")

		Graphics.CSurface.GL_PushStencilMode()
	    Graphics.CSurface.GL_SetStencilMode(1,1,1)
	    Graphics.CSurface.GL_RenderPrimitive(stencilImage)
	    Graphics.CSurface.GL_SetStencilMode(2,1,1)

	    local itemCount = 2
	    scrollMax = math.max(0, planetItemCount * 20 - 376)
	    --print(scrollMax)
	    hoverBuyItem = -1
	    for i, v in ipairs(currentInventory) do
        	local InfoTable = cargoList[i]
	        --Graphics.CSurface.GL_PushStencilMode()
        	if mousePos.x > 355-1 and mousePos.x < 355+301 and mousePos.y > 20 * itemCount - 10 - scroll + 132-1 and mousePos.y < 20 * itemCount - 10 - scroll + 132+18 then
        		hoverBuyItem = i
        	end
        	if 20 * itemCount - 10 - scroll >= -20 then 
    			Graphics.CSurface.GL_PushMatrix()
		        Graphics.CSurface.GL_Translate(0,20 * itemCount - 10 - scroll)
		        if selectedBuyItem == i then
			        Graphics.CSurface.GL_RenderPrimitive(itemPlanetSelectGlow)
		        elseif hoverBuyItem == i then
			        Graphics.CSurface.GL_RenderPrimitive(itemPlanetSelect)
		        elseif v.number <= 0 then
			        Graphics.CSurface.GL_RenderPrimitive(itemPlanetOff)
		        else
			        Graphics.CSurface.GL_RenderPrimitive(itemPlanet)
			    end

			    local itemPrice = planetTable.inventory[i].price

			    if itemPrice < InfoTable.average - InfoTable.basePrice then 
			        Graphics.CSurface.GL_RenderPrimitive(itemTrend1)
			    elseif itemPrice < InfoTable.average - 0.4 * InfoTable.basePrice then 
			        Graphics.CSurface.GL_RenderPrimitive(itemTrend2)
			    elseif itemPrice > InfoTable.average + InfoTable.basePrice then 
			        Graphics.CSurface.GL_RenderPrimitive(itemTrend5)
			    elseif itemPrice > InfoTable.average + 0.4 * InfoTable.basePrice then 
			        Graphics.CSurface.GL_RenderPrimitive(itemTrend4)
			    else
			        Graphics.CSurface.GL_RenderPrimitive(itemTrend3)
			    end

		        Graphics.CSurface.GL_RenderPrimitive(typeImages[InfoTable.type])
		        local amount = tostring(math.floor(v.number))
		        if v.number > 999999 then
		        	amount = tostring(math.floor(v.number / 1000000)).."M"
		        elseif v.number > 9999 then
		        	amount = tostring(math.floor(v.number / 1000)).."K"
		        elseif v.number > 999 then
		        	local sub = tostring(math.floor(v.number / 100)).."K"
		        	--print(sub)
		        	amount = string.sub(sub, 1, 1).."."..string.sub(sub, 2, 3)
		        end
	            Graphics.freetype.easy_printCenter(5, 355 + 28, 132 + 2, amount)
	            Graphics.freetype.easy_print(5, 355 + 44, 132 + 2 , InfoTable.name)
            	Graphics.freetype.easy_print(5, 355 + 126 + 30, 132 + 2, math.ceil(itemPrice).."c")
	            local s = ""
	            local set = false
	            for key, short in ipairs(industryListShort) do
	            	if InfoTable.demand[key] then
	            		if set == false then
	            			s = short
	            			set = true
	            		else
		            		s = s..", "..short
		            	end
	            	end
	            end
	            Graphics.freetype.easy_print(5, 355 + 194, 132 + 2, s)
       			Graphics.CSurface.GL_PopMatrix()
       		end
	        --Graphics.CSurface.GL_PopStencilMode()
	        itemCount = itemCount + 1
	    end
	    planetItemCount = itemCount - 2
	    Graphics.CSurface.GL_SetStencilMode(0,1,1)
		Graphics.CSurface.GL_PopStencilMode()
		if mousePos.x > 880 and mousePos.x < 920 and mousePos.y > 186 and mousePos.y < 226 then
			Graphics.CSurface.GL_RenderPrimitive(switchButtonSelect)
			switchButtonHover = true
		else
			Graphics.CSurface.GL_RenderPrimitive(switchButtonOn)
		end
	end
end

script.on_render_event(Defines.RenderEvents.SPACE_STATUS, function() end, function()
	local commandGui = Hyperspace.Global.GetInstance():GetCApp().gui
	scrollTop = false
	scrollBottom = false
	scrollOverBar = false
	menuButtonHover = false
	backButtonHover = false
	jettisonHover = false
	switchButtonHover = false
	buyHover = false
	tab1Hover = false
	tab2Hover = false
	tab3Hover = false
	tab4Hover = false
	planetLeftButton = false
	planetRightButton = false
	exchangeHover = 0
	exchangeMultHover = 0
	hoverPlanet = -1
    jAmountHover = 0
    bAmountHover = 0
    currentPlanet = -1
	local mousePos = Hyperspace.Mouse.position
	if (Hyperspace.ships.enemy and Hyperspace.ships.enemy._targetable.hostile) or inMenu then
		Graphics.CSurface.GL_RenderPrimitive(menuButtonOff)
	elseif mousePos.x > 1207 + 7 and mousePos.x < 1207 + 45 and mousePos.y > 608 + 7 and mousePos.y < 608 + 45 then
    	menuButtonHover = true
		Graphics.CSurface.GL_RenderPrimitive(menuButtonSelect)
	else
		Graphics.CSurface.GL_RenderPrimitive(menuButtonOn)
    end


	if inMenu then
        Graphics.CSurface.GL_RenderPrimitive(backImage)
        if tab == 1 then
    		Graphics.CSurface.GL_RenderPrimitive(tab1Image)
        	Graphics.CSurface.GL_RenderPrimitive(backImageTab1)
	        if mousePos.x > 433 and mousePos.x < 513 and mousePos.y > 88 and mousePos.y < 125 then
	        	tab2Hover = true
    			Graphics.CSurface.GL_RenderPrimitive(tab2ImageSelect)
	        elseif mousePos.x > 514 and mousePos.x < 594 and mousePos.y > 88 and mousePos.y < 125 then
	        	tab3Hover = true
    			Graphics.CSurface.GL_RenderPrimitive(tab3ImageSelect)
	        elseif mousePos.x > 595 and mousePos.x < 675 and mousePos.y > 88 and mousePos.y < 125 then
	        	tab4Hover = true
    			Graphics.CSurface.GL_RenderPrimitive(tab4ImageSelect)
	        end
    	elseif tab == 2 then
    		Graphics.CSurface.GL_RenderPrimitive(tab2Image)
	        if mousePos.x > 352 and mousePos.x < 432 and mousePos.y > 88 and mousePos.y < 125 then
	        	tab1Hover = true
    			Graphics.CSurface.GL_RenderPrimitive(tab1ImageSelect)
	        elseif mousePos.x > 514 and mousePos.x < 594 and mousePos.y > 88 and mousePos.y < 125 then
	        	tab3Hover = true
    			Graphics.CSurface.GL_RenderPrimitive(tab3ImageSelect)
	        elseif mousePos.x > 595 and mousePos.x < 675 and mousePos.y > 88 and mousePos.y < 125 then
	        	tab4Hover = true
    			Graphics.CSurface.GL_RenderPrimitive(tab4ImageSelect)
	        end
    	elseif tab == 3 then
    		Graphics.CSurface.GL_RenderPrimitive(tab3Image)
	        if mousePos.x > 352 and mousePos.x < 432 and mousePos.y > 88 and mousePos.y < 125 then
	        	tab1Hover = true
    			Graphics.CSurface.GL_RenderPrimitive(tab1ImageSelect)
	        elseif mousePos.x > 433 and mousePos.x < 513 and mousePos.y > 88 and mousePos.y < 125 then
	        	tab2Hover = true
    			Graphics.CSurface.GL_RenderPrimitive(tab2ImageSelect)
	        elseif mousePos.x > 595 and mousePos.x < 675 and mousePos.y > 88 and mousePos.y < 125 then
	        	tab4Hover = true
    			Graphics.CSurface.GL_RenderPrimitive(tab4ImageSelect)
	        end
    	end
    	if commandGui.menu_pause then return end
    	local map = Hyperspace.App.world.starMap
		local location = map.currentLoc
		for i, pTable in ipairs(planetTableList) do
			if pTable.beacon > -1 then
				local location2 = map.locations[pTable.beacon]
				if location2.loc.x == location.loc.x and location2.loc.y == location.loc.y then
					currentPlanet = i
					break
				end
			end
		end
    	if tab == 3 then
    		RenderTab3(mousePos)
	    elseif tab == 2 then
	        RenderTab2(mousePos)
	    elseif tab == 1 then
	        RenderTab1(mousePos)
	    end
	end

end)

local planettag3l = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planettag3l.png", 0, 0, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local planettag3c = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planettag3c.png", 0, 0, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local planettag3r = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planettag3r.png", 0, 0, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

script.on_render_event(Defines.RenderEvents.GUI_CONTAINER, function() end, function() 
	local map = Hyperspace.App.world.starMap
	if map.bOpen then
		--print("OPEN")
		for i, pTable in ipairs(planetTableList) do
			if pTable.beacon > -1 then
				local location = map.locations[pTable.beacon]
				local locX = location.loc.x
				local locY = location.loc.y
				local size = Graphics.freetype.easy_measureWidth(51, planetNameList[pTable.name]) - 8
				--print(size)
				--Graphics.CSurface.GL_DrawRect(locX + 385, locY + 122, 10, 10, Graphics.GL_Color(1, 1, 1, 1))
				Graphics.CSurface.GL_PushMatrix()
		        Graphics.CSurface.GL_Translate(locX + 385, locY + 122, 0)
				Graphics.CSurface.GL_RenderPrimitive(planettag3l)
				Graphics.CSurface.GL_PopMatrix()

				for offset = 0, size-1, 1 do
					Graphics.CSurface.GL_PushMatrix()
			        Graphics.CSurface.GL_Translate(locX + 385 + 19 + offset, locY + 122, 0)
					Graphics.CSurface.GL_RenderPrimitive(planettag3c)
					Graphics.CSurface.GL_PopMatrix()
				end

				Graphics.CSurface.GL_PushMatrix()
		        Graphics.CSurface.GL_Translate(locX + 385 + 19 + size, locY + 122, 0)
				Graphics.CSurface.GL_RenderPrimitive(planettag3r)
				Graphics.CSurface.GL_PopMatrix()
	            Graphics.freetype.easy_print(51, locX + 385 + 15, locY + 122 + 15, planetNameList[pTable.name])
	        end
		end
	end
end)


script.on_internal_event(Defines.InternalEvents.ON_MOUSE_L_BUTTON_DOWN, function(x,y)
	--print("MOUSE L DOWN")
	if scrollTop then
		--print("SCROLL UP")
		scrollingUp = true
	elseif scrollBottom then
		--print("SCROLL DOWN")
		scrollingDown = true
	elseif scrollOverBar then
		--print("BAR")
		mouseDownPos = Hyperspace.Mouse.position.y
		lastMousePos = Hyperspace.Mouse.position.y
	elseif hoverItem > 0 then
		--print("SET ITEM")
		selectedItem = hoverItem
		hoverItem = -1
		jettisonAmt = 0
	elseif hoverBuyItem > 0 then
		selectedBuyItem = hoverBuyItem
		hoverBuyItem = -1
		buyAmt = 0
	end

	if hoverPlanet > -1 then 
		selectPlanet = hoverPlanet
		hoverPlanet = -1
	end
	if backButtonHover then
		oldSelectPlanet = selectPlanet
		selectPlanet = -1
	end
	if switchButtonHover then
		buyingFromPlanet = not buyingFromPlanet
	end

	if exchangeHover == 1 then
        Hyperspace.Sounds:PlaySoundMix("buy", -1, false)
		playerCredits = playerCredits + planetTableList[currentPlanet].exchangeRate * exchangeMult
		Hyperspace.ships.player:ModifyScrapCount(-1 * exchangeMult,false)
    	savePlayerInventory()
	elseif exchangeHover == 2 then
        Hyperspace.Sounds:PlaySoundMix("buy", -1, false)
		playerCredits = playerCredits - planetTableList[currentPlanet].exchangeRate * exchangeMult
		Hyperspace.ships.player:ModifyScrapCount(exchangeMult,false)
    	savePlayerInventory()
	elseif exchangeMultHover == 1 then
		exchangeMult = 1
	elseif exchangeMultHover == 2 then
		exchangeMult = 10
	elseif exchangeMultHover == 3 then
		exchangeMult = 100
	end

	if planetLeftButton then
		--print("left")
		selectPlanet = selectPlanet - 1
		if selectPlanet < 1 then
			local count = 0
			for i, planetTable in ipairs(planetTableList) do
				if planetTable.beacon > -1 then
					count = count + 1
		    	end
			end
			selectPlanet = count
		end
	elseif planetRightButton then
		--print("right")
		selectPlanet = selectPlanet + 1
		local count = 0
		for i, planetTable in ipairs(planetTableList) do
			if planetTable.beacon > -1 then
				count = count + 1
	    	end
		end
		if selectPlanet > count then
			selectPlanet = 1
		end
	end

	if tab1Hover then
		tab = 1
		if selectedItem == -1 then
			for i, n in ipairs(playerInventory) do
				if n.number > 0 then
					selectedItem = i
					break
				end
			end
		end
	elseif tab2Hover then
		tab = 2
		tab2Spin = 1
	elseif tab3Hover then
		tab = 3
		if selectedBuyItem == -1 then
			for i, n in ipairs(planetTableList[currentPlanet].inventory) do
				if n.number > 0 then
					selectedBuyItem = i
					break
				end
			end
		end
	elseif tab4Hover then
		inMenu = false
	elseif menuButtonHover then
		inMenu = true
		tab2Spin = 1
		buyAmt = 0
		jettisonAmt = 0
		calculateCargo()
		if selectedItem == -1 then
			for i, n in ipairs(playerInventory) do
				if n.number > 0 then
					selectedItem = i
					break
				end
			end
		end
		if selectedBuyItem == -1 then
			for i, n in ipairs(planetTableList[currentPlanet].inventory) do
				if n.number > 0 then
					selectedBuyItem = i
					break
				end
			end
		end
	end

	if jettisonHover and jettisonAmt > 0 then
        Hyperspace.Sounds:PlaySoundMix("breach", -1, false)
		playerInventory[selectedItem].number = playerInventory[selectedItem].number - jettisonAmt
		if playerInventory[selectedItem].number <= 0 then
			selectedItem = -1
			for i, n in ipairs(playerInventory) do
				if n.number > 0 then
					selectedItem = i
					break
				end
			end
		end
		calculateCargo()
		savePlayerInventory()
		jettisonAmt = 0
	end
	if jAmountHover == 1 then
		jettisonAmt = 0
	elseif jAmountHover == 2 then
		if jettisonAmt >= 400 then
			jettisonAmt = math.max(0, jettisonAmt - 100)
		else
			jettisonAmt = math.max(0, jettisonAmt - 10)
		end
	elseif jAmountHover == 3 then
		jettisonAmt = math.max(0, jettisonAmt - 1)
	elseif jAmountHover == 4 then
		jettisonAmt = math.min(playerInventory[selectedItem].number, jettisonAmt + 1)
	elseif jAmountHover == 5 then
		if jettisonAmt >= 300 then
			jettisonAmt = math.min(playerInventory[selectedItem].number, jettisonAmt + 100)
		else
			jettisonAmt = math.min(playerInventory[selectedItem].number, jettisonAmt + 10)
		end
	elseif jAmountHover == 6 then
		jettisonAmt = playerInventory[selectedItem].number
	end

	if buyHover and buyAmt > 0 and not buyPoor then
        Hyperspace.Sounds:PlaySoundMix("buy", -1, false)
        if buyingFromPlanet then
        	playerCredits = playerCredits - planetTableList[currentPlanet].inventory[selectedBuyItem].price * buyAmt 
			planetTableList[currentPlanet].inventory[selectedBuyItem].number = planetTableList[currentPlanet].inventory[selectedBuyItem].number - buyAmt
			playerInventory[selectedBuyItem].number = playerInventory[selectedBuyItem].number + buyAmt
		else
			playerCredits = playerCredits + planetTableList[currentPlanet].inventory[selectedBuyItem].price * buyAmt - math.floor(planetTableList[currentPlanet].inventory[selectedBuyItem].price * buyAmt * planetTableList[currentPlanet].tariff)
			playerInventory[selectedBuyItem].number = playerInventory[selectedBuyItem].number - buyAmt
			planetTableList[currentPlanet].inventory[selectedBuyItem].number = planetTableList[currentPlanet].inventory[selectedBuyItem].number + buyAmt
		end
		buyAmt = 0
		calculateCargo()
		savePlayerInventory()
		savePlanets()
	end
	if bAmountHover == 1 then
		buyAmt = 0
	elseif bAmountHover == 2 then
		if buyAmt >= 400 then
			buyAmt = math.max(0, buyAmt - 100)
		else
			buyAmt = math.max(0, buyAmt - 10)
		end
	elseif bAmountHover == 3 then
		buyAmt = math.max(0, buyAmt - 1)
	elseif bAmountHover == 4 then
		if buyingFromPlanet then
			buyAmt = math.min(planetTableList[currentPlanet].inventory[selectedBuyItem].number, buyAmt + 1)
		else 
			buyAmt = math.min(playerInventory[selectedBuyItem].number, buyAmt + 1)
		end
	elseif bAmountHover == 5 then
		if buyAmt >= 300 then
			if buyingFromPlanet then
				buyAmt = math.min(planetTableList[currentPlanet].inventory[selectedBuyItem].number, buyAmt + 100)
			else 
				buyAmt = math.min(playerInventory[selectedBuyItem].number, buyAmt + 100)
			end
		else
			if buyingFromPlanet then
				buyAmt = math.min(planetTableList[currentPlanet].inventory[selectedBuyItem].number, buyAmt + 10)
			else 
				buyAmt = math.min(playerInventory[selectedBuyItem].number, buyAmt + 10)
			end
		end
	elseif bAmountHover == 6 then
		if buyingFromPlanet then
			buyAmt = planetTableList[currentPlanet].inventory[selectedBuyItem].number
		else 
			buyAmt = playerInventory[selectedBuyItem].number
		end
	end
	if buyingFromPlanet and tab == 3 then
		buyAmt = math.min(playerCargoSpace - playerCargo, math.max(0, buyAmt))
		buyPoor = false
		local price = planetTableList[currentPlanet].inventory[selectedBuyItem].price
		if price * buyAmt > playerCredits then buyPoor = true end
	end

    return Defines.Chain.CONTINUE
end)
script.on_internal_event(Defines.InternalEvents.ON_MOUSE_L_BUTTON_UP, function(x,y) 
	--print("MOUSE L UP")
	if mouseDownPos then
		mouseDownPos = nil
		lastMousePos = nil
	elseif scrollingUp then
		scrollingUp = false
	elseif scrollingDown then
		scrollingDown = false
	end
    return Defines.Chain.CONTINUE
end)
script.on_internal_event(Defines.InternalEvents.ON_MOUSE_M_BUTTON_DOWN, function(x,y) 
	--print("MOUSE M UP")
    return Defines.Chain.CONTINUE
end)
script.on_internal_event(Defines.InternalEvents.ON_KEY_DOWN, function(key) 
	--print("KEY DOWN:"..tostring(key))
    return Defines.Chain.CONTINUE
end)
script.on_internal_event(Defines.InternalEvents.ON_KEY_UP, function(key) 
	--print("KEY UP:"..tostring(key))
    return Defines.Chain.CONTINUE
end)

local addLootRoom = false

script.on_internal_event(Defines.InternalEvents.CONSTRUCT_SHIP_MANAGER, function(ship)
	--print("CONSTRUCT")
	if ship.iShipId == 1 and Hyperspace.metaVariables["arctrade_loot_room"] == -1 then
		if math.random(1,4) == 1 then
			addLootRoom = true
		end
	end
end)

script.on_internal_event(Defines.InternalEvents.JUMP_LEAVE, function()
	--print("JUMP")
	Hyperspace.metaVariables["arctrade_loot_room"] = -1
end)

local lootOverlay = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/s_loot_overlay.png", -16, -16, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local lootLevel = 0

script.on_render_event(Defines.RenderEvents.SHIP, function() end, function(ship)
	if ship.iShipId == 1 then
		local shipManager = Hyperspace.ships.enemy
		if addLootRoom == true then
			--print("SET LOOT")
			addLootRoom = false
			local emptyRooms = {}
			for room in vter(shipManager.ship.vRoomList) do
				if not shipManager:GetSystemInRoom(room.iRoomId) then
					table.insert(emptyRooms, room.iRoomId)
				end
			end

			if #emptyRooms > 0 then
				local tabIndex = 1
				if #emptyRooms > 1 then
					tabIndex = math.random(1, #emptyRooms)
				end
				Hyperspace.metaVariables["arctrade_loot_room"] = emptyRooms[tabIndex]
				lootLevel = 0
			end
		end
		local commandGui = Hyperspace.Global.GetInstance():GetCApp().gui
		if Hyperspace.metaVariables["arctrade_loot_room"] >= 0 then

			local roomId = Hyperspace.metaVariables["arctrade_loot_room"]
			local location = shipManager:GetRoomCenter(roomId)
		    Graphics.CSurface.GL_DrawRect(location.x + 6 - 16, location.y + 12 - 16, 20, 11, Graphics.GL_Color(1, 1, 1, 1))
		    local hasFriendlyCrew = false
		    local hasEnemyCrew = false
		    local hasAnyECrew = false
		    if not (commandGui.bPaused or commandGui.event_pause or commandGui.menu_pause or commandGui.bAutoPaused or commandGui.touch_pause) then
			    for crewmem in vter(shipManager.vCrewList) do
			    	if crewmem.iShipId == 1 then
			    		hasAnyECrew = true
			    	end
			        if crewmem.iShipId == 1 and crewmem.iRoomId == roomId then
			            hasEnemyCrew = true
			        elseif crewmem.iShipId == 0 and crewmem.iRoomId == roomId then
			        	hasFriendlyCrew = true
			        end
			    end
			    if (hasFriendlyCrew and not hasAnyECrew) or not (Hyperspace.ships.enemy._targetable.hostile and hasAnyECrew) then
			    	lootLevel = 20
			    elseif hasFriendlyCrew and not hasEnemyCrew then
			    	lootLevel = lootLevel + Hyperspace.FPS.SpeedFactor/16
			    elseif not hasFriendlyCrew then
			    	lootLevel = math.max(0, lootLevel - Hyperspace.FPS.SpeedFactor/16)
			    end
			end
		    Graphics.CSurface.GL_DrawRect(location.x + 6 - 16, location.y + 12 - 16, lootLevel, 11, Graphics.GL_Color(1, 0, 0, 1))
		    Graphics.CSurface.GL_PushMatrix()
		    Graphics.CSurface.GL_Translate(location.x,location.y,0)
		    Graphics.CSurface.GL_RenderPrimitive(lootOverlay)
		    Graphics.CSurface.GL_PopMatrix()
		    if lootLevel >= 20 then
		    	lootLevel = 0
		    	giveRandomReward(20)
		    	Hyperspace.metaVariables["arctrade_loot_room"] = -1
		    end
		end
	end
end)