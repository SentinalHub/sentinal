local unpack_ = unpack or table.unpack
local Players = game:GetService("Players")
local t2 = {
	value1 = game:GetService("ReplicatedStorage")
}

game:GetService("RunService")
t2.value2 = Players.LocalPlayer

local _G_ = _G

_G_.__ANIMEDICE = (_G.__ANIMEDICE or 0) + 1
t2.value3 = _G.__ANIMEDICE

if _G.__ANIMEDICE_GUI then
	pcall(function()
		_G.__ANIMEDICE_GUI:Destroy()
	end)
end

local t1 = {
	value4 = true,
	value5 = "traitMin",
	value6 = true,
	value7 = "smartPlace",
	value8 = 0.3,
	value9 = 15,
	value10 = 10,
	value11 = "autoGrade",
	value12 = "levelShare",
	value13 = "levelPayback",
	value14 = "autoLevel",
	value15 = 3,
	value16 = "gradeMin",
	value3 = false,
	value2 = "autoRoll"
}
local value4 = {
	auto = t1.value3,
	autoRoll = true,
	autoSpins = true,
	autoCollect = true,
	smartPlace = t1.value6,
	autoLevel = true,
	levelShare = t1.value8,
	levelPayback = t1.value10,
	saveMinutes = t1.value9,
	autoGrade = true,
	gradeMin = t1.value15,
	autoTrait = t1.value4,
	traitMin = 1.5,
	autoBoost = true,
	autoFuse = true,
	fuseShare = 0.35,
	fuseSeconds = 30,
	autoTower = true,
	tower = "Auto (best)",
	towerBoosts = true,
	autoDice = true,
	autoUpgrade = true,
	autoRebirth = true,
	rebirthMult = 1,
	autoSell = true,
	sellRarity = 3,
	keepBest = 20,
	autoCodes = true,
	autoClaim = true
}

t1.value14 = "Exotic"
t1.value3 = "Money"
t1.value2 = "Luck"
t1.value12 = "Secret I / II"
t2.value4 = value4
t2.value5 = {
	"Money",
	"Luck",
	"Fortune",
	"Roll Speed",
	"Unit Storage",
	"Sell"
}
t1.value7 = "Mythical"
t1.value9 = 4
t1.value8 = "Heavenly"
t1.value5 = "nextUpgrade"
t1.value6 = "Divine"
t1.value11 = "incomePerSec"
t2.value6 = 100
t1.value10 = 0
t1.value16 = "invCount"
t1.value14 = "dice"
t1.value6 = 0
t1.value1 = {
	"Common",
	"Uncommon",
	"Rare",
	"Epic",
	"Legendary",
	"Mythical",
	"Divine",
	"Exotic",
	"Celestial",
	"Secret I / II",
	"Heavenly"
}
t1.value8 = "-"
t1.value15 = 0
t1.value7 = "rebirth"
t1.value13 = "slotsUsed"
t1.value12 = "nextDice"
t2.value7 = {
	money = 0,
	rolls = 0,
	rebirth = t1.value6,
	dice = "-",
	nextDice = "-",
	slotsUsed = t1.value10,
	slotsMax = t1.value9,
	incomePerSec = 0,
	invCount = t1.value15,
	invCap = t2.value6,
	nextUpgrade = "-",
	rolled = 0,
	collected = 0,
	diceBought = 0,
	rebirths = 0,
	leveled = 0,
	upgradesBought = 0,
	sold = 0,
	soldValue = 0,
	gradeRolls = 0,
	traitRolls = 0,
	boostsUsed = 0,
	luck = 0,
	towerRuns = 0,
	towerFloors = 0,
	towerBest = 0,
	towerFloor = 0,
	towerDrops = 0,
	fused = 0,
	fuseLast = "-",
	fuseBestChance = 0,
	towerPick = "-",
	towerPredict = 0,
	towerRate = 0,
	codesDone = 0,
	claims = 0,
	phase = "idle",
	note = "-",
	uiOwner = "-"
}
t1.value7 = 15
t1.value11 = "PlotService.RE.LevelUpSlot"

local value1 = t2.value1

t2.value8 = value1.WaitForChild(value1, "Network", 15)
t1.value14 = "RollService.RF.RollDice"
t1.value12 = "RollService.RE.SetAutoRoll"
t2.value9 = t2.value1:WaitForChild("Framework", t1.value7)

local function v8(p1)
	local value8 = t2.value8

	for match in string.gmatch(p1, "[^%.]+") do
		if value8 then
			value8 = value8:FindFirstChild(match)
		end
	end

	return value8
end

t1.value6 = v8("RollService.RF.RollDice")

local SetAutoRoll = v8("RollService.RE.SetAutoRoll")

t1.value12 = "EquipBest"
t1.value7 = "RollDice"
t1.value5 = "RebirthService.RE.Rebirth"
t1.value8 = v8("PlotService.RE.EquipBest")
t1.value13 = "CollectBalance"
t1.value16 = "DiceShopService.RE.BuyDice"
t1.value10 = v8("PlotService.RE.CollectBalance")
t1.value9 = v8("PlotService.RE.LevelUpSlot")

local BuyDice = v8("DiceShopService.RE.BuyDice")

t1.value15 = v8("DiceShopService.RE.EquipDice")
t1.value16 = "EquipDice"
t1.value4 = v8("RebirthService.RE.Rebirth")

local BuyUpgrade = v8("RE.BuyUpgrade")
local SellInventory = v8("SellService.RF.SellInventory")
local UpdateAutoSell = v8("SellService.RE.UpdateAutoSell")
local RedeemCode = v8("MonetizationService.RE.RedeemCode")
local Claim = v8("OfflineEarningsService.RE.Claim")
local Claim2 = v8("DailyRewardService.RE.Claim")
local Claim3 = v8("GroupRewardService.RE.Claim")
local Roll = v8("GradeService.RE.Roll")
local SetGradeProtected = v8("GradeService.RE.SetGradeProtected")
local Roll2 = v8("TraitService.RE.Roll")

t1.value1 = v8("TraitService.RE.SetTraitProtected")

local Use = v8("BoostService.RE.Use")
local PlayTower = v8("Towers.RF.PlayTower")
local CompleteTowerFloor = v8("Towers.RF.CompleteTowerFloor")
local CancelTower = v8("Towers.RF.CancelTower")
local EquipBestTowerTeam = v8("Towers.RE.EquipBestTowerTeam")
local InteractSlot = v8("PlotService.RE.InteractSlot")
local Use2 = v8("SpinService.RE.Use")
local Equip = v8("UnitService.RF.Equip")
local Fuse = v8("FusingService.RE.Fuse")
local Result = v8("FusingService.RE.Result")

t2.value10 = {
	RollDice = t1.value6,
	SetAutoRoll = SetAutoRoll,
	EquipBest = t1.value8,
	CollectBalance = t1.value10,
	LevelUpSlot = t1.value9,
	BuyDice = BuyDice,
	EquipDice = t1.value15,
	Rebirth = t1.value4,
	BuyUpgrade = BuyUpgrade,
	SellInventory = SellInventory,
	UpdateAutoSell = UpdateAutoSell,
	RedeemCode = RedeemCode,
	ClaimOffline = Claim,
	ClaimDaily = Claim2,
	ClaimGroup = Claim3,
	GradeRoll = Roll,
	GradeProtect = SetGradeProtected,
	TraitRoll = Roll2,
	TraitProtect = t1.value1,
	BoostUse = Use,
	PlayTower = PlayTower,
	CompleteFloor = CompleteTowerFloor,
	CancelTower = CancelTower,
	BestTowerTeam = EquipBestTowerTeam,
	InteractSlot = InteractSlot,
	UseSpin = Use2,
	EquipUnit = Equip,
	Fuse = Fuse,
	FuseResult = Result
}
t1.value6 = "require"
t1.value13 = "Features"
t1.value5 = "Features"

local require_ = require

t1.value12 = t2.value9.Features
t1.value8 = "Data"
t1.value6 = require_(t1.value12.Data.DataController)
t2.value11 = t1.value6
t1.value10 = "Features"
t1.value6 = "require"
t1.value6 = require(t2.value9.Features.Rolling.Dice)

local require_2 = require

t1.value8 = t2.value9.Features.Rebirth
t1.value9 = "Features"
t1.value13 = "Rebirths"
t2.value12 = require_2(t1.value8.Rebirths)
t2.value13 = require(t2.value9.Features.Plot.PlotConfig)
t2.value14 = require(t2.value9.Features.Monetization.MonetizationConfig)
t2.value15 = require(t2.value9.Features.Upgrades.Upgrades)
t2.value16 = nil
pcall(function()
	t2.value16 = require(t2.value9.Features.Upgrades.TreeStructure)
end)

local require_3 = require

t1.value16 = t2.value9.Features.Inventory
t1.value15 = "Kinds"

local Kinds = t1.value16.Kinds

t1.value16 = "Unit"
t1.value4 = "Features"
t2.value17 = require_3(Kinds.Unit.UnitConfig)

local require_4 = require
local Grades = t2.value9.Features.Grades

t1.value16 = "Grades"
t2.value18 = require_4(Grades.Grades)
t2.value19 = require(t2.value9.Features.Traits.Traits)
t2.value20 = require(t2.value9.Features.Towers.Towers)
t2.value21 = require(t2.value9.Features.Buffs.BuffController)
t2.value22 = require(t2.value9.Features.Fusing.FusingUtil)
t2.value23 = require(t2.value9.Features.Fusing.FusingConfig)
t2.value24 = nil

for _, descendant in ipairs(t2.value9:GetDescendants()) do
	local isModuleScript

	if descendant.Name == "UnitUtil" then
		isModuleScript = descendant:IsA("ModuleScript")
	else
		isModuleScript = false
	end

	if isModuleScript then
		pcall(function()
			t2.value24 = require(descendant)
		end)

		break
	end
end

t2.value25 = nil
t2.value25 = nil
pcall(function()
	t2.value25 = require(t2.value9.Features.Inventory.Kinds.Boost.BoostConfig)
end)

local value25 = t2.value25

if value25 then
	value25 = t2.value25.entries or t2.value25
end

t2.value26 = value25 or {}
t2.value27 = {}

local ok, result = pcall(require, t2.value9.Other.Rarities)

if ok then
	if result then
		ok = result.Refs
	else
		ok = result
	end
end

if ok then
	for _, ref in pairs(result.Refs) do
		local value = select(2, pcall(result.Get, ref))
		local sortOrder

		if type(value) == "table" then
			sortOrder = value.sortOrder
		else
			sortOrder = false
		end

		if sortOrder then
			t2.value27[ref] = value.sortOrder
		end
	end
end

t2.value28 = nil
pcall(function()
	t2.value28 = require(t2.value1.Packages.NumberFormatter)
end)

function t2.value29(p2)
	local value28 = t2.value28
	local pcall_, FormatCompact, v52, v53, v54

	if value28 then
	elseif value28 then
		pcall_ = pcall
		FormatCompact = t2.value28.FormatCompact
		v52 = tonumber(p2) or 0
		v53, v54 = pcall_(FormatCompact, (math.floor(v52)))

		if v53 then
			return v54
		else
			return tostring((math.floor(tonumber(p2) or 0)))
		end
	else
		return tostring((math.floor(tonumber(p2) or 0)))
	end

	value28 = t2.value28.FormatCompact

	if value28 then
		pcall_ = pcall
		FormatCompact = t2.value28.FormatCompact
		v52 = tonumber(p2) or 0
		v53, v54 = pcall_(FormatCompact, (math.floor(v52)))

		if v53 then
			return v54
		else
			return tostring((math.floor(tonumber(p2) or 0)))
		end
	else
		return tostring((math.floor(tonumber(p2) or 0)))
	end
