-- Name: ReplicaController
-- Path: game:GetService("ReplicatedStorage").ReplicaController
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.8591460999996343 seconds

-- Debug Info
-- # of Constants: 5
-- # of Protos: 0

-- Constants
-- [1] (number) = 50000 (number)
-- [2] (number) = print (string)
-- [4] (number) = Hello, world! (string)
-- [5] (number) = warn (string)

-- Proto Info

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-04-10 16:50:13
-- Luau version 6, Types version 3
-- Time taken: 0.068271 seconds

local tbl_12_upvr = {
	RequestDataRepeat = 10;
	SetterError = "[ReplicaController]: Replica setters can only be called inside write functions";
}
local RunService_upvr = game:GetService("RunService")
local function WaitForDescendant_upvr(arg1, arg2, arg3) -- Line 127, Named "WaitForDescendant"
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	local SOME_upvw = arg1:FindFirstChild(arg2, true)
	if SOME_upvw == nil then
		local os_clock_result1 = os.clock()
		while SOME_upvw == nil do
			if os_clock_result1 ~= nil and 1 < os.clock() - os_clock_result1 and (RunService_upvr:IsServer() == true or game:IsLoaded() == true) then
				warn('['..script.Name.."]: Missing "..arg3.." \""..arg2.."\" in "..arg1:GetFullName().."; Please check setup documentation")
			end
			task.wait()
		end
		arg1.DescendantAdded:Connect(function(arg1_2) -- Line 132
			--[[ Upvalues[2]:
				[1]: arg2 (readonly)
				[2]: SOME_upvw (read and write)
			]]
			if arg1_2.Name == arg2 then
				SOME_upvw = arg1_2
			end
		end):Disconnect()
		return SOME_upvw
	end
	return SOME_upvw
end
local var6_upvw
if RunService_upvr:IsServer() == true then
	var6_upvw = Instance.new("Folder")
	var6_upvw.Name = "ReplicaRemoteEvents"
	var6_upvw.Parent = game:GetService("ReplicatedStorage")
else
	var6_upvw = WaitForDescendant_upvr(game:GetService("ReplicatedStorage"), "ReplicaRemoteEvents", "folder")
end
local var9_upvw = {
	GetShared = function(arg1, arg2) -- Line 163, Named "GetShared"
		--[[ Upvalues[1]:
			[1]: WaitForDescendant_upvr (readonly)
		]]
		return WaitForDescendant_upvr(game:GetService("ReplicatedStorage"), arg2, "module")
	end;
	GetModule = function(arg1, arg2) -- Line 167, Named "GetModule"
		--[[ Upvalues[1]:
			[1]: WaitForDescendant_upvr (readonly)
		]]
		return WaitForDescendant_upvr(game:GetService("ServerScriptService"), arg2, "module")
	end;
	SetupRemoteEvent = function(arg1) -- Line 170, Named "SetupRemoteEvent"
		--[[ Upvalues[3]:
			[1]: RunService_upvr (readonly)
			[2]: var6_upvw (read and write)
			[3]: WaitForDescendant_upvr (readonly)
		]]
		if RunService_upvr:IsServer() == true then
			local RemoteEvent = Instance.new("RemoteEvent")
			RemoteEvent.Name = arg1
			RemoteEvent.Parent = var6_upvw
			return RemoteEvent
		end
		return WaitForDescendant_upvr(var6_upvw, arg1, "remote event")
	end;
	Shared = {};
}
local module_3 = require(var9_upvw.GetShared("Madwork", "MadworkScriptSignal"))
var9_upvw.NewScriptSignal = module_3.NewScriptSignal
var9_upvw.NewArrayScriptConnection = module_3.NewArrayScriptConnection
RunService_upvr = {}
local var11_upvr = RunService_upvr
WaitForDescendant_upvr = var9_upvw.NewScriptSignal()
var11_upvr.NewReplicaSignal = WaitForDescendant_upvr
WaitForDescendant_upvr = var9_upvw.NewScriptSignal()
var11_upvr.InitialDataReceivedSignal = WaitForDescendant_upvr
WaitForDescendant_upvr = false
var11_upvr.InitialDataReceived = WaitForDescendant_upvr
WaitForDescendant_upvr = {}
var11_upvr._replicas = WaitForDescendant_upvr
WaitForDescendant_upvr = {}
var11_upvr._class_listeners = WaitForDescendant_upvr
WaitForDescendant_upvr = {}
var11_upvr._child_listeners = WaitForDescendant_upvr
WaitForDescendant_upvr = require(var9_upvw.GetShared("Madwork", "MadworkMaid"))
local _replicas_upvr = var11_upvr._replicas
local _class_listeners_upvr = var11_upvr._class_listeners
local _child_listeners_upvr = var11_upvr._child_listeners
local any_SetupRemoteEvent_result1_upvr_2 = var9_upvw.SetupRemoteEvent("Replica_ReplicaRequestData")
local any_SetupRemoteEvent_result1_upvr = var9_upvw.SetupRemoteEvent("Replica_ReplicaSignal")
local var17_upvw = false
local function GetWriteLibFunctionsRecursive_upvr(arg1, arg2, arg3) -- Line 300, Named "GetWriteLibFunctionsRecursive"
	--[[ Upvalues[1]:
		[1]: GetWriteLibFunctionsRecursive_upvr (readonly)
	]]
	for i, v in pairs(arg2) do
		if type(v) == "table" then
			GetWriteLibFunctionsRecursive_upvr(arg1, v, arg3..i..'.')
		elseif type(v) == "function" then
			table.insert(arg1, {arg3..i, v})
		else
			error("[ReplicaController]: Invalid write function value \""..tostring(v).."\" ("..typeof(v).."); name_stack = \""..arg3..'"')
		end
	end
