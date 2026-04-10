-- Name: ClientResolver
-- Path: game:GetService("ReplicatedStorage").Modules.ClientResolver
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5594311999993806 seconds

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
-- Decompiled on 2026-04-10 16:50:39
-- Luau version 6, Types version 3
-- Time taken: 0.010202 seconds

local module = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local tbl_upvr_2 = {
	Profile = nil;
	PCache = nil;
	SCache = nil;
	CCache = {};
	Loot = {};
}
local tbl_upvr = {}
local tbl_upvr_3 = {
	ArraySet = {};
	ArrayRemove = {};
}
local function disconnectListener_upvr(arg1) -- Line 31, Named "disconnectListener"
	if not arg1 then
	else
		if type(arg1) == "table" and type(arg1.Disconnect) == "function" then
			arg1:Disconnect()
			return
		end
		if pcall(function() -- Line 41
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:Disconnect()
		end) then return end
		if type(arg1) == "function" then
			arg1()
		end
	end
end
local function pathKeys_upvr(arg1) -- Line 53, Named "pathKeys"
	local module_2 = {}
	for i in string.gmatch(arg1, "[^/]+") do
		table.insert(module_2, tonumber(i) or i)
	end
	return module_2
end
local function resolveReplicaPath_upvr(arg1, arg2) -- Line 62, Named "resolveReplicaPath"
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local ipairs_result1_2, ipairs_result2, ipairs_result3_2 = ipairs(arg2)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [76] 59. Error Block 16 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [76] 59. Error Block 16 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 7. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [76.9]
	-- KONSTANTERROR: [8] 7. Error Block 2 end (CF ANALYSIS FAILED)
end
local function _(arg1) -- Line 88, Named "bumpLootWaitToken"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	tbl_upvr[arg1] = (tbl_upvr[arg1] or 0) + 1
	return tbl_upvr[arg1]
end
local function waitForLootReplica_upvr(arg1, arg2) -- Line 93, Named "waitForLootReplica"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
	]]
	if not arg1 then
		return nil, "invalid_userId"
	end
	while true do
		if (tbl_upvr[arg1] or 0) ~= (tbl_upvr[arg1] or 0) then
			return nil, "cancelled"
		end
		local var16 = tbl_upvr_2.Loot[arg1]
		if var16 and typeof(var16.Data) == "table" then
			return var16
		end
		if arg2 and arg2 <= os.clock() - os.clock() then
			return nil, "timeout"
		end
		task.wait()
	end
end
local ReplicaController_upvr = require(ReplicatedStorage.ReplicaController)
local LocalPlayer_upvr = require(ReplicatedStorage.Modules.Services).Players.LocalPlayer
function module.Start() -- Line 119
	--[[ Upvalues[3]:
		[1]: ReplicaController_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
	]]
	ReplicaController_upvr.ReplicaOfClassCreated("PlayerProfile", function(arg1) -- Line 120
		--[[ Upvalues[2]:
			[1]: LocalPlayer_upvr (copied, readonly)
			[2]: tbl_upvr_2 (copied, readonly)
		]]
		if arg1.Tags and arg1.Tags.Player == LocalPlayer_upvr then
			tbl_upvr_2.Profile = arg1
		end
	end)
	ReplicaController_upvr.ReplicaOfClassCreated("PlayerCache", function(arg1) -- Line 126
		--[[ Upvalues[2]:
			[1]: LocalPlayer_upvr (copied, readonly)
			[2]: tbl_upvr_2 (copied, readonly)
		]]
		if arg1.Tags and arg1.Tags.UserId == LocalPlayer_upvr.UserId then
			tbl_upvr_2.PCache = arg1
		end
	end)
	ReplicaController_upvr.ReplicaOfClassCreated("ServerCache", function(arg1) -- Line 132
		--[[ Upvalues[1]:
			[1]: tbl_upvr_2 (copied, readonly)
		]]
		tbl_upvr_2.SCache = arg1
	end)
	ReplicaController_upvr.ReplicaOfClassCreated("LootReplica", function(arg1) -- Line 136
		--[[ Upvalues[1]:
			[1]: tbl_upvr_2 (copied, readonly)
		]]
		print(arg1)
		local Tags = arg1.Tags
		if Tags then
			Tags = arg1.Tags
			Tags = Tags.Owner
		end
		if Tags then
			tbl_upvr_2.Loot[Tags] = arg1
		end
	end)
	ReplicaController_upvr.RequestData()
end
function module.Resolve(arg1, arg2) -- Line 147
	--[[ Upvalues[3]:
		[1]: tbl_upvr_2 (readonly)
		[2]: pathKeys_upvr (readonly)
		[3]: resolveReplicaPath_upvr (readonly)
	]]
	local var28
	if not tbl_upvr_2[arg1] then
		repeat
			task.wait(0.1)
		until tbl_upvr_2[arg1]
	end
	local var29 = tbl_upvr_2[arg1]
	if not var29 then
		return nil
	end
	local pathKeys_upvr_result1 = pathKeys_upvr(arg2)
	var28 = var29.Data
	if not resolveReplicaPath_upvr(var28, pathKeys_upvr_result1) then
		repeat
			var28 = task.wait
			var28()
			var28 = resolveReplicaPath_upvr(var29.Data, pathKeys_upvr_result1)
		until var28
	end
	var28 = resolveReplicaPath_upvr(var29.Data, pathKeys_upvr_result1)
	local var31 = var28
	if not var31 then
		var28 = nil
		return var28
	end
	var28 = var29.Data
	for _, v in ipairs(var31) do
		if not var28 then
			return nil
		end
		var28 = var28[v]
	end
	return var28