end
function t2.value30()
	return t2.value11.___X
end

local function v55(p3)
	local v56

	if p3 then
		v56 = t2.value17.entries[p3.name]
	else
		v56 = p3
	end

	if v56 then
		local select_ = select
		local pcall_ = pcall
		local income = v56.income
		local attributes = p3.attributes or {}

		return tonumber(select_(2, pcall_(income, attributes))) or 0
	else
		return 0
	end
end
local function v61(p4)
	local v62

	if p4 then
		v62 = t2.value17.entries[p4.name]
	else
		v62 = p4
	end

	if v62 then
		local attributes = p4.attributes or {}

		return tonumber(select(2, pcall(v62.income, {
			mutation = attributes.mutation,
			grade = attributes.grade,
			trait = attributes.trait,
			level = 1
		}))) or 0
	else
		return 0
	end
end

t2.value31 = {}

local ok2, result2 = pcall(t1.value6.GetAll)

if ok2 then
	ok2 = type(result2) == "table"
end

if ok2 then
	for k, v in pairs(result2) do
		local value31 = t2.value31
		local v69 = #t2.value31 + 1
		local luck = v.luck

		t1.value1 = tonumber(luck) or 0

		local price = v.price
		local v72 = tonumber(price)

		value31[v69] = {
			key = k,
			luck = t1.value1,
			price = v72
		}
	end

	table.sort(t2.value31, function(p5, p6)
		return p5.luck < p6.luck
	end)
end

function t2.value32()
	local v73 = t2.value30()
	local n1 = 0
	local s1 = "-"

	for _, v in ipairs(t2.value31) do
		local v78 = v73.OwnedDice[v.key]

		if v78 then
			v78 = n1 < v.luck
		end

		if v78 then
			n1 = v.luck
			s1 = v.key
		end
	end

	return n1, s1
end

t2.value33 = {
	I = 1,
	V = 5,
	X = 10
}
t2.value34 = {}

local function v79(p7)
	local n2 = 0
	local n3 = 0

	for i = #p7, 1, -1 do
		local v83 = t2.value33[p7:sub(i, i)] or 0

		if v83 < n2 then
			n3 = n3 - v83
		else
			n3 = n3 + v83
		end

		n2 = v83
	end

	return n3
end
local function v84(p8)
	local v85 = t2.value30()
	local v86 = v85.Money - (p8 or 0)
	local v87 = v86
	local v88 = nil

	for _, v in ipairs(t2.value31) do
		local price = v.price

		if price then
			price = not v85.OwnedDice[v.key]

			if price then
				price = v.price <= v87
			end
		end

		if price and (not v88 or v.luck > v88.luck) then
			v88 = v
		end
	end

	return v88
end

for k, v in pairs(t2.value15) do
	t1.value1 = "^(.-)%s+([IVX]+)$"

	local match, v95 = k:match("^(.-)%s+([IVX]+)$")

	t1.value1 = match

	local value12 = t1.value1

	if t1.value1 then
		if v95 then
			value12 = v.price
		else
			value12 = v95
		end
	end

	if value12 then
		local value34 = t2.value34

		t1.value6 = t2.value34[t1.value1] or {}
		value34[t1.value1] = t1.value6

		local buffs = v.buffs

		t1.value6 = 0

		if buffs then
			buffs = v.buffs["Unit Storage"]
		end

		if buffs then
			local amount = v.buffs["Unit Storage"].amount

			t1.value6 = tonumber(amount) or 0
		end

		local insert = table.insert
		local v101 = t2.value34[t1.value1]
		local v102 = v79(v95)
		local price = v.price

		insert(v101, {
			name = k,
			tier = v102,
			price = tonumber(price) or math.huge,
			storage = t1.value6
		})
	end
end

for _, v in pairs(t2.value34) do
	local sort = table.sort

	function t1.value6(p9, p10)
		return p9.tier < p10.tier
	end

	sort(v, t1.value6)
end

function t2.value35(p11)
	local Upgrades = t2.value30().Upgrades
	local ipairs_ = ipairs

	for _, v in ipairs_(t2.value34[p11] or {}) do
		if not Upgrades[v.name] then
			local value16 = t2.value16

			if value16 then
				value16 = select(2, pcall(t2.value16.GetParent, v.name))
			end

			local v112 = type(value16) == "string"

			if v112 then
			elseif v112 then
				return nil
			else
				return v
			end

			if value16 == "Start" then
				v112 = false
			else
				v112 = not Upgrades[value16]
			end

			if v112 then
				return nil
			else
				return v
			end
		end
	end

	return nil
end
function t1.value10(p12)
	if p12 then
		p12 = t2.value19[p12]
	end

	if not p12 then
		return p12
	end

	local incomeMultiplier = p12.incomeMultiplier
	local v114 = tonumber(incomeMultiplier)

	p12 = t2.value4.traitMin <= (v114 or 0)

	return p12
end
function t1.value1()
	local v115 = nil
	local u116 = nil

	local function v117()
		u116 = t2.value12.Get(v115.Rebirth + 1)
	end

	v115 = t2.value30()
	u116 = nil
	pcall(v117)

	if not u116 then
		local function v118()
			u116 = t2.value12.GetNext(v115.Rebirth)
		end

		pcall(v118)
	end

	local v119 = u116

	if v119 then
		local cost = u116.cost

		v119 = tonumber(cost)
	end

	local v121 = u116

	if not v121 then
		return v119, v121
	end

	local moneyMultiplier = u116.moneyMultiplier

	v121 = tonumber(moneyMultiplier)

	return v119, v121
end

t1.value6 = "Jackpot Spin"
t2.value36 = { "Damage", "Health" }