end
local tbl_3_upvr = {}
local function LoadWriteLib_upvr(arg1) -- Line 312, Named "LoadWriteLib"
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: GetWriteLibFunctionsRecursive_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var33 = tbl_3_upvr[arg1]
	if var33 ~= nil then
		return var33
	end
	local tbl_7 = {}
	GetWriteLibFunctionsRecursive_upvr(tbl_7, require(arg1), "")
	table.sort(tbl_7, function(arg1_3, arg2) -- Line 323
		local var36
		if arg1_3[1] >= arg2[1] then
			var36 = false
		else
			var36 = true
		end
		return var36
	end)
	local tbl_5 = {}
	for i_2, v_2 in ipairs(tbl_7) do
		({})[i_2] = v_2[2]
		tbl_5[v_2[1]] = i_2
		local var42
	end
	local module = {var42, tbl_5}
	tbl_3_upvr[arg1] = module
	return module
end
local function StringPathToArray_upvr(arg1) -- Line 342, Named "StringPathToArray"
	local module_2 = {}
	if arg1 ~= "" then
		for i_3 in string.gmatch(arg1, "[^%.]+") do
			table.insert(module_2, i_3)
		end
	end
	return module_2
end
local function DestroyReplicaAndDescendantsRecursive_upvr(arg1, arg2) -- Line 352, Named "DestroyReplicaAndDescendantsRecursive"
	--[[ Upvalues[3]:
		[1]: DestroyReplicaAndDescendantsRecursive_upvr (readonly)
		[2]: _replicas_upvr (readonly)
		[3]: _child_listeners_upvr (readonly)
	]]
	for i_4, v_3 in ipairs(arg1.Children) do
		DestroyReplicaAndDescendantsRecursive_upvr(v_3, true)
	end
	local Id = arg1.Id
	_replicas_upvr[Id] = nil
	arg1._maid:Cleanup()
	if arg2 ~= true and arg1.Parent ~= nil then
		local Children_2 = arg1.Parent.Children
		i_4 = Children_2
		v_3 = table.find(Children_2, arg1)
		table.remove(i_4, v_3)
	end
	_child_listeners_upvr[Id] = nil
end
local function CreateTableListenerPathIndex_upvr(arg1, arg2, arg3) -- Line 374, Named "CreateTableListenerPathIndex"
	local var59
	for i_5 = 1, #arg2 do
		local var60 = var59[1][arg2[i_5]]
		if var60 == nil then
			var60 = {{}}
			var59[1][arg2[i_5]] = var60
		end
		var59 = var60
	end
	local var62 = var59[arg3]
	if var62 == nil then
		var62 = {}
		var59[arg3] = var62
	end
	return var62
end
local function CleanTableListenerTable_upvr(arg1) -- Line 395, Named "CleanTableListenerTable"
	local _2 = arg1[2]
	local _1 = arg1[1]
	local tbl_2 = {_1}
	for i_6 = 1, #_2 do
		_1 = _1[1][_2[i_6]]
		table.insert(tbl_2, _1)
	end
	for i_7 = #tbl_2, 2, -1 do
		local var72 = tbl_2[i_7]
		if next(var72[1]) ~= nil then return end
		for i_8 = 2, 6 do
			if var72[i_8] ~= nil and 0 < #var72[i_8] then return end
		end
		tbl_2[i_7 - 1][1][_2[i_7 - 1]] = nil
	end