end
function module.OnChanged(arg1, arg2, arg3) -- Line 185
	--[[ Upvalues[3]:
		[1]: tbl_upvr_2 (readonly)
		[2]: pathKeys_upvr (readonly)
		[3]: resolveReplicaPath_upvr (readonly)
	]]
	repeat
		task.wait()
	until tbl_upvr_2[arg1]
	local var35 = tbl_upvr_2[arg1]
	if not var35 then
	else
		local resolveReplicaPath_result1_2 = resolveReplicaPath_upvr(var35.Data, pathKeys_upvr(arg2))
		if resolveReplicaPath_result1_2 then
			var35:ListenToChange(resolveReplicaPath_result1_2, arg3)
		end
	end
end
function module.OnArraySet(arg1, arg2, arg3) -- Line 200
	--[[ Upvalues[3]:
		[1]: tbl_upvr_2 (readonly)
		[2]: pathKeys_upvr (readonly)
		[3]: resolveReplicaPath_upvr (readonly)
	]]
	repeat
		task.wait()
	until tbl_upvr_2[arg1]
	local var37 = tbl_upvr_2[arg1]
	if not var37 then
	else
		local resolveReplicaPath_result1 = resolveReplicaPath_upvr(var37.Data, pathKeys_upvr(arg2))
		if resolveReplicaPath_result1 then
			var37:ListenToArraySet(resolveReplicaPath_result1, function(arg1_2, arg2_2) -- Line 211
				--[[ Upvalues[1]:
					[1]: arg3 (readonly)
				]]
				arg3(arg1_2, arg2_2)
			end)
		end
	end
end
function module.ResolveLoot(arg1, arg2) -- Line 217
	--[[ Upvalues[1]:
		[1]: waitForLootReplica_upvr (readonly)
	]]
	local waitForLootReplica_result1_2 = waitForLootReplica_upvr(arg1, arg2)
	if not waitForLootReplica_result1_2 then
		return {}
	end
	return waitForLootReplica_result1_2.Data
end
function module.OnLootArraySet(arg1, arg2, arg3) -- Line 227
	--[[ Upvalues[3]:
		[1]: disconnectListener_upvr (readonly)
		[2]: tbl_upvr_3 (readonly)
		[3]: waitForLootReplica_upvr (readonly)
	]]
	disconnectListener_upvr(tbl_upvr_3.ArraySet[arg1])
	tbl_upvr_3.ArraySet[arg1] = nil
	local waitForLootReplica_upvr_result1 = waitForLootReplica_upvr(arg1, arg3)
	if not waitForLootReplica_upvr_result1 then return end
	local any_ListenToArraySet_result1 = waitForLootReplica_upvr_result1:ListenToArraySet({}, function(arg1_3, arg2_3) -- Line 235
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		arg2(arg1_3, arg2_3)
	end)
	tbl_upvr_3.ArraySet[arg1] = any_ListenToArraySet_result1
	return any_ListenToArraySet_result1
end
function module.OnLootArrayRemove(arg1, arg2, arg3) -- Line 242
	--[[ Upvalues[3]:
		[1]: disconnectListener_upvr (readonly)
		[2]: tbl_upvr_3 (readonly)
		[3]: waitForLootReplica_upvr (readonly)
	]]
	disconnectListener_upvr(tbl_upvr_3.ArrayRemove[arg1])
	tbl_upvr_3.ArrayRemove[arg1] = nil
	local waitForLootReplica_result1 = waitForLootReplica_upvr(arg1, arg3)
	if not waitForLootReplica_result1 then return end
	local any_ListenToArrayRemove_result1 = waitForLootReplica_result1:ListenToArrayRemove({}, function(arg1_4) -- Line 250
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		arg2(arg1_4)
	end)
	tbl_upvr_3.ArrayRemove[arg1] = any_ListenToArrayRemove_result1
	return any_ListenToArrayRemove_result1
end
function module.ForgetLoot(arg1) -- Line 257
	--[[ Upvalues[4]:
		[1]: tbl_upvr (readonly)
		[2]: disconnectListener_upvr (readonly)
		[3]: tbl_upvr_3 (readonly)
		[4]: tbl_upvr_2 (readonly)
	]]
	if not arg1 then
	else
		tbl_upvr[arg1] = (tbl_upvr[arg1] or 0) + 1
		disconnectListener_upvr(tbl_upvr_3.ArraySet[arg1])
		disconnectListener_upvr(tbl_upvr_3.ArrayRemove[arg1])
		tbl_upvr_3.ArraySet[arg1] = nil
		tbl_upvr_3.ArrayRemove[arg1] = nil
		tbl_upvr_2.Loot[arg1] = nil
	end
end
return module