local function v123(p13)
	local v124 = nil
	local v125 = t2.value30().Money - (p13 or 0)
	local value5 = t2.value5
	local v127, v128

	if not t2.value4.autoTower then
		for _, v in ipairs(value5) do
			v127 = t2.value35(v)

			if v127 then
				v128 = v127.price <= v125
			else
				v128 = v127
			end

			if v128 and (not v124 or v127.price < v124.price) then
				v124 = v127
			end
		end

		return v124
	end

	value5 = {}

	for _, v in ipairs(t2.value5) do
		value5[#value5 + 1] = v
	end

	for _, v in ipairs(t2.value36) do
		value5[#value5 + 1] = v
	end

	for _, v in ipairs(value5) do
		v127 = t2.value35(v)

		if v127 then
			v128 = v127.price <= v125
		else
			v128 = v127
		end

		if v128 and (not v124 or v127.price < v124.price) then
			v124 = v127
		end
	end

	return v124
end

function t2.value37()
	local value6 = t2.value6
	local Upgrades = t2.value30().Upgrades

	for _, v in ipairs(t2.value34["Unit Storage"] or {}) do
		if Upgrades[v.name] then
			value6 = value6 + v.storage
		end
	end

	return value6
end
function t2.value38()
	local Rebirth = t2.value30().Rebirth
	local u142 = nil
	local n4 = 0
	local v144 = nil

	local function v145()
		u142 = t2.value13.GetMaxSlots(v144) or 15
	end

	v144 = Rebirth
	u142 = 15
	pcall(v145)

	local v146 = v144

	for i = 1, u142 do
		local n5 = 0

		pcall(function()
			n5 = t2.value13.GetSlotRebirthRequirement(i) or 0
		end)

		if n5 <= v146 then
			n4 = n4 + 1
		end
	end

	return n4
end

t2.value39 = t1.value1
t1.value1 = { "Jackpot Spin", "Lucky Spin" }
t2.value40 = t1.value1

local function v149()
	local autoSpins = t2.value4.autoSpins
	local v151, ActiveEntries, v153, amount, note

	if not autoSpins then
		if autoSpins then
			v151 = t2.value30()

			for _, v in ipairs(t2.value40) do
				ActiveEntries = v151.ActiveEntries

				if ActiveEntries then
					ActiveEntries = v151.ActiveEntries[v]
				end

				if ActiveEntries then
					return
				end
			end

			for _, v in ipairs(t2.value40) do
				v153 = v151.Inventory[v]

				if v153 then
					amount = v153.amount
					v153 = (tonumber(amount) or 0) >= 1
				end

				if v153 then
					t2.value10.UseSpin:FireServer(v)
					note = "armed " .. v
					t2.value7.note = note
					task.wait(0.25)

					return
				end
			end
		end

		return
	end

	autoSpins = t2.value10.UseSpin

	if autoSpins then
		v151 = t2.value30()

		for _, v in ipairs(t2.value40) do
			ActiveEntries = v151.ActiveEntries

			if ActiveEntries then
				ActiveEntries = v151.ActiveEntries[v]
			end

			if ActiveEntries then
				return
			end
		end

		for _, v in ipairs(t2.value40) do
			v153 = v151.Inventory[v]

			if v153 then
				amount = v153.amount
				v153 = (tonumber(amount) or 0) >= 1
			end

			if v153 then
				t2.value10.UseSpin:FireServer(v)
				note = "armed " .. v
				t2.value7.note = note
				task.wait(0.25)

				return
			end
		end
	end
end
local function v164()
	if not t2.value10.RollDice then
		return
	end

	pcall(v149)

	if not pcall(function()
		return t2.value10.RollDice:InvokeServer()
	end) then
		return
	end

	t2.value7.rolled = t2.value7.rolled + 1
end

function t2.value41()
	local select_ = select
	local pcall_ = pcall
	local GetBuff = t2.value21.GetBuff
	local v168 = tonumber(select_(2, pcall_(GetBuff, "Roll Duration"))) or 2.5

	return math.max(0.3, v168 + 0.05)
end
function t2.value42()
	local EquipUnit = t2.value10.EquipUnit

	if EquipUnit then
		EquipUnit = t2.value10.InteractSlot
	end

	if not EquipUnit then
		return false
	end

	local v170 = t2.value30()
	local v171 = t2.value38()
	local t3 = {}

	for k, v in pairs(v170.Inventory) do
		local v175 = t2.value17.entries[v.name]

		if v175 then
			local amount = v.amount

			v175 = (tonumber(amount) or 1) >= 1
		end

		if v175 then
			t3[#t3 + 1] = {
				id = k,
				v = v61(v)
			}
		end
	end

	table.sort(t3, function(p14, p15)
		return p14.v > p15.v
	end)

	local v177 = #t3
	local t4 = {}
	local t5 = {}

	for i = 1, math.min(v171, v177) do
		t4[t3[i].id] = t3[i].v
	end

	local t6 = {}

	for i = 1, v171 do
		local v183 = v170.Slots[tostring(i)]
		local unitId

		if v183 then
			unitId = v183.unitId
		else
			unitId = v183
		end

		if unitId then
			t6[v183.unitId] = true
		end
	end

	local v185 = #t3

	for i = 1, math.min(v171, v185) do
		if not t6[t3[i].id] then
			t5[#t5 + 1] = t3[i]
		end
	end

	if #t5 == 0 then
		return false
	end

	local t7 = {}

	for i = 1, v171 do
		local unitId = v170.Slots[tostring(i)]
		local unitId2

		if unitId then
			unitId2 = unitId.unitId

			if unitId2 then
				unitId2 = v170.Inventory[unitId.unitId]
			end
		else
			unitId2 = unitId
		end

		local v191 = #t7 + 1

		if unitId2 then
			unitId2 = v61(unitId2)
		end

		local v192 = unitId2 or 0

		if unitId then
			unitId = unitId.unitId
		end

		t7[v191] = {
			i = i,
			v = v192,
			id = unitId
		}
	end

	table.sort(t7, function(p16, p17)
		return p16.v < p17.v
	end)

	local n6 = 0

	for i, v in ipairs(t5) do
		local v196 = t7[i]
		local v197

		if v196 then
			v197 = v196.id ~= nil and not t4[v196.id]

			if v197 then
				v197 = v.v > v196.v * 1.1
			end
		else
			v197 = v196
		end

		if v197 then
			local function v198()
				return t2.value10.EquipUnit:InvokeServer(v.id)
			end

			if pcall(v198) then
				task.wait(0.55)
				t2.value10.InteractSlot:FireServer(v196.i)
				task.wait(0.6)

				local Slots = v170.Slots
				local i2 = v196.i
				local v201 = Slots[tostring(i2)]

				if v201 then
					v201 = v201.unitId == v.id
				end

				if v201 then
					n6 = n6 + 1

					local name = v170.Inventory[v.id]
					local value7 = t2.value7
					local s2 = "placed "

					if name then
						name = name.name
					end

					value7.note = s2 .. tostring(name)
				end
			end
		end
	end

	local swaps = (t2.value7.swaps or 0) + n6

	t2.value7.swaps = swaps

	return n6 > 0
end

local function v206()
	local v207 = t2.value30()
	local Money = v207.Money

	if t2.value10.CollectBalance then
		for k in pairs(v207.Slots) do
			local function v210()
				local CollectBalance = t2.value10.CollectBalance
				local t8 = {}
				local v213 = k

				__set_list(t8, 1, {(tonumber(v213))})
				CollectBalance:FireServer(unpack_(t8))
			end

			pcall(v210)
		end
	end

	if t2.value4.smartPlace then
		pcall(t2.value42)
	elseif t2.value10.EquipBest then
		t2.value10.EquipBest:FireServer()
	end

	task.wait(0.25)

	local v214 = t2.value30().Money - Money

	if not (v214 > 0) then
		return
	end

	t2.value7.collected = t2.value7.collected + v214
end

function t2.value43(p18)
	local v215 = v84(p18)

	if v215 and t2.value32() < v215.luck then
		t2.value10.BuyDice:FireServer(v215.key)

		local diceBought = t2.value7.diceBought

		t2.value7.diceBought = diceBought + 1

		local note = "bought " .. v215.key .. " dice"

		t2.value7.note = note
		task.wait(0.2)
	end

	local _, v219 = t2.value32()
	local v220

	if v219 == "-" then
		v220 = false
	else
		v220 = t2.value30().Dice ~= v219
	end

	if not v220 then
		return
	end

	t2.value10.EquipDice:FireServer(v219)
end
function t2.value44(p19)
	if not t2.value10.BuyUpgrade then
		return
	end

	local Upgrades = t2.value30().Upgrades
	local Start = t2.value15.Start

	if Start then
		Start = not Upgrades.Start
	end

	if Start then
		t2.value10.BuyUpgrade:FireServer("Start")
		task.wait(0.15)
	end

	local v223 = v123(p19)

	if not v223 then
		return
	end

	t2.value10.BuyUpgrade:FireServer(v223.name)

	local upgradesBought = t2.value7.upgradesBought

	t2.value7.upgradesBought = upgradesBought + 1

	local note = "upgrade " .. v223.name

	t2.value7.note = note
	task.wait(0.15)
end
function t2.value45(p20)
	if not t2.value10.SellInventory then
		return
	end

	local v226 = t2.value30()
	local v227 = t2.value37()

	if not p20 then
		local Inventory = v226.Inventory
		local n7 = 0

		if type(Inventory) == "table" then
			for _ in pairs(Inventory) do
				n7 = n7 + 1
			end
		end

		if v227 - 3 <= n7 then
			p20 = true
		else
			p20 = false
		end
	end

	local t9 = {}

	for _, slot in pairs(v226.Slots) do
		if slot.unitId then
			t9[slot.unitId] = true
		end
	end

	for _, v in pairs(v226.TowerTeam or {}) do
		t9[v] = true
	end

	local pairs_ = pairs
	local t10 = {}

	for k, v in pairs_(v226.Inventory) do
		local v240 = t2.value17.entries[v.name]
		local v241

		if v240 then
			v241 = not t9[k]
		else
			v241 = v240
		end

		if v241 then
			pairs_ = #t10 + 1

			local v242 = v61(v)
			local v243 = t2.value27[v240.rarity] or 0
			local attributes = v.attributes

			if attributes then
				attributes = v.attributes.mutation ~= nil
			end

			t10[pairs_] = {
				id = k,
				inc = v242,
				order = v243,
				mutated = attributes
			}
		else
			pairs_ = v240
		end
	end

	table.sort(t10, function(p21, p22)
		return p21.inc < p22.inc
	end)

	local max = math.max
	local keepBest = t2.value4.keepBest
	local v247 = max(0, #t10 - keepBest)
	local t11 = {}

	for i, v in ipairs(t10) do
		local v251 = not v.mutated

		if v251 then
			v251 = v.order > 0

			if v251 then
				if v.order < t2.value4.sellRarity then
					v251 = i <= v247
				else
					v251 = false
				end
			end
		end

		local v252

		if p20 then
			v252 = i <= v247
		else
			v252 = p20
		end

		if v251 or v252 then
			t11[#t11 + 1] = v.id

			if #t11 >= 300 then
				break
			end
		end
	end

	if #t11 == 0 then
		return
	end

	local function v253()
		return t2.value10.SellInventory:InvokeServer(t11)
	end

	local ok3, result3, result4 = pcall(v253)

	if not ok3 then
		return
	end

	t2.value7.sold = t2.value7.sold + (tonumber(result4) or #t11)
	t2.value7.soldValue = t2.value7.soldValue + (tonumber(result3) or 0)

	local value7 = t2.value7
	local v258 = result4 or #t11

	value7.note = "sold " .. tostring(v258) .. " units"
end
function t2.value46(p23)
	local v259 = t2.value30().Inventory[p23]
	local v260

	if v259 then
		local amount = v259.amount

		v260 = tonumber(amount) or 0
	else
		v260 = 0
	end

	return v260
end
function t2.value47(p24)
	return v61(p24)
end

local function v262()
	local v263 = t2.value30()
	local t12 = {}

	for _, slot in pairs(v263.Slots) do
		local unitId = slot.unitId

		if unitId then
			unitId = v263.Inventory[slot.unitId]
		end

		if unitId then
			t12[#t12 + 1] = {
				id = slot.unitId,
				u = unitId,
				inc = t2.value47(unitId)
			}
		end
	end

	table.sort(t12, function(p25, p26)
		return p25.inc > p26.inc
	end)

	return t12
end

t2.value48 = nil

function t2.value49()
	local v268 = t2.value30()

	for k, v in pairs(t2.value18) do
		if type(v) == "table" then
			local incomeMultiplier = v.incomeMultiplier
			local v272 = tonumber(incomeMultiplier)
			local v273 = t2.value4.gradeMin <= (v272 or 0)
			local GradeProtect = t2.value10.GradeProtect

			if GradeProtect then
				GradeProtect = (v268.ProtectedGrades[k] and true or false) ~= v273
			end

			if GradeProtect then
				t2.value10.GradeProtect:FireServer(k, v273)
			end
		end
	end

	for k, v in pairs(t2.value19) do
		if type(v) == "table" then
			local incomeMultiplier = v.incomeMultiplier
			local v278 = tonumber(incomeMultiplier)
			local v279 = t2.value4.traitMin <= (v278 or 0)
			local TraitProtect = t2.value10.TraitProtect

			if TraitProtect then
				TraitProtect = (v268.ProtectedTraits[k] and true or false) ~= v279
			end

			if TraitProtect then
				t2.value10.TraitProtect:FireServer(k, v279)
			end
		end
	end
end
function t2.value50(p27)
	if p27 then
		p27 = t2.value18[p27]
	end

	if not p27 then
		return p27
	end

	local incomeMultiplier = p27.incomeMultiplier
	local v282 = tonumber(incomeMultiplier)

	p27 = t2.value4.gradeMin <= (v282 or 0)

	return p27
end

t2.value51 = nil
t2.value51 = t1.value10

function t2.value52()
	t2.value49()

	local ipairs_ = ipairs
	local n8 = 0

	for _, v in ipairs_((v262())) do
		if n8 >= 8 then
			return
		end

		local attributes = v.u.attributes or {}
		local autoGrade = t2.value4.autoGrade

		if autoGrade then
			autoGrade = t2.value10.GradeRoll

			if autoGrade then
				autoGrade = not t2.value50(attributes.grade)

				if autoGrade then
					autoGrade = t2.value46("Gems") >= 1
				end
			end
		end

		if autoGrade then
			t2.value10.GradeRoll:FireServer(v.id)

			local gradeRolls = t2.value7.gradeRolls

			t2.value7.gradeRolls = gradeRolls + 1
			ipairs_ = n8 + 1
			task.wait(0.25)
			n8 = ipairs_
		end

		local autoTrait = t2.value4.autoTrait

		if autoTrait then
			autoTrait = t2.value10.TraitRoll

			if autoTrait then
				autoTrait = not t2.value51(attributes.trait)

				if autoTrait then
					autoTrait = t2.value46("Trait Reroll") >= 1
				end
			end
		end

		if autoTrait then
			t2.value10.TraitRoll:FireServer(v.id)

			local traitRolls = t2.value7.traitRolls

			t2.value7.traitRolls = traitRolls + 1
			n8 = n8 + 1
			task.wait(0.25)
		end
	end
end

t2.value48 = {}

function t2.value53()
	if t2.value10.BoostUse then
		local v292 = t2.value30()
		local pairs_ = pairs

		for k, v in pairs_(v292.Inventory) do
			local v296

			if type(k) == "string" then
				v296 = t2.value26[k]
			else
				v296 = false
			end

			local v297

			if v296 then
				v297 = type(v296) == "table"

				if v297 then
					v297 = v296.buffs

					if v297 then
						local amount = v.amount

						v297 = (tonumber(amount) or 0) >= 1
					end
				end
			else
				v297 = v296
			end

			if v297 then
				pairs_ = v296.buffs

				if pairs_.Luck or pairs_["Money Multiplier"] then
					local category = v296.category or k

					if (t2.value48[category] or 0) < os.clock() then
						t2.value10.BoostUse:FireServer(k)

						local value48 = t2.value48
						local now = os.clock()
						local duration = v296.duration

						value48[category] = now + (tonumber(duration) or 120) + 1

						local boostsUsed = t2.value7.boostsUsed

						t2.value7.boostsUsed = boostsUsed + 1

						local note = "boost " .. k

						t2.value7.note = note
						task.wait(0.3)
					end
				end
			end
		end
	end
end

t2.value54 = {
	initial = 0.76,
	transition = 0.38,
	hit = 0.62,
	done = 0.24,
	fall = 0.32
}
t2.value55 = nil
t2.value55 = {
	Luck = 1,
	["Money Multiplier"] = 0.5,
	["Damage Multiplier"] = 0.15
}

function t2.value56(p28)
	if p28 == "Gems" then
		return 40
	elseif p28 == "Trait Reroll" then
		return 25
	else
		local v305 = t2.value26[p28]
		local v306

		if type(v305) == "table" then
			local buffs = v305.buffs

			v306 = type(buffs) ~= "table"
		else
			v306 = true
		end

		if v306 then
			return 0
		else
			local n9 = 0

			for k, buff in pairs(v305.buffs) do
				local v311 = t2.value55[k]
				local max = math.max
				local amount = buff.amount
				local v314 = (v311 or 0) * max(0, (tonumber(amount) or 1) - 1)
				local duration = v305.duration

				n9 = n9 + v314 * (tonumber(duration) or 0)
			end

			return n9
		end
	end
end
function t2.value57()
	local value30 = t2.value30
	local v317 = value30()
	local v318 = tonumber(select(2, pcall(t2.value21.GetBuff, "Damage Multiplier"))) or 1
	local v319 = tonumber(select(2, pcall(t2.value21.GetBuff, "Health Multiplier"))) or 1
	local t13 = {}

	for i = 1, 4 do
		local TowerTeam = v317.TowerTeam

		if TowerTeam then
			TowerTeam = v317.TowerTeam[i]
		end

		if TowerTeam then
			TowerTeam = v317.Inventory[TowerTeam]
		end

		local v323

		if TowerTeam then
			v323 = t2.value17.entries[TowerTeam.name]
		else
			v323 = TowerTeam
		end

		if v323 then
			local attributes = TowerTeam.attributes or {}
			local v325 = #t13 + 1
			local select_ = select
			local pcall_ = pcall
			local damage = v323.damage
			local v329 = (tonumber(select_(2, pcall_(damage, attributes))) or 0) * v318
			local select_2 = select
			local pcall_2 = pcall
			local health = v323.health

			t13[v325] = {
				dmg = v329,
				hp = (tonumber(select_2(2, pcall_2(health, attributes))) or 0) * v319
			}
		end
	end

	return t13
end
function t2.value58(p29, p30)
	if #p30 == 0 then
		return 0, 0, 0
	end

	local ipairs_ = ipairs
	local t14 = {}

	for k, v in ipairs_(p30) do
		ipairs_ = {
			dmg = v.dmg,
			hp = v.hp
		}
		t14[k] = ipairs_
	end

	local maxFloors = p29.maxFloors or 300
	local n10 = 1
	local n11 = 0
	local n12 = 0
	local n13 = 1

	while true do
		if not (n10 <= maxFloors) then
			return n10 - 1, n11, n12
		end

		local select_ = select
		local pcall_ = pcall
		local enemyHealth = p29.enemyHealth
		local huge = tonumber(select_(2, pcall_(enemyHealth, n10))) or math.huge
		local select_2 = select
		local pcall_2 = pcall
		local enemyDamage = p29.enemyDamage
		local huge2 = tonumber(select_2(2, pcall_2(enemyDamage, n10))) or math.huge
		local initial

		if n10 == 1 then
			initial = t2.value54.initial
		else
			initial = false
		end

		n11 = n11 + (initial or t2.value54.transition)

		local v351 = false

		for _ = 1, 2000 do
			local v353 = t14[n13]

			if not v353 then
				break
			end

			huge = huge - v353.dmg
			n11 = n11 + t2.value54.hit

			if huge <= 0 then
				v351 = true

				break
			end

			v353.hp = v353.hp - huge2
			n11 = n11 + t2.value54.hit

			if v353.hp <= 0 then
				n13 = n13 + 1
				n11 = n11 + t2.value54.fall + t2.value54.transition
			end
		end

		if not v351 then
			return n10 - 1, n11, n12
		end

		n11 = n11 + t2.value54.done

		for _, v in ipairs(p29.drops or {}) do
			if (v.minFloor or 1) <= n10 then
				for _, v2 in ipairs(v.entries or {}) do
					local chance = v2.chance
					local v359 = (tonumber(chance) or 0) / 100
					local amount = v2.amount

					n12 = n12 + v359 * (tonumber(amount) or 1) * t2.value56(v2.name)
				end
			end
		end

		n10 = n10 + 1
	end
end

local function v361()
	if t2.value4.tower ~= "Auto (best)" then
		return t2.value4.tower
	end

	local v362 = t2.value57()
	local value = select(2, pcall(t2.value20.GetAll))
	local v364 = nil
	local towerPredict = 0
	local towerRate = -1

	if type(value) ~= "table" then
		t2.value7.towerPick = v364 or "Dragon Tower"
		t2.value7.towerPredict = towerPredict
		t2.value7.towerRate = towerRate

		return t2.value7.towerPick
	end

	for k, v in pairs(value) do
		local v369, v370, v371 = t2.value58(v, v362)
		local v372 = v370 > 0 and v371 / (v370 + 4) or 0
		local v373

		if v369 > 0 then
			v373 = towerRate < v372
		else
			v373 = false
		end

		if v373 then
			towerPredict = v369
			v364 = k
			towerRate = v372
		end
	end

	t2.value7.towerPick = v364 or "Dragon Tower"
	t2.value7.towerPredict = towerPredict
	t2.value7.towerRate = towerRate

	return t2.value7.towerPick
end

function t2.value59()
	local towerBoosts = t2.value4.towerBoosts
	local v375, pairs_, v377, v378, buffs, amount, category, value48, now, duration, boostsUsed

	if not towerBoosts then
		if towerBoosts then
			v375 = t2.value30()
			pairs_ = pairs

			for k, v in pairs_(v375.Inventory) do
				if type(k) == "string" then
					v377 = t2.value26[k]
				else
					v377 = false
				end

				v378 = type(v377) == "table"

				if v378 then
					buffs = v377.buffs
					v378 = type(buffs) == "table"

					if v378 then
						v378 = v377.buffs["Damage Multiplier"]

						if v378 then
							amount = v.amount
							v378 = (tonumber(amount) or 0) >= 1
						end
					end
				end

				if v378 then
					category = v377.category or k

					if (t2.value48[category] or 0) < os.clock() then
						t2.value10.BoostUse:FireServer(k)
						value48 = t2.value48
						now = os.clock()
						duration = v377.duration
						value48[category] = now + (tonumber(duration) or 120) + 1
						boostsUsed = t2.value7.boostsUsed + 1
						t2.value7.boostsUsed = boostsUsed
						task.wait(0.3)
					end
				end
			end
		end

		return
	end

	towerBoosts = t2.value10.BoostUse

	if towerBoosts then
		v375 = t2.value30()
		pairs_ = pairs

		for k, v in pairs_(v375.Inventory) do
			if type(k) == "string" then
				v377 = t2.value26[k]
			else
				v377 = false
			end

			v378 = type(v377) == "table"

			if v378 then
				buffs = v377.buffs
				v378 = type(buffs) == "table"

				if v378 then
					v378 = v377.buffs["Damage Multiplier"]

					if v378 then
						amount = v.amount
						v378 = (tonumber(amount) or 0) >= 1
					end
				end
			end

			if v378 then
				category = v377.category or k

				if (t2.value48[category] or 0) < os.clock() then
					t2.value10.BoostUse:FireServer(k)
					value48 = t2.value48
					now = os.clock()
					duration = v377.duration
					value48[category] = now + (tonumber(duration) or 120) + 1
					boostsUsed = t2.value7.boostsUsed + 1
					t2.value7.boostsUsed = boostsUsed
					task.wait(0.3)
				end
			end
		end
	end
end

t2.value60 = nil

function t1.value8()
	local PlayTower2 = t2.value10.PlayTower

	if PlayTower2 then
		PlayTower2 = t2.value10.CompleteFloor
	end

	if not PlayTower2 then
		return
	end

	if t2.value10.BestTowerTeam then
		t2.value10.BestTowerTeam:FireServer()
		task.wait(0.6)
	end

	t2.value59()
	task.wait(0.4)

	local v391 = nil

	local function v392()
		return t2.value10.PlayTower:InvokeServer(v391)
	end

	v391 = v361()

	local ok3, result3 = pcall(v392)

	if not (ok3 and result3) then
		t2.value60()
		task.wait(3.2)

		local ok4, result4 = pcall(function()
			return t2.value10.PlayTower:InvokeServer(v391)
		end)

		if not (ok4 and result4) then
			t2.value7.note = "tower refused"

			return
		end
	end

	local towerRuns = t2.value7.towerRuns

	t2.value7.towerRuns = towerRuns + 1
	t2.value7.towerFloor = 0

	local n14 = 0
	local v399 = false
	local n15 = 0

	while true do
		local v401 = _G.__ANIMEDICE == t2.value3

		if v401 then
			v401 = t2.value4.auto

			if v401 then
				v401 = t2.value4.autoTower
			end
		end

		if not v401 then
			break
		end

		n14 = pcall

		local v402, v403 = n14(function()
			return t2.value10.CompleteFloor:InvokeServer()
		end)
		local v404 = not v402

		if not v404 then
			v404 = v403 == nil

			if not v404 then
				if type(v403) == "table" then
					v404 = #v403 == 0
				else
					v404 = false
				end
			end
		end

		if v404 then
			n14 = n15 + 1

			if n14 > 50 then
				if v399 then
					v419 = t2.value7
					v420 = t2.value7.towerFloor
					v419.note = "tower ended at floor " .. tostring(v420)

					return
				end

				t2.value60()
				v419 = t2.value7
				v420 = t2.value7.towerFloor
				v419.note = "tower ended at floor " .. tostring(v420)

				return
			end

			task.wait(0.3)
			n15 = n14
		else
			local v405 = false
			local v406 = false

			n15 = 0

			for _, v in ipairs(v403) do
				if v.action == "floorCompleted" then
					v405 = true

					local value7 = t2.value7
					local floor = v.floor

					value7.towerFloor = tonumber(floor) or t2.value7.towerFloor + 1

					local rewards = v.rewards

					if type(rewards) == "table" then
						t2.value7.towerDrops = t2.value7.towerDrops + #v.rewards
					end
				elseif v.action == "ended" then
					v406 = true

					if type(v.rewards) == "table" then
						t2.value7.towerDrops = t2.value7.towerDrops + #v.rewards
					end
				end
			end

			if v405 then
				t2.value7.towerFloors = t2.value7.towerFloors + 1
			end

			if t2.value7.towerFloor > t2.value7.towerBest then
				t2.value7.towerBest = t2.value7.towerFloor
			end

			if v406 then
				v399 = true

				break
			end

			if not v405 then
				if v399 then
					v419 = t2.value7
					v420 = t2.value7.towerFloor
					v419.note = "tower ended at floor " .. tostring(v420)

					return
				end

				t2.value60()
				v419 = t2.value7
				v420 = t2.value7.towerFloor
				v419.note = "tower ended at floor " .. tostring(v420)

				return
			end

			task.wait(0.2)
		end
	end

	if v399 then
		v419 = t2.value7
		v420 = t2.value7.towerFloor
		v419.note = "tower ended at floor " .. tostring(v420)

		return
	end

	t2.value60()

	local value7 = t2.value7
	local towerFloor = t2.value7.towerFloor

	value7.note = "tower ended at floor " .. tostring(towerFloor)
end
function t2.value60()
	if not t2.value10.CancelTower then
		return
	end

	local function v414()
		return t2.value10.CancelTower:InvokeServer()
	end

	local ok3, result3 = pcall(v414)

	if not (ok3 and result3) then
		return
	end

	for _ = 1, 60 do
		local function v418()
			return t2.value10.CompleteFloor:InvokeServer()
		end

		local ok4, result4 = pcall(v418)

		if ok4 then
			ok4 = type(result4) == "table"
		end

		if ok4 then
			for _, v in ipairs(result4) do
				if v.action == "ended" then
					return
				end
			end
		end

		task.wait(0.3)
	end
end

t2.value61 = t1.value8
t2.value62 = nil

if t2.value10.FuseResult then
	local connection = nil

	t1.value8 = t2.value10.FuseResult.OnClientEvent

	local function v424(p31, p32, p33)
		if _G.__ANIMEDICE ~= t2.value3 then
			connection:Disconnect()
		else
			t2.value62 = {
				unit = p31,
				err = p32,
				newId = p33
			}
		end
	end

	connection = t1.value8:Connect(v424)
end

t1.value8 = {}

function t1.value16(p34)
	local value24 = t2.value24
	local v426, select_, pcall_, GetBuff, v430, v431

	if value24 then
	elseif value24 then
		v426 = tonumber(select(2, unpack_({ pcall(t2.value24.GetLevelPrice, p34.name, p34.attributes or {}) })))
		select_ = select
		pcall_ = pcall
		GetBuff = t2.value21.GetBuff
		v430 = tonumber(select_(2, pcall_(GetBuff, "Money Multiplier"))) or 1
		v431 = 0.25 * v61(p34) * v430

		return (not v426 or v431 <= 0) and math.huge or v426 / v431
	else
		return math.huge
	end

	value24 = t2.value24.GetLevelPrice

	if value24 then
		v426 = tonumber(select(2, unpack_({ pcall(t2.value24.GetLevelPrice, p34.name, p34.attributes or {}) })))
		select_ = select
		pcall_ = pcall
		GetBuff = t2.value21.GetBuff
		v430 = tonumber(select_(2, pcall_(GetBuff, "Money Multiplier"))) or 1
		v431 = 0.25 * v61(p34) * v430

		return (not v426 or v431 <= 0) and math.huge or v426 / v431
	else
		return math.huge
	end
end

t2.value63 = t1.value8

function t1.value1()
	local v432 = t2.value30()
	local n16 = 0

	for k in pairs(t2.value14.Codes) do
		if not v432.RedeemedCodes[k] then
			t2.value10.RedeemCode:FireServer(k)
			n16 = n16 + 1
			task.wait(0.35)
		end
	end

	if not (n16 > 0) then
		return
	end

	local codesDone = t2.value7.codesDone + n16

	t2.value7.codesDone = codesDone
end
function t2.value64()
	if not t2.value10.Fuse then
		return false
	end

	local v436 = t2.value30()
	local t15 = {}

	for _, slot in pairs(v436.Slots) do
		if slot.unitId then
			t15[slot.unitId] = true
		end
	end

	for _, v in pairs(v436.TowerTeam or {}) do
		t15[v] = true
	end

	local t16 = {}

	for k, v in pairs(v436.Inventory) do
		if t2.value17.entries[v.name] then
			t16[#t16 + 1] = {
				id = k,
				v = v61(v)
			}
		end
	end

	table.sort(t16, function(p35, p36)
		return p35.v > p36.v
	end)

	for i = 1, math.min(#t16, t2.value38() + 2) do
		t15[t16[i].id] = true
	end

	local t17 = {}

	for k, v in pairs(v436.Inventory) do
		local v449 = not t15[k]

		if v449 then
			v449 = t2.value17.entries[v.name]
		end

		if v449 then
			local value = select(2, pcall(t2.value22.GetChance, v))

			if type(value) == "number" then
				t17[#t17 + 1] = {
					id = k,
					ch = value
				}
			end
		end
	end

	table.sort(t17, function(p37, p38)
		return p37.ch > p38.ch
	end)

	local Money = v436.Money
	local fuseShare = t2.value4.fuseShare
	local v453 = Money * math.clamp(fuseShare, 0, 1)
	local incomePerSec = t2.value7.incomePerSec
	local v455 = math.max(incomePerSec, 0) * t2.value4.fuseSeconds
	local v456 = math.min(v453, v455)

	for i = 1, #t17 - 2 do
		local v458 = t17[i]
		local v459 = t17[i + 1]
		local v460 = t17[i + 2]
		local v461 = v458.ch + v459.ch + v460.ch
		local v462 = v458.id .. v459.id .. v460.id
		local v463 = not t2.value63[v462]

		if v463 then
			v463 = v461 * t2.value23.AverageMultiplier >= v458.ch
		end

		if v463 and t2.value23.GetCost(v461) <= v456 then
			t2.value62 = nil
			t2.value10.Fuse:FireServer(v458.id, v459.id, v460.id)

			for _ = 1, 25 do
				if t2.value62 then
					break
				end

				task.wait(0.2)
			end

			local value62 = t2.value62
			local unit

			if value62 then
				unit = value62.unit
			else
				unit = value62
			end

			if unit then
				local fused = t2.value7.fused

				t2.value7.fused = fused + 1

				local newId = value62.newId

				if newId then
					newId = v436.Inventory[value62.newId]

					if newId then
						newId = select(2, pcall(t2.value22.GetChance, v436.Inventory[value62.newId]))
					end
				end

				local v469

				if type(newId) == "number" then
					v469 = t2.value7.fuseBestChance < newId
				else
					v469 = false
				end

				if v469 then
					t2.value7.fuseBestChance = newId
				end

				local value7 = t2.value7
				local name = value62.unit.name
				local v472 = tostring(name)
				local attributes = value62.unit.attributes

				if not attributes then
					value7.fuseLast = v472 .. (attributes or "")
					t2.value7.note = "fused -> " .. t2.value7.fuseLast

					return true
				end

				attributes = value62.unit.attributes.mutation

				if not attributes then
					value7.fuseLast = v472 .. (attributes or "")
					t2.value7.note = "fused -> " .. t2.value7.fuseLast

					return true
				end

				attributes = " " .. value62.unit.attributes.mutation
				value7.fuseLast = v472 .. (attributes or "")
				t2.value7.note = "fused -> " .. t2.value7.fuseLast

				return true
			else
				local tostring_ = tostring
				local err

				if value62 then
					err = value62.err
				else
					err = value62
				end

				local fuse = tostring_(err or "no answer")
				local note = "fuse: " .. fuse

				t2.value7.note = note

				if value62 then
					value62 = value62.err

					if value62 then
						value62 = not fuse:find("wait")

						if value62 then
							value62 = not fuse:find("money")

							if value62 then
								value62 = not fuse.find(fuse, "trade")

								if value62 then
									value62 = not fuse:find("ready")
								end
							end
						end
					end
				end

				if not value62 then
					return false
				end

				t2.value63[v462] = true

				return false
			end
		end
	end

	return false
end
function t2.value65()
	local v478 = t2.value39()

	if v478 then
		local Money = t2.value30().Money
		local rebirthMult = t2.value4.rebirthMult

		if v478 * math.max(1, rebirthMult) <= Money then
			t2.value10.Rebirth:FireServer()

			local rebirths = t2.value7.rebirths

			t2.value7.rebirths = rebirths + 1

			local value7 = t2.value7
			local Rebirth = t2.value30().Rebirth

			value7.note = "rebirth -> " .. tostring(Rebirth)
			task.wait(0.5)

			return true
		else
			return false
		end
	else
		return false
	end
end

t2.value66 = t1.value16

local function v484()
	local v485 = t2.value30()
	local v486 = nil
	local v487 = nil

	for k, slot in pairs(v485.Slots) do
		local unitId = slot.unitId

		if unitId then
			unitId = v485.Inventory[slot.unitId]
		end

		if unitId then
			local v491 = t2.value66(v485.Inventory[slot.unitId])

			if not v486 or v491 < v486 then
				v487 = k
				v486 = v491
			end
		end
	end

	if not v487 or t2.value4.levelPayback * 60 < v486 then
		return false
	else
		local Money = v485.Money

		t2.value10.LevelUpSlot:FireServer(unpack_({ tonumber(v487) }))
		task.wait(0.12)

		if v485.Money < Money then
			t2.value7.leveled = t2.value7.leveled + 1

			return true
		else
			return false
		end
	end
end

t2.value67 = nil

function t1.value16()
	local v493 = t2.value67()
	local Money = t2.value30().Money
	local v495 = v493 and Money < v493

	if not v495 then
		return v495
	end

	v495 = v493 <= Money + t2.value7.incomePerSec * t2.value4.saveMinutes * 60

	return v495
end
function t2.value67()
	local v496 = t2.value30()
	local n17 = 0

	for _, v in ipairs(t2.value31) do
		local v500 = v496.OwnedDice[v.key]

		if v500 then
			v500 = n17 < v.luck
		end

		if v500 then
			n17 = v.luck
		end
	end

	local price = nil

	for _, v in ipairs(t2.value31) do
		local price2 = v.price

		if price2 then
			price2 = not v496.OwnedDice[v.key]

			if price2 then
				price2 = n17 < v.luck
			end
		end

		if price2 and (not price or v.price < price) then
			price = v.price
		end
	end

	if not t2.value4.autoRebirth then
		return price
	end

	local v505 = t2.value39()

	if not v505 then
		return price
	end

	local rebirthMult = t2.value4.rebirthMult
	local v507 = v505 * math.max(1, rebirthMult)

	if not (not price or v507 < price) then
		return price
	end

	price = v507

	return price
end

t2.value68 = t1.value16

local function v508()
	if t2.value68() then
		t2.value7.phase = "saving for luck"
	else
		local Money = t2.value30().Money
		local levelShare = t2.value4.levelShare
		local v511 = Money * (1 - math.clamp(levelShare, 0, 1))

		for _ = 1, 15 do
			if t2.value30().Money <= v511 then
				return
			end

			if not v484() then
				return
			end
		end
	end
end

t2.value69 = t1.value1

function t2.value70()
	for _, v in ipairs({ t2.value10.ClaimOffline, t2.value10.ClaimDaily, t2.value10.ClaimGroup }) do
		if v then
			pcall(function()
				v:FireServer()
			end)
		end
	end

	t2.value7.claims = t2.value7.claims + 1
end
function t2.value71()
	if not t2.value10.UpdateAutoSell then
		return
	end

	local UpdateAutoSell2 = t2.value10.UpdateAutoSell
	local autoSell = t2.value4.autoSell

	if not autoSell then
		UpdateAutoSell2:FireServer(autoSell or 0)

		return
	end

	autoSell = t2.value4.sellRarity
	UpdateAutoSell2:FireServer(autoSell or 0)
end

_G.__ANIMEDICE_DBG = {
	CONFIG = t2.value4,
	STATE = t2.value7,
	data = t2.value30,
	doRoll = v164,
	doCollectPlace = v206,
	doDice = t2.value43,
	doUpgrade = t2.value44,
	sellJunk = t2.value45,
	levelSlots = v508,
	doRerolls = t2.value52,
	useBoosts = t2.value53,
	towerRun = t2.value61,
	drainTower = t2.value60,
	doFuse = t2.value64,
	savingForLuck = t2.value68,
	placeBest = t2.value42,
	pickTower = v361,
	simulateTower = t2.value58,
	towerTeam = t2.value57,
	baseIncome = v61,
	curIncome = v55,
	levelPayback = t2.value66,
	nextLuckGoal = t2.value67,
	placedUnits = v262,
	doRebirth = t2.value65,
	doLevel = v484,
	doCodes = t2.value69,
	doClaims = t2.value70,
	DICE = t2.value31,
	UPGRADE_LINES = t2.value34,
	invCap = t2.value37,
	bestUpgrade = v123
}
t2.value72 = game:GetService("UserInputService")

local game_ = game

t2.value73 = nil
t2.value74 = nil
t2.value75 = game_:GetService("TweenService")

local game_2 = game

t2.value76 = nil
t2.value77 = game_2:GetService("CoreGui")
t2.value73 = (function()
	if gethui then
		local ok3, result3 = pcall(gethui)

		if ok3 and result3 then
			return result3
		end
	end

	local ok3, parent = pcall(function()
		return t2.value77
	end)

	if ok3 then
		ok3 = parent
	end

	if ok3 and pcall(function()
		local Folder = Instance.new("Folder")

		Folder.Parent = parent
		Folder:Destroy()
	end) then
		return parent
	else
		return t2.value2:WaitForChild("PlayerGui")
	end
end)()
t2.value74 = "AjizAnimeDiceHub"
t2.value76 = "AjizAnimeDiceFloatToggle"
pcall(function()
	if t2.value73:FindFirstChild(t2.value74) then
		local value74 = t2.value74

		t2.value73[value74]:Destroy()
	end

	if t2.value73:FindFirstChild(t2.value76) then
		local value76 = t2.value76

		t2.value73[value76]:Destroy()
	end

	if not _G.__ANIMEDICE_GUI then
		return
	end

	pcall(function()
		_G.__ANIMEDICE_GUI:Destroy()
	end)
end)

local color3 = Color3.fromRGB(16, 18, 24)
local color32 = Color3.fromRGB(24, 28, 38)

t1.value6 = Color3.fromRGB(30, 36, 48)

local color33 = Color3.fromRGB(45, 55, 75)

t1.value5 = Color3.fromRGB(0, 180, 255)
t1.value1 = Color3.fromRGB(0, 120, 190)

local color34 = Color3.fromRGB(255, 255, 255)

t1.value9 = Color3.fromRGB(150, 165, 185)

local color35 = Color3.fromRGB(0, 230, 120)

t1.value16 = Color3.fromRGB(255, 170, 0)
t1.value7 = Color3.fromRGB(255, 65, 65)
t1.value2 = Enum.Font.GothamBold

local GothamMedium = Enum.Font.GothamMedium

t1.value12 = Enum.Font.Gotham
t2.value78 = {
	BgDark = color3,
	BgCard = color32,
	BgInput = t1.value6,
	Border = color33,
	Accent = t1.value5,
	AccentDark = t1.value1,
	TextWhite = color34,
	TextMuted = t1.value9,
	Success = color35,
	Warning = t1.value16,
	Danger = t1.value7,
	FontBold = t1.value2,
	FontMedium = GothamMedium,
	FontRegular = t1.value12
}
t2.value79 = {
	UiScale = 1,
	IsMinimized = false
}

local ScreenGui = Instance.new("ScreenGui")

ScreenGui.Name = t2.value74
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.DisplayOrder = 999999
ScreenGui.Parent = t2.value73
_G.__ANIMEDICE_GUI = ScreenGui

local function v533(p39, p40)
	local v534 = p40 or p39
	local u535 = nil
	local u536 = nil
	local Position = nil
	local Position2 = nil

	v534.InputBegan:Connect(function(input)
		if not (input.UserInputType == Enum.UserInputType.MouseButton1 and true or input.UserInputType == Enum.UserInputType.Touch) then
			return
		end

		u535 = true
		Position = input.Position
		Position2 = p39.Position
		input.Changed:Connect(function()
			if input.UserInputState ~= Enum.UserInputState.End then
				return
			end

			u535 = false
		end)
	end)

	local function v539(input)
		if not (input.UserInputType == Enum.UserInputType.MouseMovement and true or input.UserInputType == Enum.UserInputType.Touch) then
			return
		end

		u536 = input
	end

	v534.InputChanged:Connect(v539)
	t2.value72.InputChanged:Connect(function(input)
		local v540

		if input == u536 then
			v540 = u535
		else
			v540 = false
		end

		if not v540 then
			return
		end

		local v541 = input.Position - Position

		p39.Position = UDim2.new(Position2.X.Scale, Position2.X.Offset + v541.X, Position2.Y.Scale, Position2.Y.Offset + v541.Y)
	end)
end

local ScreenGui2 = Instance.new("ScreenGui")

ScreenGui2.Name = t2.value76
ScreenGui2.ResetOnSpawn = false
ScreenGui2.DisplayOrder = 999998
ScreenGui2.Parent = t2.value73
t1.value7 = Instance.new("TextButton", ScreenGui2)
t1.value7.Name = "FloatToggle"
t1.value7.Size = UDim2.new(0, 95, 0, 34)
t1.value7.Position = UDim2.new(0, 15, 0.5, -17)
t1.value7.BackgroundColor3 = t2.value78.BgCard
t1.value7.BorderSizePixel = 0
t1.value7.Font = t2.value78.FontBold
t1.value7.Text = "ANIME DICE"
t1.value7.TextColor3 = t2.value78.Accent
t1.value7.TextSize = 11.5
t1.value7.Active = true
t1.value6 = Instance.new("UICorner", t1.value7)
t1.value6.CornerRadius = UDim.new(0, 8)
t1.value6 = Instance.new("UIStroke", t1.value7)
t1.value6.Color = t2.value78.Accent
t1.value6.Thickness = 1.2
v533(t1.value7)
t2.value80 = 330
t2.value81 = 480
t2.value82 = Instance.new("Frame", ScreenGui)
t2.value82.Name = "MainFrame"
t2.value82.Size = UDim2.new(0, t2.value80, 0, t2.value81)
t2.value82.Position = UDim2.new(0.5, -165, 0.5, -240)
t2.value82.BackgroundColor3 = t2.value78.BgDark
t2.value82.BorderSizePixel = 0
t2.value82.Active = true
t2.value82.ClipsDescendants = true
t1.value5 = Instance.new("UICorner", t2.value82)
t1.value5.CornerRadius = UDim.new(0, 10)
t1.value5 = Instance.new("UIStroke", t2.value82)
t1.value5.Color = t2.value78.Border
t1.value5.Thickness = 1.5
t2.value83 = Instance.new("UIScale", t2.value82)
t2.value83.Scale = t2.value79.UiScale

function t1.value1(p41)
	local uiScale = math.clamp(p41, 0.55, 1.4)

	t2.value79.UiScale = uiScale
	t2.value83.Scale = uiScale
end

t2.value84 = t1.value1
t1.value5 = Instance.new("Frame", t2.value82)
t1.value5.Name = "Header"
t1.value5.Size = UDim2.new(1, 0, 0, 42)
t1.value5.BackgroundColor3 = t2.value78.BgCard
t1.value5.BorderSizePixel = 0
Instance.new("UICorner", t1.value5).CornerRadius = UDim.new(0, 10)

local TextLabel = Instance.new("TextLabel", t1.value5)

TextLabel.Name = "Title"
TextLabel.Size = UDim2.new(1, -125, 1, 0)
TextLabel.Position = UDim2.new(0, 12, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.Font = t2.value78.FontBold
TextLabel.Text = "ANIME DICE PRO"
TextLabel.TextColor3 = t2.value78.Accent
TextLabel.TextSize = 13.5
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

local TextButton = Instance.new("TextButton", t1.value5)

TextButton.Name = "ScaleMinus"
TextButton.Size = UDim2.new(0, 22, 0, 22)
TextButton.Position = UDim2.new(1, -104, 0.5, -11)
TextButton.BackgroundColor3 = t2.value78.BgInput
TextButton.Font = t2.value78.FontBold
TextButton.Text = "-"
TextButton.TextColor3 = t2.value78.TextWhite
TextButton.TextSize = 13
TextButton.AutoButtonColor = false
t1.value9 = Instance.new("UICorner", TextButton)
t1.value9.CornerRadius = UDim.new(0, 4)
t1.value9 = Instance.new("TextButton", t1.value5)
t1.value9.Name = "ScalePlus"
t1.value9.Size = UDim2.new(0, 22, 0, 22)
t1.value9.Position = UDim2.new(1, -78, 0.5, -11)
t1.value9.BackgroundColor3 = t2.value78.BgInput
t1.value9.Font = t2.value78.FontBold
t1.value9.Text = "+"
t1.value9.TextColor3 = t2.value78.TextWhite
t1.value9.TextSize = 13
t1.value9.AutoButtonColor = false
Instance.new("UICorner", t1.value9).CornerRadius = UDim.new(0, 4)
t2.value85 = Instance.new("TextButton", t1.value5)
t2.value85.Name = "MinBtn"
t2.value85.Size = UDim2.new(0, 22, 0, 22)
t2.value85.Position = UDim2.new(1, -52, 0.5, -11)
t2.value85.BackgroundColor3 = t2.value78.BgInput
t2.value85.Font = t2.value78.FontBold
t2.value85.Text = "_"
t2.value85.TextColor3 = t2.value78.TextMuted
t2.value85.TextSize = 11
t2.value85.AutoButtonColor = false
Instance.new("UICorner", t2.value85).CornerRadius = UDim.new(0, 4)

local TextButton2 = Instance.new("TextButton", t1.value5)

TextButton2.Name = "CloseBtn"
TextButton2.Size = UDim2.new(0, 22, 0, 22)
TextButton2.Position = UDim2.new(1, -26, 0.5, -11)
TextButton2.BackgroundColor3 = Color3.fromRGB(38, 20, 26)
TextButton2.Font = t2.value78.FontBold
TextButton2.Text = "X"
TextButton2.TextColor3 = t2.value78.Danger
TextButton2.TextSize = 11
TextButton2.AutoButtonColor = false

local UICorner = Instance.new("UICorner", TextButton2)
local uDim = UDim.new(0, 4)

function t1.value16()
	t2.value84(t2.value79.UiScale - 0.1)
end

UICorner.CornerRadius = uDim
v533(t2.value82, t1.value5)
TextButton.MouseButton1Click:Connect(t1.value16)

local MouseButton1Click = t1.value9.MouseButton1Click

function t1.value16()
	t2.value84(t2.value79.UiScale + 0.1)
end

MouseButton1Click:Connect(t1.value16)

function t1.value16()
	t2.value82.Visible = false
end

TextButton2.MouseButton1Click:Connect(t1.value16)

function t1.value16()
	local Visible = t2.value82.Visible

	t2.value82.Visible = not Visible
end

t1.value7.MouseButton1Click:Connect(t1.value16)

local InputBegan = t2.value72.InputBegan

function t1.value16(p42, p43)
	local v552 = not p43

	if v552 then
		v552 = p42.KeyCode == Enum.KeyCode.RightShift
	end

	if not v552 then
		return
	end

	local visible = not t2.value82.Visible

	t2.value82.Visible = visible
end

InputBegan:Connect(t1.value16)
t2.value86 = Instance.new("Frame", t2.value82)
t2.value86.Name = "StatusCard"
t2.value86.Size = UDim2.new(1, -16, 0, 32)
t2.value86.Position = UDim2.new(0, 8, 0, 48)
t2.value86.BackgroundColor3 = t2.value78.BgCard
t2.value86.BorderSizePixel = 0
t1.value16 = Instance.new("UICorner", t2.value86)
t1.value16.CornerRadius = UDim.new(0, 6)
t1.value16 = Instance.new("UIStroke", t2.value86)
t1.value16.Color = t2.value78.Border
t1.value16.Thickness = 1
t2.value87 = Instance.new("TextLabel", t2.value86)
t2.value87.Name = "StatusLabel"
t2.value87.Size = UDim2.new(1, -16, 1, 0)
t2.value87.Position = UDim2.new(0, 8, 0, 0)
t2.value87.BackgroundTransparency = 1
t2.value87.Font = t2.value78.FontMedium
t2.value87.Text = "Status: Initializing..."
t2.value87.TextColor3 = t2.value78.Success
t2.value87.TextSize = 11
t2.value87.TextXAlignment = Enum.TextXAlignment.Left
t2.value87.TextTruncate = Enum.TextTruncate.AtEnd
t1.value7 = Instance.new("ScrollingFrame", t2.value82)
t2.value88 = t1.value7
t2.value88.Name = "ContentScroll"
t2.value88.Size = UDim2.new(1, -16, 1, -112)
t2.value88.Position = UDim2.new(0, 8, 0, 86)
t2.value88.BackgroundTransparency = 1
t2.value88.BorderSizePixel = 0
t2.value88.ScrollBarThickness = 2.5
t2.value88.ScrollBarImageColor3 = t2.value78.Accent
t2.value88.CanvasSize = UDim2.new(0, 0, 0, 1600)
t1.value2 = Instance.new("UIListLayout", t2.value88)
t2.value89 = t1.value2
t2.value89.Padding = UDim.new(0, 6)
t2.value89.SortOrder = Enum.SortOrder.LayoutOrder
t2.value89:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
	t2.value88.CanvasSize = UDim2.new(0, 0, 0, t2.value89.AbsoluteContentSize.Y + 24)
end)
t1.value2 = t2.value85.MouseButton1Click
t1.value2:Connect(function()
	t2.value79.IsMinimized = not t2.value79.IsMinimized

	if t2.value79.IsMinimized then
		t2.value85.Text = "+"
		t2.value86.Visible = false
		t2.value88.Visible = false
		t2.value82.Size = UDim2.new(0, t2.value80, 0, 42)
	else
		t2.value85.Text = "_"
		t2.value86.Visible = true
		t2.value88.Visible = true
		t2.value82.Size = UDim2.new(0, t2.value80, 0, t2.value81)
	end
end)

local Frame = Instance.new("Frame", t2.value82)

Frame.Name = "FooterBar"
Frame.Size = UDim2.new(1, 0, 0, 24)
Frame.Position = UDim2.new(0, 0, 1, -24)
Frame.BackgroundColor3 = t2.value78.BgCard
Frame.BorderSizePixel = 0
Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 8)

local TextLabel2 = Instance.new("TextLabel", Frame)

TextLabel2.Size = UDim2.new(0, 140, 1, 0)
TextLabel2.Position = UDim2.new(0, 10, 0, 0)
TextLabel2.BackgroundTransparency = 1
TextLabel2.Font = t2.value78.FontBold
TextLabel2.Text = "ANIME DICE"
TextLabel2.TextColor3 = t2.value78.Accent
TextLabel2.TextSize = 10
TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
t1.value3 = Instance.new("TextButton", Frame)
t1.value3.Name = "ResizeGrip"
t1.value3.Size = UDim2.new(0, 64, 0, 18)
t1.value3.Position = UDim2.new(1, -68, 0.5, -9)
t1.value3.BackgroundColor3 = t2.value78.BgInput
t1.value3.Text = "RESIZE ///"
t1.value3.Font = t2.value78.FontBold
t1.value3.TextColor3 = t2.value78.TextMuted
t1.value3.TextSize = 9
t1.value3.AutoButtonColor = false
t1.value3.BorderSizePixel = 0
t1.value12 = Instance.new("UICorner", t1.value3)
t1.value12.CornerRadius = UDim.new(0, 4)
t2.value90 = false
t1.value2 = Vector2.zero
t2.value91 = t1.value2
t1.value2 = Vector2.zero
t2.value92 = nil
t2.value92 = t1.value2
t1.value3.InputBegan:Connect(function(input)
	if not (input.UserInputType == Enum.UserInputType.MouseButton1 and true or input.UserInputType == Enum.UserInputType.Touch) then
		return
	end

	t2.value90 = true
	t2.value91 = Vector2.new(input.Position.X, input.Position.Y)
	t2.value92 = Vector2.new(t2.value82.AbsoluteSize.X, t2.value82.AbsoluteSize.Y)

	local connection = nil
	local connection2 = t2.value72.InputChanged:Connect(function(input2)
		local value90 = t2.value90

		if value90 then
			value90 = input2.UserInputType == Enum.UserInputType.MouseMovement and true or input2.UserInputType == Enum.UserInputType.Touch
		end

		if not value90 then
			return
		end

		local v559 = Vector2.new(input2.Position.X, input2.Position.Y) - t2.value91
		local v560 = t2.value92.X + v559.X
		local value80 = math.clamp(v560, 260, 600)
		local v562 = t2.value92.Y + v559.Y
		local value81 = math.clamp(v562, 280, 850)

		t2.value80 = value80
		t2.value81 = value81
		t2.value82.Size = UDim2.new(0, value80, 0, value81)
	end)

	connection = t2.value72.InputEnded:Connect(function(input2)
		if not (input2.UserInputType == Enum.UserInputType.MouseButton1 and true or input2.UserInputType == Enum.UserInputType.Touch) then
			return
		end

		t2.value90 = false

		if connection2 then
			connection2:Disconnect()
		end

		if not connection then
			return
		end

		connection:Disconnect()
	end)
end)
t2.value93 = nil
t2.value93 = 0

function t2.value94()
	t2.value93 = t2.value93 + 1

	return t2.value93
end

local function v564(p44)
	local Frame2 = Instance.new("Frame", t2.value88)

	Frame2.Name = "Sec_" .. p44
	Frame2.Size = UDim2.new(1, 0, 0, 22)
	Frame2.BackgroundTransparency = 1
	Frame2.LayoutOrder = t2.value94()

	local TextLabel3 = Instance.new("TextLabel", Frame2)

	TextLabel3.Size = UDim2.new(1, 0, 1, 0)
	TextLabel3.Position = UDim2.new(0, 2, 0, 0)
	TextLabel3.BackgroundTransparency = 1
	TextLabel3.Font = t2.value78.FontBold
	TextLabel3.Text = string.upper(p44)
	TextLabel3.TextColor3 = t2.value78.Accent
	TextLabel3.TextSize = 10.5
	TextLabel3.TextXAlignment = Enum.TextXAlignment.Left

	local Frame3 = Instance.new("Frame", Frame2)

	Frame3.Size = UDim2.new(1, -4, 0, 1)
	Frame3.Position = UDim2.new(0, 2, 1, -1)
	Frame3.BackgroundColor3 = t2.value78.Border
	Frame3.BorderSizePixel = 0
end
local function v568(p45, p46, p47, p48)
	local TextButton3 = Instance.new("TextButton", t2.value88)

	TextButton3.Name = "Btn_" .. p45
	TextButton3.Size = UDim2.new(1, 0, 0, 40)
	TextButton3.BackgroundColor3 = t2.value78.BgCard
	TextButton3.BorderSizePixel = 0
	TextButton3.AutoButtonColor = false
	TextButton3.LayoutOrder = t2.value94()
	Instance.new("UICorner", TextButton3).CornerRadius = UDim.new(0, 7)

	local UIStroke = Instance.new("UIStroke", TextButton3)

	UIStroke.Color = t2.value78.Border
	UIStroke.Thickness = 1

	local TextLabel3 = Instance.new("TextLabel", TextButton3)

	TextLabel3.Size = UDim2.new(1, -20, 0, 18)
	TextLabel3.Position = UDim2.new(0, 10, 0, p46 and 4 or 11)
	TextLabel3.BackgroundTransparency = 1
	TextLabel3.Font = t2.value78.FontBold
	TextLabel3.Text = p45
	TextLabel3.TextColor3 = p48 or t2.value78.Accent
	TextLabel3.TextSize = 11.5
	TextLabel3.TextXAlignment = Enum.TextXAlignment.Left

	if p46 then
		local TextLabel4 = Instance.new("TextLabel", TextButton3)

		TextLabel4.Size = UDim2.new(1, -20, 0, 14)
		TextLabel4.Position = UDim2.new(0, 10, 0, 21)
		TextLabel4.BackgroundTransparency = 1
		TextLabel4.Font = t2.value78.FontRegular
		TextLabel4.Text = p46
		TextLabel4.TextColor3 = t2.value78.TextMuted
		TextLabel4.TextSize = 9
		TextLabel4.TextXAlignment = Enum.TextXAlignment.Left
	end

	TextButton3.MouseButton1Click:Connect(function()
		local function v573()
			local value75 = t2.value75
			local v575 = TextButton3
			local tweenInfo = TweenInfo.new(0.15)
			local t18 = {
				BackgroundColor3 = t2.value78.BgCard
			}

			value75.Create(value75, v575, tweenInfo, t18):Play()
		end

		t2.value75:Create(TextButton3, TweenInfo.new(0.08), {
			BackgroundColor3 = t2.value78.BgInput
		}):Play()
		task.delay(0.1, v573)

		if not p47 then
			return
		end

		p47()
	end)
end
local function v578(p49, p50, p51, p52)
	local Frame2 = Instance.new("Frame", t2.value88)

	Frame2.Name = "Card_" .. p49
	Frame2.Size = UDim2.new(1, 0, 0, 48)
	Frame2.BackgroundColor3 = t2.value78.BgCard
	Frame2.BorderSizePixel = 0
	Frame2.LayoutOrder = t2.value94()
	Instance.new("UICorner", Frame2).CornerRadius = UDim.new(0, 7)

	local UIStroke = Instance.new("UIStroke", Frame2)

	UIStroke.Color = t2.value78.Border
	UIStroke.Thickness = 1

	local TextLabel3 = Instance.new("TextLabel", Frame2)

	TextLabel3.Size = UDim2.new(1, -62, 0, 20)
	TextLabel3.Position = UDim2.new(0, 10, 0, 5)
	TextLabel3.BackgroundTransparency = 1
	TextLabel3.Font = t2.value78.FontBold
	TextLabel3.Text = p49
	TextLabel3.TextColor3 = t2.value78.TextWhite
	TextLabel3.TextSize = 12
	TextLabel3.TextXAlignment = Enum.TextXAlignment.Left

	local TextLabel4 = Instance.new("TextLabel", Frame2)

	TextLabel4.Size = UDim2.new(1, -62, 0, 16)
	TextLabel4.Position = UDim2.new(0, 10, 0, 25)
	TextLabel4.BackgroundTransparency = 1
	TextLabel4.Font = t2.value78.FontRegular
	TextLabel4.Text = p50 or ""
	TextLabel4.TextColor3 = t2.value78.TextMuted
	TextLabel4.TextSize = 9.5
	TextLabel4.TextXAlignment = Enum.TextXAlignment.Left

	local Frame3 = Instance.new("Frame", Frame2)

	Frame3.Size = UDim2.new(0, 42, 0, 22)
	Frame3.Position = UDim2.new(1, -50, 0.5, -11)

	local Accent

	if p51 then
		Accent = t2.value78.Accent
	else
		Accent = p51
	end

	Frame3.BackgroundColor3 = Accent or t2.value78.BgInput
	Frame3.BorderSizePixel = 0
	Instance.new("UICorner", Frame3).CornerRadius = UDim.new(1, 0)

	local UIStroke2 = Instance.new("UIStroke", Frame3)

	UIStroke2.Color = t2.value78.Border
	UIStroke2.Thickness = 1

	local Frame4 = Instance.new("Frame", Frame3)

	Frame4.Size = UDim2.new(0, 16, 0, 16)

	local uDim2

	if p51 then
		uDim2 = UDim2.new(1, -19, 0.5, -8)
	else
		uDim2 = p51
	end

	Frame4.Position = uDim2 or UDim2.new(0, 3, 0.5, -8)
	Frame4.BackgroundColor3 = t2.value78.TextWhite
	Frame4.BorderSizePixel = 0
	Instance.new("UICorner", Frame4).CornerRadius = UDim.new(1, 0)

	local TextButton3 = Instance.new("TextButton", Frame2)

	TextButton3.Size = UDim2.new(1, 0, 1, 0)

	local v589 = nil

	TextButton3.BackgroundTransparency = 1
	TextButton3.Text = ""

	local u590 = nil

	local function v591()
		u590 = not u590
		v589()

		if not p52 then
			return
		end

		p52(u590)
	end
	local function v592()
		t2.value75:Create(Frame3, TweenInfo.new(0.2), {
			BackgroundColor3 = u590 and t2.value78.Accent or t2.value78.BgInput
		}):Play()
		t2.value75:Create(Frame4, TweenInfo.new(0.2), {
			Position = u590 and UDim2.new(1, -19, 0.5, -8) or UDim2.new(0, 3, 0.5, -8)
		}):Play()
	end

	u590 = p51
	v589 = v592
	TextButton3.MouseButton1Click:Connect(v591)

	return {
		Set = function(p53)
			u590 = p53
			v589()
		end
	}
end

v564("1. Master Control")
v578("Master Auto Play", "Turn ON/OFF all active automation loops", t2.value4.auto, function(p54)
	t2.value4.auto = p54
end)
v564("2. Auto Rolling & Spins")
v578("Auto Roll Dice", "Rolls immediately on server cooldown (~2.1s)", t2.value4.autoRoll, function(p55)
	t2.value4.autoRoll = p55
end)
v578("Use Lucky Spins", "Consumes Lucky/Jackpot spin (x100 / x1000 luck)", t2.value4.autoSpins, function(p56)
	t2.value4.autoSpins = p56
end)
v568("Roll Once Now", "Manually trigger a single roll invocation", function()
	v164()
end)
v564("3. Plot Income & Slots")
v578("Auto Collect & Place", "EquipBest: banks slot money + places highest units", t2.value4.autoCollect, function(p57)
	t2.value4.autoCollect = p57
end)
v578("Smart Potential Placement", "Ranks units by level-1 potential so new units aren\'t blocked", t2.value4.smartPlace, function(p58)
	t2.value4.smartPlace = p58
end)
v578("Auto Level Slots", "Levels up placed units within designated payback budget", t2.value4.autoLevel, function(p59)
	t2.value4.autoLevel = p59
end)
v568("Collect & Place Now", "Manually bank slots and re-equip best units", function()
	v206()
end)
v568("Level Slots Now", "Run immediate slot leveling pass", function()
	task.spawn(v508)
end)
v564("4. Dice Shop")
v578("Auto Buy Best Dice", "Buys best affordable dice & equips highest luck", t2.value4.autoDice, function(p60)
	t2.value4.autoDice = p60
end)
v568("Buy Best Dice Now", "Trigger dice shop purchase now", function()
	t2.value43()
end)
v564("5. Rebirth Engine")
v578("Auto Rebirth", "Rebirths when cost is met (+permanent x mult & slot)", t2.value4.autoRebirth, function(p61)
	t2.value4.autoRebirth = p61
end)
v568("Rebirth Now", "Execute instant rebirth pass", function()
	t2.value65()
end, t2.value78.Warning)
v564("6. Pad Upgrades & Backpack")
v578("Auto Pad Upgrades", "Buys Money, Luck, Roll Speed and Storage pads", t2.value4.autoUpgrade, function(p62)
	t2.value4.autoUpgrade = p62
end)
v568("Buy Upgrade Now", "Purchase cheapest unlocked pad upgrade tier", function()
	task.spawn(t2.value44)
end)
v578("Auto Sell Junk Units", "Prevents backpack full block by selling unplaced junk units", t2.value4.autoSell, function(p63)
	t2.value4.autoSell = p63
	t2.value71()
end)
v568("Sell Junk Now", "Clear spare junk units from inventory immediately", function()
	task.spawn(function()
		t2.value45(true)
	end)
end, t2.value78.Danger)
v564("7. Towers & Fusion")
v578("Auto Tower Farm", "Skips combat animation to farm tower floors & drops", t2.value4.autoTower, function(p64)
	t2.value4.autoTower = p64
end)
v578("Damage Boosts on Tower", "Fires Damage boosts before entering tower", t2.value4.towerBoosts, function(p65)
	t2.value4.towerBoosts = p65
end)
v568("Run Tower Now", "Immediately trigger a tower dungeon pass", function()
	task.spawn(t2.value61)
end)
v578("Auto 3-Unit Fuse", "Fuses spare units 3 at a time into ~2x rarer units", t2.value4.autoFuse, function(p66)
	t2.value4.autoFuse = p66
end)
v568("Fuse Once Now", "Trigger single 3-unit fusion pass", function()
	task.spawn(t2.value64)
end)
v564("8. Rerolls & Boosts")
v578("Auto Grade Reroll", "Spends Gems on placed units until high grade is reached", t2.value4.autoGrade, function(p67)
	t2.value4.autoGrade = p67
end)
v578("Auto Trait Reroll", "Spends Trait Rerolls on placed units for high multiplier", t2.value4.autoTrait, function(p68)
	t2.value4.autoTrait = p68
end)
v578("Auto Use Boosts", "Continuously maintains active Luck & Income boosts", t2.value4.autoBoost, function(p69)
	t2.value4.autoBoost = p69
end)
v568("Redeem All Codes", "Redeems all active Twitter/Release codes", function()
	task.spawn(t2.value69)
end)
v568("Claim All Rewards", "Claims offline, daily, and group rewards", function()
	t2.value70()
end)
t2.value71()
task.spawn(function()
	while _G.__ANIMEDICE == t2.value3 do
		local auto = t2.value4.auto

		if auto then
			auto = t2.value4.autoRoll
		end

		if auto then
			pcall(v164)
		end

		task.wait(t2.value41())
	end
end)
task.spawn(function()
	while _G.__ANIMEDICE == t2.value3 do
		local auto = t2.value4.auto

		if auto then
			auto = t2.value4.autoCollect
		end

		if auto then
			pcall(v206)
		end

		task.wait(5)
	end
end)
task.spawn(function()
	while _G.__ANIMEDICE == t2.value3 do
		local auto = t2.value4.auto

		if auto then
			auto = t2.value4.autoSell
		end

		if auto then
			pcall(t2.value45)
		end

		task.wait(4)
	end
end)
task.spawn(function()
	local n18 = 6244514

	while _G.__ANIMEDICE == t2.value3 do
		local auto = t2.value4.auto

		if auto then
			auto = t2.value4.autoGrade or t2.value4.autoTrait
		end

		if auto then
			pcall(t2.value52)
		end

		n18 = task.wait
		n18(3)
	end
end)
task.spawn(function()
	while _G.__ANIMEDICE == t2.value3 do
		local auto = t2.value4.auto

		if auto then
			auto = t2.value4.autoFuse

			if auto then
				auto = not t2.value68()
			end
		end

		if auto then
			pcall(t2.value64)
		end

		task.wait(4)
	end
end)
task.spawn(function()
	while _G.__ANIMEDICE == t2.value3 do
		local auto = t2.value4.auto

		if auto then
			auto = t2.value4.autoBoost
		end

		if auto then
			pcall(t2.value53)
		end

		task.wait(10)
	end
end)
task.spawn(function()
	while _G.__ANIMEDICE == t2.value3 do
		local auto = t2.value4.auto

		if auto then
			auto = t2.value4.autoTower
		end

		if auto then
			pcall(t2.value61)
			task.wait(3)
		else
			task.wait(2)
		end
	end
end)
t1.value1 = task.spawn
t1.value1(function()
	while _G.__ANIMEDICE == t2.value3 do
		if t2.value4.auto then
			local value7 = t2.value7

			value7.phase = "spending"

			local autoRebirth = t2.value4.autoRebirth

			if autoRebirth then
				autoRebirth = t2.value39()
			end

			local v603 = autoRebirth or nil

			if v603 then
				v603 = v603 * math.max(1, t2.value4.rebirthMult)
			end

			local v604 = v603 or nil
			local v605

			if v604 then
				v605 = v604 <= t2.value30().Money
			else
				v605 = v604
			end

			if v605 then
				if t2.value4.autoDice then
					pcall(t2.value43, v604)
				end

				if t2.value4.autoUpgrade then
					pcall(t2.value44, v604)
				end

				pcall(t2.value65)
			else
				local n19 = 0
				local n20 = 0

				if v604 then
					local price = nil

					for _, v in ipairs(t2.value31) do
						local price2 = v.price

						if price2 then
							price2 = not t2.value30().OwnedDice[v.key]

							if price2 then
								price2 = v.luck > t2.value32()
							end
						end

						if price2 and (not price or v.price < price) then
							price = v.price
						end
					end

					if price then
						price = v604 <= price
					end

					if not price then
						v604 = n19
					end
				else
					v604 = n19
				end

				local v612 = t2.value68() and (t2.value67() or 0) or n20

				if t2.value4.autoDice then
					pcall(t2.value43, v604)
				end

				if t2.value4.autoUpgrade then
					pcall(t2.value44, v612)
				end
			end

			if t2.value4.autoLevel then
				pcall(v508)
			end
		else
			t2.value7.phase = "idle"
		end

		task.wait(3)
	end
end)
task.spawn(function()
	while _G.__ANIMEDICE == t2.value3 do
		local auto = t2.value4.auto

		if auto then
			auto = t2.value4.autoCodes
		end

		if auto then
			pcall(t2.value69)
		end

		local auto2 = t2.value4.auto

		if auto2 then
			auto2 = t2.value4.autoClaim
		end

		if auto2 then
			pcall(t2.value70)
		end

		task.wait(60)
	end
end)
t1.value1 = task.spawn
t1.value1(function()
	local now = os.clock()
	local v616 = nil

	while _G.__ANIMEDICE == t2.value3 do
		local v617 = t2.value30()
		local n21, now2

		if v617 then
			local value7 = t2.value7

			value7.money = v617.Money or 0

			local Rolls = v617.Rolls

			t2.value7.rolls = Rolls or 0

			local Rebirth = v617.Rebirth

			t2.value7.rebirth = Rebirth or 0

			local Dice = v617.Dice

			t2.value7.dice = Dice or "-"

			local value72 = t2.value7
			local Slots = v617.Slots
			local slotsUsed = 0

			if type(Slots) == "table" then
				for _ in pairs(Slots) do
					slotsUsed = slotsUsed + 1
				end
			end

			value72.slotsUsed = slotsUsed
			t2.value7.slotsMax = t2.value38()

			local _, v629 = t2.value32()
			local nextDice = v84()
			local value73 = t2.value7

			if nextDice then
				nextDice = nextDice.key
			end

			value73.nextDice = nextDice or "best: " .. tostring(v629)

			local value74 = t2.value7
			local Inventory = v617.Inventory
			local invCount = 0

			if type(Inventory) == "table" then
				for _ in pairs(Inventory) do
					invCount = invCount + 1
				end
			end

			value74.invCount = invCount
			t2.value7.invCap = t2.value37()

			local nextUpgrade = v123()
			local value75 = t2.value7

			if nextUpgrade then
				nextUpgrade = nextUpgrade.name .. " " .. t2.value29(nextUpgrade.price)
			end

			value75.nextUpgrade = nextUpgrade or "-"

			local v638 = tonumber(select(2, pcall(t2.value21.GetBuff, "Luck"))) or 1
			local n22 = 1

			for _, v in ipairs(t2.value31) do
				if v.key == v617.Dice then
					n22 = v.luck
				end
			end

			local luck = v638 * n22

			t2.value7.luck = luck
			n21 = 0

			if v617.Slots then
				for _, slot in pairs(v617.Slots) do
					n21 = n21 + (slot.balance or 0)
				end
			end

			now2 = os.clock()

			local v645

			if v616 then
				v645 = now < now2
			else
				v645 = v616
			end

			if v645 then
				local v646 = n21 - v616

				if v646 > 0 then
					t2.value7.incomePerSec = v646 / (now2 - now)
				end
			end
		else
			now2 = now
			n21 = v616
		end

		task.wait(2)
		now = now2
		v616 = n21
	end
end)
task.spawn(function()
	while _G.__ANIMEDICE == t2.value3 do
		local function v647()
			local v648 = t2.value4.auto and "RUNNING" or "PAUSED"

			t2.value87.Text = string.format("[%s] $%s | %s/s | Rb: %d | Slots: %d/%d", v648, t2.value29(t2.value7.money), t2.value29(t2.value7.incomePerSec), t2.value7.rebirth, t2.value7.slotsUsed, t2.value7.slotsMax)
			t2.value87.TextColor3 = t2.value4.auto and t2.value78.Success or t2.value78.Warning
		end

		pcall(v647)
		task.wait(1)
	end
end)
print("[AJIZ HUB - ANIME DICE] Loaded successfully with AJIZ Clean 3-Color Engine.")