end
local var73_upvw
local function CreateReplicaBranch_upvr(arg1, arg2) -- Line 420, Named "CreateReplicaBranch"
	--[[ Upvalues[4]:
		[1]: _replicas_upvr (readonly)
		[2]: LoadWriteLib_upvr (readonly)
		[3]: WaitForDescendant_upvr (readonly)
		[4]: var73_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl_9 = {}
	local pairs_result1_4, _, pairs_result3_4 = pairs(arg1)
	local var192
	for i_9, v_4 in pairs_result1_4, var192, pairs_result3_4 do
		v_4[6] = tonumber(i_9)
		table.insert(tbl_9, v_4)
	end
	var192 = tbl_9
	table.sort(var192, function(arg1_5, arg2_3) -- Line 428
		local var194
		if arg1_5[6] >= arg2_3[6] then
			var194 = false
		else
			var194 = true
		end
		return var194
	end)
	local tbl_13 = {}
	var192 = arg2
	local var196 = var192
	if not var196 then
		var196 = {}
	end
	for _, v_5 in ipairs(tbl_9) do
		local _6_2 = v_5[6]
		local _4_2 = v_5[4]
		local var202
		local var203 = false
		if _4_2 ~= 0 then
			var202 = _replicas_upvr[_4_2]
			if var202 == nil then
				var203 = true
			end
		end
		local var204
		local var205
		if v_5[5] ~= nil then
			local LoadWriteLib_upvr_result1 = LoadWriteLib_upvr(v_5[5])
			var204 = LoadWriteLib_upvr_result1[1]
			var205 = LoadWriteLib_upvr_result1[2]
		end
		local tbl_4 = {
			Data = v_5[3];
			Id = _6_2;
			Class = v_5[1];
			Tags = v_5[2];
			Parent = var202;
			Children = {};
			_write_lib = var204;
			_write_lib_dictionary = var205;
			_table_listeners = {{}};
			_function_listeners = {};
			_raw_listeners = {};
			_signal_listeners = {};
			_maid = WaitForDescendant_upvr.NewMaid();
		}
		setmetatable(tbl_4, var73_upvw)
		if var202 ~= nil then
			table.insert(var202.Children, tbl_4)
		elseif var203 == true then
			local var209 = tbl_13[_4_2]
			if var209 == nil then
				var209 = {}
				tbl_13[_4_2] = var209
			end
			table.insert(var209, tbl_4)
		end
		_replicas_upvr[_6_2] = tbl_4
		table.insert(var196, tbl_4)
		local var210 = tbl_13[_6_2]
		if var210 ~= nil then
			tbl_13[_6_2] = nil
			for _, v_6 in ipairs(var210) do
				v_6.Parent = tbl_4
				table.insert(tbl_4.Children, v_6)
				local _
			end
		end
	end
	if next(tbl_13) ~= nil then
		for i_12, v_7 in pairs(tbl_13) do
			var203 = tostring(i_12)
			local var221
			for i_13, v_8 in ipairs(v_7) do
				local var222
				if i_13 == 1 then
					var222 = ""
				else
					var222 = ", "
				end
				var221 = var221..var222..v_8:Identify()
			end
			var221 = var221.."}; "
		end
		error(var221)
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return var196
end
local function ReplicaSetValue_upvr(arg1, arg2, arg3) -- Line 514, Named "ReplicaSetValue"
	--[[ Upvalues[1]:
		[1]: _replicas_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var297 = _replicas_upvr[arg1]
	local _table_listeners_5 = var297._table_listeners
	local var299
	for i_14 = 1, #arg2 - 1 do
		var299 = var299[arg2[i_14]]
		if _table_listeners_5 ~= nil then
			local var300 = _table_listeners_5[1][arg2[i_14]]
		end
	end
	local var301 = arg2[#arg2]
	local var302 = var299[var301]
	var299[var301] = arg3
	if var302 ~= arg3 and var300 ~= nil then
		if var302 == nil then
			i_14 = var300[3]
			if i_14 ~= nil then
				i_14 = ipairs(var300[3])
				local ipairs_result1_17, ipairs_result2_8, ipairs_result3_3 = ipairs(var300[3])
				for _, v_9 in ipairs_result1_17, ipairs_result2_8, ipairs_result3_3 do
					v_9(arg3, var301)
					local _
				end
			end
		end
		ipairs_result1_17 = var300[1]
		local var307 = ipairs_result1_17[arg2[#arg2]]
		if var307 ~= nil then
			ipairs_result1_17 = var307[2]
			if ipairs_result1_17 ~= nil then
				ipairs_result1_17 = ipairs(var307[2])
				for _, v_10 in ipairs(var307[2]) do
					v_10(arg3, var302)
					local _
				end
			end
		end
	end
	for _, v_11 in ipairs(var297._raw_listeners) do
		v_11("SetValue", arg2, arg3)
	end
end
local function ReplicaSetValues_upvr(arg1, arg2, arg3) -- Line 553, Named "ReplicaSetValues"
	--[[ Upvalues[1]:
		[1]: _replicas_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var351 = _replicas_upvr[arg1]
	local _table_listeners_4 = var351._table_listeners
	local var353
	for i_18 = 1, #arg2 do
		var353 = var353[arg2[i_18]]
		if _table_listeners_4 ~= nil then
			local var354 = _table_listeners_4[1][arg2[i_18]]
		end
	end
	for i_19, v_12 in pairs(arg3) do
		local var358 = var353[i_19]
		var353[i_19] = v_12
		if var358 ~= v_12 and var354 ~= nil then
			if var358 == nil and var354[3] ~= nil then
				for _, v_13 in ipairs(var354[3]) do
					v_13(v_12, i_19)
				end
			end
			local var362 = var354[1][i_19]
			if var362 ~= nil and var362[2] ~= nil then
				for _, v_14 in ipairs(var362[2]) do
					v_14(v_12, var358)
				end
			end
		end
	end
	for _, v_15 in ipairs(var351._raw_listeners) do
		v_15("SetValues", arg2, arg3)
	end
end
local function ReplicaArrayInsert_upvr(arg1, arg2, arg3) -- Line 594, Named "ReplicaArrayInsert"
	--[[ Upvalues[1]:
		[1]: _replicas_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var389 = _replicas_upvr[arg1]
	local _table_listeners = var389._table_listeners
	local var391
	for i_23 = 1, #arg2 do
		var391 = var391[arg2[i_23]]
		if _table_listeners ~= nil then
			local var392 = _table_listeners[1][arg2[i_23]]
		end
	end
	i_23 = arg3
	table.insert(var391, i_23)
	local len = #var391
	if var392 ~= nil and var392[4] ~= nil then
		i_23 = var392[4]
		local ipairs_result1_27, ipairs_result2_22, ipairs_result3_2 = ipairs(i_23)
		for _, v_16 in ipairs_result1_27, ipairs_result2_22, ipairs_result3_2 do
			v_16(len, arg3)
		end
	end
	ipairs_result2_22 = var389._raw_listeners
	for _, v_17 in ipairs(ipairs_result2_22) do
		v_17("ArrayInsert", arg2, arg3, len)
	end
	return len
end
local function ReplicaArraySet_upvr(arg1, arg2, arg3, arg4) -- Line 623, Named "ReplicaArraySet"
	--[[ Upvalues[1]:
		[1]: _replicas_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var420 = _replicas_upvr[arg1]
	local _table_listeners_2 = var420._table_listeners
	local var422
	for i_26 = 1, #arg2 do
		var422 = var422[arg2[i_26]]
		if _table_listeners_2 ~= nil then
			local var423 = _table_listeners_2[1][arg2[i_26]]
		end
	end
	var422[arg3] = arg4
	if var423 ~= nil and var423[5] ~= nil then
		for _, v_18 in ipairs(var423[5]) do
			v_18(arg3, arg4)
		end
	end
	for _, v_19 in ipairs(var420._raw_listeners) do
		v_19("ArraySet", arg2, arg3, arg4)
	end
end
local function ReplicaArrayRemove_upvr(arg1, arg2, arg3) -- Line 650, Named "ReplicaArrayRemove"
	--[[ Upvalues[1]:
		[1]: _replicas_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var450 = _replicas_upvr[arg1]
	local _table_listeners_6 = var450._table_listeners
	local var452
	for i_29 = 1, #arg2 do
		var452 = var452[arg2[i_29]]
		if _table_listeners_6 ~= nil then
			local var453 = _table_listeners_6[1][arg2[i_29]]
		end
	end
	i_29 = arg3
	local popped = table.remove(var452, i_29)
	if var453 ~= nil and var453[6] ~= nil then
		i_29 = var453[6]
		local ipairs_result1, ipairs_result2_5, ipairs_result3_6 = ipairs(i_29)
		for _, v_20 in ipairs_result1, ipairs_result2_5, ipairs_result3_6 do
			v_20(arg3, popped)
		end
	end
	ipairs_result2_5 = var450._raw_listeners
	for _, v_21 in ipairs(ipairs_result2_5) do
		v_21("ArrayRemove", arg2, arg3, popped)
	end
	return popped
end
var73_upvw = {}
local var461 = var73_upvw
var461.__index = var461
function var461.ListenToChange(arg1, arg2, arg3) -- Line 686
	--[[ Upvalues[4]:
		[1]: StringPathToArray_upvr (readonly)
		[2]: CreateTableListenerPathIndex_upvr (readonly)
		[3]: var9_upvw (read and write)
		[4]: CleanTableListenerTable_upvr (readonly)
	]]
	local var462
	if var462 ~= "function" then
		var462 = error
		var462("[ReplicaController]: Only a function can be set as listener in Replica:ListenToChange()")
	end
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var462 = StringPathToArray_upvr(arg2)
		return var462
	end
	if type(arg2) ~= "string" or not INLINED() then
		var462 = arg2
	end
	if #var462 < 1 then
		error("[ReplicaController]: Passed empty path - a value key must be specified")
	end
	local CreateTableListenerPathIndex_upvr_result1_3 = CreateTableListenerPathIndex_upvr(arg1, var462, 2)
	table.insert(CreateTableListenerPathIndex_upvr_result1_3, arg3)
	return var9_upvw.NewArrayScriptConnection(CreateTableListenerPathIndex_upvr_result1_3, arg3, CleanTableListenerTable_upvr, {arg1._table_listeners, var462})
end
function var461.ListenToNewKey(arg1, arg2, arg3) -- Line 702
	--[[ Upvalues[4]:
		[1]: StringPathToArray_upvr (readonly)
		[2]: CreateTableListenerPathIndex_upvr (readonly)
		[3]: var9_upvw (read and write)
		[4]: CleanTableListenerTable_upvr (readonly)
	]]
	local var465
	if var465 ~= "function" then
		var465 = error
		var465("[ReplicaController]: Only a function can be set as listener in Replica:ListenToNewKey()")
	end
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var465 = StringPathToArray_upvr(arg2)
		return var465
	end
	if type(arg2) ~= "string" or not INLINED_2() then
		var465 = arg2
	end
	local CreateTableListenerPathIndex_upvr_result1_4 = CreateTableListenerPathIndex_upvr(arg1, var465, 3)
	table.insert(CreateTableListenerPathIndex_upvr_result1_4, arg3)
	if #var465 == 0 then
		return var9_upvw.NewArrayScriptConnection(CreateTableListenerPathIndex_upvr_result1_4, arg3)
	end
	return var9_upvw.NewArrayScriptConnection(CreateTableListenerPathIndex_upvr_result1_4, arg3, CleanTableListenerTable_upvr, {arg1._table_listeners, var465})
end
function var461.ListenToArrayInsert(arg1, arg2, arg3) -- Line 719
	--[[ Upvalues[4]:
		[1]: StringPathToArray_upvr (readonly)
		[2]: CreateTableListenerPathIndex_upvr (readonly)
		[3]: var9_upvw (read and write)
		[4]: CleanTableListenerTable_upvr (readonly)
	]]
	local var468
	if var468 ~= "function" then
		var468 = error
		var468("[ReplicaController]: Only a function can be set as listener in Replica:ListenToArrayInsert()")
	end
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		var468 = StringPathToArray_upvr(arg2)
		return var468
	end
	if type(arg2) ~= "string" or not INLINED_3() then
		var468 = arg2
	end
	local CreateTableListenerPathIndex_upvr_result1_5 = CreateTableListenerPathIndex_upvr(arg1, var468, 4)
	table.insert(CreateTableListenerPathIndex_upvr_result1_5, arg3)
	if #var468 == 0 then
		return var9_upvw.NewArrayScriptConnection(CreateTableListenerPathIndex_upvr_result1_5, arg3)
	end
	return var9_upvw.NewArrayScriptConnection(CreateTableListenerPathIndex_upvr_result1_5, arg3, CleanTableListenerTable_upvr, {arg1._table_listeners, var468})
end
function var461.ListenToArraySet(arg1, arg2, arg3) -- Line 736
	--[[ Upvalues[4]:
		[1]: StringPathToArray_upvr (readonly)
		[2]: CreateTableListenerPathIndex_upvr (readonly)
		[3]: var9_upvw (read and write)
		[4]: CleanTableListenerTable_upvr (readonly)
	]]
	local var471
	if var471 ~= "function" then
		var471 = error
		var471("[ReplicaController]: Only a function can be set as listener in Replica:ListenToArraySet()")
	end
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		var471 = StringPathToArray_upvr(arg2)
		return var471
	end
	if type(arg2) ~= "string" or not INLINED_4() then
		var471 = arg2
	end
	local CreateTableListenerPathIndex_upvr_result1_2 = CreateTableListenerPathIndex_upvr(arg1, var471, 5)
	table.insert(CreateTableListenerPathIndex_upvr_result1_2, arg3)
	if #var471 == 0 then
		return var9_upvw.NewArrayScriptConnection(CreateTableListenerPathIndex_upvr_result1_2, arg3)
	end
	return var9_upvw.NewArrayScriptConnection(CreateTableListenerPathIndex_upvr_result1_2, arg3, CleanTableListenerTable_upvr, {arg1._table_listeners, var471})
end
function var461.ListenToArrayRemove(arg1, arg2, arg3) -- Line 753
	--[[ Upvalues[4]:
		[1]: StringPathToArray_upvr (readonly)
		[2]: CreateTableListenerPathIndex_upvr (readonly)
		[3]: var9_upvw (read and write)
		[4]: CleanTableListenerTable_upvr (readonly)
	]]
	local var474
	if var474 ~= "function" then
		var474 = error
		var474("[ReplicaController]: Only a function can be set as listener in Replica:ListenToArrayRemove()")
	end
	local function INLINED_5() -- Internal function, doesn't exist in bytecode
		var474 = StringPathToArray_upvr(arg2)
		return var474
	end
	if type(arg2) ~= "string" or not INLINED_5() then
		var474 = arg2
	end
	local CreateTableListenerPathIndex_upvr_result1 = CreateTableListenerPathIndex_upvr(arg1, var474, 6)
	table.insert(CreateTableListenerPathIndex_upvr_result1, arg3)
	if #var474 == 0 then
		return var9_upvw.NewArrayScriptConnection(CreateTableListenerPathIndex_upvr_result1, arg3)
	end
	return var9_upvw.NewArrayScriptConnection(CreateTableListenerPathIndex_upvr_result1, arg3, CleanTableListenerTable_upvr, {arg1._table_listeners, var474})
end
function var461.ListenToWrite(arg1, arg2, arg3) -- Line 770
	--[[ Upvalues[1]:
		[1]: var9_upvw (read and write)
	]]
	if type(arg3) ~= "function" then
		error("[ReplicaController]: Only a function can be set as listener in Replica:ListenToWrite()")
	end
	if arg1._write_lib == nil then
		error("[ReplicaController]: _write_lib was not declared for this replica")
	end
	local var477 = arg1._write_lib_dictionary[arg2]
	if var477 == nil then
		error("[ReplicaController]: Write function \""..arg2.."\" not declared inside _write_lib of this replica")
	end
	local var478 = arg1._function_listeners[var477]
	if var478 == nil then
		var478 = {}
		arg1._function_listeners[var477] = var478
	end
	table.insert(var478, arg3)
	return var9_upvw.NewArrayScriptConnection(var478, arg3)
end
function var461.ListenToRaw(arg1, arg2) -- Line 794
	--[[ Upvalues[1]:
		[1]: var9_upvw (read and write)
	]]
	local _raw_listeners = arg1._raw_listeners
	table.insert(_raw_listeners, arg2)
	return var9_upvw.NewArrayScriptConnection(_raw_listeners, arg2)
end
function var461.ConnectOnClientEvent(arg1, arg2) -- Line 801
	--[[ Upvalues[1]:
		[1]: var9_upvw (read and write)
	]]
	if type(arg2) ~= "function" then
		error("[ReplicaController]: Only functions can be passed to Replica:ConnectOnClientEvent()")
	end
	table.insert(arg1._signal_listeners, arg2)
	return var9_upvw.NewArrayScriptConnection(arg1._signal_listeners, arg2)
end
function var461.FireServer(arg1, ...) -- Line 809
	--[[ Upvalues[1]:
		[1]: any_SetupRemoteEvent_result1_upvr (readonly)
	]]
	any_SetupRemoteEvent_result1_upvr:FireServer(arg1.Id, ...)
end
function var461.ListenToChildAdded(arg1, arg2) -- Line 814
	--[[ Upvalues[3]:
		[1]: _replicas_upvr (readonly)
		[2]: _child_listeners_upvr (readonly)
		[3]: var9_upvw (read and write)
	]]
	if type(arg2) ~= "function" then
		error("[ReplicaController]: Only a function can be set as listener")
	end
	if _replicas_upvr[arg1.Id] == nil then return end
	local var480 = _child_listeners_upvr[arg1.Id]
	if var480 == nil then
		var480 = {}
		_child_listeners_upvr[arg1.Id] = var480
	end
	table.insert(var480, arg2)
	return var9_upvw.NewArrayScriptConnection(var480, arg2)
end
function var461.FindFirstChildOfClass(arg1, arg2) -- Line 832
	for _, v_22 in ipairs(arg1.Children) do
		if v_22.Class == arg2 then
			return v_22
		end
	end
	return nil
end
function var461.Identify(arg1) -- Line 842
	local var490 = ""
	for i_33, v_23 in pairs(arg1.Tags) do
		var490 = var490..""..tostring(i_33)..'='..tostring(v_23)
	end
	return "[Id:"..tostring(arg1.Id)..";Class:"..arg1.Class..";Tags:{"..var490.."}]"
end
function var461.IsActive(arg1) -- Line 853
	--[[ Upvalues[1]:
		[1]: _replicas_upvr (readonly)
	]]
	local var494
	if _replicas_upvr[arg1.Id] == nil then
		var494 = false
	else
		var494 = true
	end
	return var494
end
function var461.AddCleanupTask(arg1, arg2) -- Line 857
	return arg1._maid:AddCleanupTask(arg2)
end
function var461.RemoveCleanupTask(arg1, arg2) -- Line 861
	arg1._maid:RemoveCleanupTask(arg2)
end
function var461.SetValue(arg1, arg2, arg3) -- Line 867
	--[[ Upvalues[4]:
		[1]: var17_upvw (read and write)
		[2]: tbl_12_upvr (readonly)
		[3]: StringPathToArray_upvr (readonly)
		[4]: ReplicaSetValue_upvr (readonly)
	]]
	local var495
	if var495 == false then
		var495 = error
		var495(tbl_12_upvr.SetterError)
	end
	local function INLINED_6() -- Internal function, doesn't exist in bytecode
		var495 = StringPathToArray_upvr(arg2)
		return var495
	end
	if type(arg2) ~= "string" or not INLINED_6() then
		var495 = arg2
	end
	ReplicaSetValue_upvr(arg1.Id, var495, arg3)
end
function var461.SetValues(arg1, arg2, arg3) -- Line 875
	--[[ Upvalues[4]:
		[1]: var17_upvw (read and write)
		[2]: tbl_12_upvr (readonly)
		[3]: StringPathToArray_upvr (readonly)
		[4]: ReplicaSetValues_upvr (readonly)
	]]
	local var496
	if var496 == false then
		var496 = error
		var496(tbl_12_upvr.SetterError)
	end
	local function INLINED_7() -- Internal function, doesn't exist in bytecode
		var496 = StringPathToArray_upvr(arg2)
		return var496
	end
	if type(arg2) ~= "string" or not INLINED_7() then
		var496 = arg2
	end
	ReplicaSetValues_upvr(arg1.Id, var496, arg3)
end
function var461.ArrayInsert(arg1, arg2, arg3) -- Line 883
	--[[ Upvalues[4]:
		[1]: var17_upvw (read and write)
		[2]: tbl_12_upvr (readonly)
		[3]: StringPathToArray_upvr (readonly)
		[4]: ReplicaArrayInsert_upvr (readonly)
	]]
	local var497
	if var497 == false then
		var497 = error
		var497(tbl_12_upvr.SetterError)
	end
	local function INLINED_8() -- Internal function, doesn't exist in bytecode
		var497 = StringPathToArray_upvr(arg2)
		return var497
	end
	if type(arg2) ~= "string" or not INLINED_8() then
		var497 = arg2
	end
	return ReplicaArrayInsert_upvr(arg1.Id, var497, arg3)
end
function var461.ArraySet(arg1, arg2, arg3, arg4) -- Line 891
	--[[ Upvalues[4]:
		[1]: var17_upvw (read and write)
		[2]: tbl_12_upvr (readonly)
		[3]: StringPathToArray_upvr (readonly)
		[4]: ReplicaArraySet_upvr (readonly)
	]]
	local var498
	if var498 == false then
		var498 = error
		var498(tbl_12_upvr.SetterError)
	end
	local function INLINED_9() -- Internal function, doesn't exist in bytecode
		var498 = StringPathToArray_upvr(arg2)
		return var498
	end
	if type(arg2) ~= "string" or not INLINED_9() then
		var498 = arg2
	end
	ReplicaArraySet_upvr(arg1.Id, var498, arg3, arg4)
end
function var461.ArrayRemove(arg1, arg2, arg3) -- Line 899
	--[[ Upvalues[4]:
		[1]: var17_upvw (read and write)
		[2]: tbl_12_upvr (readonly)
		[3]: StringPathToArray_upvr (readonly)
		[4]: ReplicaArrayRemove_upvr (readonly)
	]]
	local var499
	if var499 == false then
		var499 = error
		var499(tbl_12_upvr.SetterError)
	end
	local function INLINED_10() -- Internal function, doesn't exist in bytecode
		var499 = StringPathToArray_upvr(arg2)
		return var499
	end
	if type(arg2) ~= "string" or not INLINED_10() then
		var499 = arg2
	end
	return ReplicaArrayRemove_upvr(arg1.Id, var499, arg3)
end
function var461.Write(arg1, arg2, ...) -- Line 907
	--[[ Upvalues[2]:
		[1]: var17_upvw (read and write)
		[2]: tbl_12_upvr (readonly)
	]]
	if var17_upvw == false then
		error(tbl_12_upvr.SetterError)
	end
	local var502 = arg1._write_lib_dictionary[arg2]
	local var503 = arg1._function_listeners[var502]
	if var503 ~= nil then
		for _, v_24 in ipairs(var503) do
			v_24(...)
		end
	end
	return table.unpack(table.pack(arg1._write_lib[var502](arg1, ...)))
end
local var507_upvw = false
function var11_upvr.RequestData() -- Line 925
	--[[ Upvalues[4]:
		[1]: var507_upvw (read and write)
		[2]: any_SetupRemoteEvent_result1_upvr_2 (readonly)
		[3]: tbl_12_upvr (readonly)
		[4]: var11_upvr (readonly)
	]]
	if var507_upvw == true then
	else
		var507_upvw = true
		task.spawn(function() -- Line 930
			--[[ Upvalues[3]:
				[1]: any_SetupRemoteEvent_result1_upvr_2 (copied, readonly)
				[2]: tbl_12_upvr (copied, readonly)
				[3]: var11_upvr (copied, readonly)
			]]
			while game:IsLoaded() == false do
				task.wait()
			end
			any_SetupRemoteEvent_result1_upvr_2:FireServer()
			while task.wait(tbl_12_upvr.RequestDataRepeat) and var11_upvr.InitialDataReceived ~= true do
				any_SetupRemoteEvent_result1_upvr_2:FireServer()
			end
		end)
	end
end
function var11_upvr.ReplicaOfClassCreated(arg1, arg2) -- Line 944
	--[[ Upvalues[2]:
		[1]: _class_listeners_upvr (readonly)
		[2]: var9_upvw (read and write)
	]]
	if type(arg1) ~= "string" then
		error("[ReplicaController]: replica_class must be a string")
	end
	if type(arg2) ~= "function" then
		error("[ReplicaController]: Only a function can be set as listener in ReplicaController.ReplicaOfClassCreated()")
	end
	local var509_upvw = _class_listeners_upvr[arg1]
	if var509_upvw == nil then
		var509_upvw = var9_upvw.NewScriptSignal()
		_class_listeners_upvr[arg1] = var509_upvw
	end
	return var509_upvw:Connect(arg2, function() -- Line 957
		--[[ Upvalues[3]:
			[1]: var509_upvw (read and write)
			[2]: _class_listeners_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		if var509_upvw:GetListenerCount() == 0 and _class_listeners_upvr[arg1] == var509_upvw then
			_class_listeners_upvr[arg1] = nil
		end
	end)
end
function var11_upvr.GetReplicaById(arg1) -- Line 965
	--[[ Upvalues[1]:
		[1]: _replicas_upvr (readonly)
	]]
	return _replicas_upvr[arg1]
end
any_SetupRemoteEvent_result1_upvr_2.OnClientEvent:Connect(function() -- Line 972
	--[[ Upvalues[1]:
		[1]: var11_upvr (readonly)
	]]
	var11_upvr.InitialDataReceived = true
	print("[ReplicaController]: Initial data received")
	var11_upvr.InitialDataReceivedSignal:Fire()
end)
var9_upvw.SetupRemoteEvent("Replica_ReplicaSetValue").OnClientEvent:Connect(ReplicaSetValue_upvr)
var9_upvw.SetupRemoteEvent("Replica_ReplicaSetValues").OnClientEvent:Connect(ReplicaSetValues_upvr)
var9_upvw.SetupRemoteEvent("Replica_ReplicaArrayInsert").OnClientEvent:Connect(ReplicaArrayInsert_upvr)
var9_upvw.SetupRemoteEvent("Replica_ReplicaArraySet").OnClientEvent:Connect(ReplicaArraySet_upvr)
var9_upvw.SetupRemoteEvent("Replica_ReplicaArrayRemove").OnClientEvent:Connect(ReplicaArrayRemove_upvr)
var9_upvw.SetupRemoteEvent("Replica_ReplicaWrite").OnClientEvent:Connect(function(arg1, arg2, ...) -- Line 989
	--[[ Upvalues[2]:
		[1]: _replicas_upvr (readonly)
		[2]: var17_upvw (read and write)
	]]
	local var515 = _replicas_upvr[arg1]
	var17_upvw = true
	var515._write_lib[arg2](var515, ...)
	var17_upvw = false
	local var516 = var515._function_listeners[arg2]
	if var516 ~= nil then
		for _, v_25 in ipairs(var516) do
			v_25(...)
		end
	end
end)
any_SetupRemoteEvent_result1_upvr.OnClientEvent:Connect(function(arg1, ...) -- Line 1005
	--[[ Upvalues[1]:
		[1]: _replicas_upvr (readonly)
	]]
	for _, v_26 in ipairs(_replicas_upvr[arg1]._signal_listeners) do
		v_26(...)
	end
end)
var9_upvw.SetupRemoteEvent("Replica_ReplicaSetParent").OnClientEvent:Connect(function(arg1, arg2) -- Line 1015
	--[[ Upvalues[2]:
		[1]: _replicas_upvr (readonly)
		[2]: _child_listeners_upvr (readonly)
	]]
	local var529 = _replicas_upvr[arg1]
	local Children = var529.Parent.Children
	local var531 = _replicas_upvr[arg2]
	table.remove(Children, table.find(Children, var529))
	table.insert(var531.Children, var529)
	var529.Parent = var531
	local var532 = _child_listeners_upvr[arg2]
	if var532 ~= nil then
		for i_37 = 1, #var532 do
			var532[i_37](var529)
		end
	end
end)
local NewReplicaSignal_upvr = var11_upvr.NewReplicaSignal
var9_upvw.SetupRemoteEvent("Replica_ReplicaCreate").OnClientEvent:Connect(function(arg1, arg2) -- Line 1032
	--[[ Upvalues[4]:
		[1]: CreateReplicaBranch_upvr (readonly)
		[2]: _child_listeners_upvr (readonly)
		[3]: NewReplicaSignal_upvr (readonly)
		[4]: _class_listeners_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl_6 = {}
	if type(arg1) == "table" then
		table.sort(arg1, function(arg1_8, arg2_6) -- Line 1046
			local var597
			if arg1_8[1] >= arg2_6[1] then
				var597 = false
			else
				var597 = true
			end
			return var597
		end)
		for i_38, v_27 in ipairs(arg1) do
			CreateReplicaBranch_upvr(v_27[2], tbl_6)
		end
	elseif arg2[1] ~= nil then
		local tbl_8 = {}
		i_38 = arg1
		tbl_8[tostring(i_38)] = arg2
		CreateReplicaBranch_upvr(tbl_8, tbl_6)
	else
		CreateReplicaBranch_upvr(arg2, tbl_6)
	end
	table.sort(tbl_6, function(arg1_9, arg2_7) -- Line 1058
		local var603
		if arg1_9.Id >= arg2_7.Id then
			var603 = false
		else
			var603 = true
		end
		return var603
	end)
	for _, v_28 in ipairs(tbl_6) do
		local Parent_2 = v_28.Parent
		if Parent_2 ~= nil then
			local var608 = _child_listeners_upvr[Parent_2.Id]
			if var608 ~= nil then
				for i_40 = 1, #var608 do
					var608[i_40](v_28)
					local _
				end
			end
		end
	end
	for _, v_29 in ipairs(tbl_6) do
		NewReplicaSignal_upvr:Fire(v_29)
		local var613 = _class_listeners_upvr[v_29.Class]
		if var613 ~= nil then
			var613:Fire(v_29)
		end
	end
end)
var9_upvw.SetupRemoteEvent("Replica_ReplicaDestroy").OnClientEvent:Connect(function(arg1) -- Line 1084
	--[[ Upvalues[2]:
		[1]: _replicas_upvr (readonly)
		[2]: DestroyReplicaAndDescendantsRecursive_upvr (readonly)
	]]
	DestroyReplicaAndDescendantsRecursive_upvr(_replicas_upvr[arg1])
end)
return var11_upvr