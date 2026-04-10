-- Name: Client
-- Path: game:GetService("ReplicatedStorage").BlinkNetwork.Blink.Client
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7771578000010777 seconds

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
-- Decompiled on 2026-04-10 16:51:07
-- Luau version 6, Types version 3
-- Time taken: 0.020244 seconds

local _BLINK = _G._BLINK
if not _BLINK then
	_BLINK = {}
end
_G._BLINK = _BLINK
if _G._BLINK.BLINK then
	error("[Blink]: An instance of blink is already running with the remote scope \"BLINK\". Change the remote scope of either instance to avoid conflicts.")
end
_G._BLINK.BLINK = true
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local var4_upvw = 64
local var5_upvw = 0
local var6_upvw = 0
local buffer_create_result1_3_upvw = buffer.create(64)
local tbl_14_upvw = {}
local var9_upvw = 0
local buffer_create_result1_upvw = buffer.create(64)
local tbl_13_upvw = {}
local var12_upvw = 0
local function _(arg1) -- Line 51, Named "Read"
	--[[ Upvalues[1]:
		[1]: var9_upvw (read and write)
	]]
	var9_upvw += arg1
	return var9_upvw
end
local function _() -- Line 57, Named "Save"
	--[[ Upvalues[4]:
		[1]: var4_upvw (read and write)
		[2]: var6_upvw (read and write)
		[3]: buffer_create_result1_3_upvw (read and write)
		[4]: tbl_14_upvw (read and write)
	]]
	return {
		Size = var4_upvw;
		Cursor = var6_upvw;
		Buffer = buffer_create_result1_3_upvw;
		Instances = tbl_14_upvw;
	}
end
local function _(arg1) -- Line 66, Named "Load"
	--[[ Upvalues[5]:
		[1]: var4_upvw (read and write)
		[2]: var6_upvw (read and write)
		[3]: var5_upvw (read and write)
		[4]: buffer_create_result1_3_upvw (read and write)
		[5]: tbl_14_upvw (read and write)
	]]
	if arg1 then
		var4_upvw = arg1.Size
		var6_upvw = arg1.Cursor
		var5_upvw = arg1.Cursor
		buffer_create_result1_3_upvw = arg1.Buffer
		tbl_14_upvw = arg1.Instances
	else
		var4_upvw = 64
		var6_upvw = 0
		var5_upvw = 0
		buffer_create_result1_3_upvw = buffer.create(64)
		tbl_14_upvw = {}
	end
end
local var14_upvw = 0
local function _() -- Line 83, Named "Invoke"
	--[[ Upvalues[1]:
		[1]: var14_upvw (read and write)
	]]
	if var14_upvw == 255 then
		var14_upvw = 0
	end
	var14_upvw += 1
	return var14_upvw
end
local function Allocate_upvr(arg1) -- Line 93, Named "Allocate"
	--[[ Upvalues[4]:
		[1]: var6_upvw (read and write)
		[2]: var4_upvw (read and write)
		[3]: buffer_create_result1_3_upvw (read and write)
		[4]: var5_upvw (read and write)
	]]
	local var15 = var6_upvw + arg1
	if var4_upvw < var15 then
		while var4_upvw < var15 do
			var4_upvw *= 1.5
		end
		local buffer_create_result1 = buffer.create(var4_upvw)
		buffer.copy(buffer_create_result1, 0, buffer_create_result1_3_upvw, 0, var6_upvw)
		buffer_create_result1_3_upvw = buffer_create_result1
	end
	var5_upvw = var6_upvw
	var6_upvw += arg1
	return var5_upvw
end
local function _() -- Line 112, Named "CreateQueue"
	return {
		head = nil;
		tail = nil;
	}
end
local function _(arg1) -- Line 119, Named "Pop"
	local head = arg1.head
	if head == nil then return end
	arg1.head = head.next
	return head.value
end
local function _(arg1, arg2) -- Line 129, Named "Push"
	local tbl_3 = {}
	tbl_3.value = arg2
	tbl_3.next = nil
	if arg1.tail ~= nil then
		arg1.tail.next = tbl_3
	end
	arg1.tail = tbl_3
	if arg1.head == nil then
		arg1.head = tbl_3
	end
end
local tbl_15_upvr = {
	Reliable = table.create(256);
	Unreliable = table.create(256);
}
local tbl_4_upvr = {
	Reliable = table.create(256);
	Unreliable = table.create(256);
}
local var22_upvw = '?'
local var23_upvw
tbl_4_upvr.Reliable[0] = table.create(256)
tbl_4_upvr.Reliable[2] = table.create(256)
tbl_4_upvr.Reliable[3] = table.create(256)
tbl_4_upvr.Reliable[4] = table.create(256)
tbl_4_upvr.Reliable[5] = table.create(256)
local function _() -- Line 165, Named "ReadEVENT_adminAccess"
	--[[ Upvalues[2]:
		[1]: var9_upvw (read and write)
		[2]: buffer_create_result1_upvw (read and write)
	]]
	local var24 = var9_upvw
	var9_upvw += 1
	if buffer.readu8(buffer_create_result1_upvw, var24 + 0) ~= 1 then
		var24 = false
	else
		var24 = true
	end
	return var24
end
local function WriteEVENT_requestGlobalAction_upvr(arg1) -- Line 172, Named "WriteEVENT_requestGlobalAction"
	--[[ Upvalues[3]:
		[1]: Allocate_upvr (readonly)
		[2]: buffer_create_result1_3_upvw (read and write)
		[3]: var5_upvw (read and write)
	]]
	local Allocate_upvr_result1_2 = Allocate_upvr(5)
	buffer.writeu8(buffer_create_result1_3_upvw, Allocate_upvr_result1_2 + 0, 1)
	local len = #arg1.option
	buffer.writeu16(buffer_create_result1_3_upvw, Allocate_upvr_result1_2 + 1, len)
	Allocate_upvr(len)
	buffer.writestring(buffer_create_result1_3_upvw, var5_upvw, arg1.option, len)
	local len_2 = #arg1.input
	buffer.writeu16(buffer_create_result1_3_upvw, Allocate_upvr_result1_2 + 3, len_2)
	Allocate_upvr(len_2)
	buffer.writestring(buffer_create_result1_3_upvw, var5_upvw, arg1.input, len_2)
end
local function _() -- Line 186, Named "ReadEVENT_openVaultDoor"
	--[[ Upvalues[2]:
		[1]: var9_upvw (read and write)
		[2]: buffer_create_result1_upvw (read and write)
	]]
	local var28 = var9_upvw
	var9_upvw += 1
	if buffer.readu8(buffer_create_result1_upvw, var28 + 0) ~= 1 then
		var28 = false
	else
		var28 = true
	end
	return var28
end
local function _() -- Line 193, Named "ReadEVENT_startSantaEvent"
	--[[ Upvalues[2]:
		[1]: var12_upvw (read and write)
		[2]: tbl_13_upvw (read and write)
	]]
	var12_upvw += 1
	return tbl_13_upvw[var12_upvw]
end
local function _() -- Line 199, Named "ReadEVENT_santaEndEvent"
	--[[ Upvalues[2]:
		[1]: var12_upvw (read and write)
		[2]: tbl_13_upvw (read and write)
	]]
	var12_upvw += 1
	return tbl_13_upvw[var12_upvw]
end
local function _() -- Line 205, Named "ReadEVENT_santaReconcile"
	--[[ Upvalues[2]:
		[1]: var12_upvw (read and write)
		[2]: tbl_13_upvw (read and write)
	]]
	var12_upvw += 1
	return tbl_13_upvw[var12_upvw]
end
local function _(arg1) -- Line 211, Named "WriteEVENT_claimAdvent"
	--[[ Upvalues[2]:
		[1]: Allocate_upvr (readonly)
		[2]: buffer_create_result1_3_upvw (read and write)
	]]
	local Allocate_upvr_result1 = Allocate_upvr(2)
	buffer.writeu8(buffer_create_result1_3_upvw, Allocate_upvr_result1 + 0, 6)
	buffer.writeu8(buffer_create_result1_3_upvw, Allocate_upvr_result1 + 1, arg1)
end
if not RunService:IsRunning() then
	local function var30() -- Line 219
	end
	return table.freeze({
		adminAccess = {
			On = var30;
		};
		requestGlobalAction = {
			Fire = var30;
		};
		openVaultDoor = {
			On = var30;
		};
		startSantaEvent = {
			On = var30;
		};
		santaEndEvent = {
			On = var30;
		};
		santaReconcile = {
			On = var30;
		};
		claimAdvent = {
			Fire = var30;
		};
	})
end
if not RunService:IsClient() then
	error("Client network module can only be required from the client.")
end
local BLINK_RELIABLE_REMOTE_upvr = ReplicatedStorage:WaitForChild("BLINK_RELIABLE_REMOTE")
local function StepReplication() -- Line 253
	--[[ Upvalues[6]:
		[1]: var6_upvw (read and write)
		[2]: buffer_create_result1_3_upvw (read and write)
		[3]: BLINK_RELIABLE_REMOTE_upvr (readonly)
		[4]: tbl_14_upvw (read and write)
		[5]: var4_upvw (read and write)
		[6]: var5_upvw (read and write)
	]]
	if var6_upvw <= 0 then
	else
		local buffer_create_result1_2 = buffer.create(var6_upvw)
		buffer.copy(buffer_create_result1_2, 0, buffer_create_result1_3_upvw, 0, var6_upvw)
		BLINK_RELIABLE_REMOTE_upvr:FireServer(buffer_create_result1_2, tbl_14_upvw)
		var4_upvw = 64
		var6_upvw = 0
		var5_upvw = 0
		buffer_create_result1_3_upvw = buffer.create(64)
		table.clear(tbl_14_upvw)
	end
end
RunService.Heartbeat:Connect(StepReplication)
BLINK_RELIABLE_REMOTE_upvr.OnClientEvent:Connect(function(arg1, arg2) -- Line 269
	--[[ Upvalues[8]:
		[1]: var9_upvw (read and write)
		[2]: buffer_create_result1_upvw (read and write)
		[3]: tbl_13_upvw (read and write)
		[4]: var12_upvw (read and write)
		[5]: var23_upvw (read and write)
		[6]: var22_upvw (read and write)
		[7]: tbl_15_upvr (readonly)
		[8]: tbl_4_upvr (readonly)
	]]
	var9_upvw = 0
	buffer_create_result1_upvw = arg1
	tbl_13_upvw = arg2
	var12_upvw = 0
	if var23_upvw and coroutine.status(var23_upvw) == "suspended" then
		warn(`[Blink]: Yielded in a Sync call. Event "{var22_upvw}" uses a Sync call, consider using an Async call instead.`)
		coroutine.close(var23_upvw)
	end
	var23_upvw = coroutine.running()
	while var9_upvw < buffer.len(buffer_create_result1_upvw) do
		var9_upvw += 1
		local buffer_readu8_result1 = buffer.readu8(buffer_create_result1_upvw, var9_upvw + 0)
		if buffer_readu8_result1 == 0 then
			local var43 = var9_upvw
			var9_upvw += 1
			if buffer.readu8(buffer_create_result1_upvw, var43 + 0) ~= 1 then
				var43 = false
			else
				var43 = true
			end
			if tbl_15_upvr.Reliable[0] ~= nil then
				var22_upvw = "adminAccess"
				tbl_15_upvr.Reliable[0](var43)
			else
				if 256 < #tbl_4_upvr.Reliable[0] then
					warn("[Blink]: Event queue of \"adminAccess\" exceeded 256, did you forget to implement a listener?")
				end
				local tbl_8 = {}
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_8[1] = var43
				table.insert(tbl_4_upvr.Reliable[0], tbl_8)
			end
		elseif buffer_readu8_result1 == 2 then
			local var45 = var9_upvw
			var9_upvw += 1
			if buffer.readu8(buffer_create_result1_upvw, var45 + 0) ~= 1 then
				var45 = false
			else
				var45 = true
			end
			if tbl_15_upvr.Reliable[2] ~= nil then
				var22_upvw = "openVaultDoor"
				tbl_15_upvr.Reliable[2](var45)
			else
				if 256 < #tbl_4_upvr.Reliable[2] then
					warn("[Blink]: Event queue of \"openVaultDoor\" exceeded 256, did you forget to implement a listener?")
				end
				local tbl_6 = {}
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_6[1] = var45
				table.insert(tbl_4_upvr.Reliable[2], tbl_6)
			end
		elseif buffer_readu8_result1 == 3 then
			var12_upvw += 1
			if tbl_15_upvr.Reliable[3] ~= nil then
				var22_upvw = "startSantaEvent"
				tbl_15_upvr.Reliable[3](tbl_13_upvw[var12_upvw])
			else
				if 256 < #tbl_4_upvr.Reliable[3] then
					warn("[Blink]: Event queue of \"startSantaEvent\" exceeded 256, did you forget to implement a listener?")
				end
				local tbl_7 = {}
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_7[1] = tbl_13_upvw[var12_upvw]
				table.insert(tbl_4_upvr.Reliable[3], tbl_7)
			end
		elseif buffer_readu8_result1 == 4 then
			var12_upvw += 1
			if tbl_15_upvr.Reliable[4] ~= nil then
				var22_upvw = "santaEndEvent"
				tbl_15_upvr.Reliable[4](tbl_13_upvw[var12_upvw])
			else
				if 256 < #tbl_4_upvr.Reliable[4] then
					warn("[Blink]: Event queue of \"santaEndEvent\" exceeded 256, did you forget to implement a listener?")
				end
				local tbl_5 = {}
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_5[1] = tbl_13_upvw[var12_upvw]
				table.insert(tbl_4_upvr.Reliable[4], tbl_5)
			end
		elseif buffer_readu8_result1 == 5 then
			var12_upvw += 1
			if tbl_15_upvr.Reliable[5] ~= nil then
				var22_upvw = "santaReconcile"
				tbl_15_upvr.Reliable[5](tbl_13_upvw[var12_upvw])
			else
				if 256 < #tbl_4_upvr.Reliable[5] then
					warn("[Blink]: Event queue of \"santaReconcile\" exceeded 256, did you forget to implement a listener?")
				end
				local tbl = {}
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl[1] = tbl_13_upvw[var12_upvw]
				table.insert(tbl_4_upvr.Reliable[5], tbl)
			end
		end
	end
end)
ReplicatedStorage:WaitForChild("BLINK_UNRELIABLE_REMOTE").OnClientEvent:Connect(function(arg1, arg2) -- Line 342
	--[[ Upvalues[6]:
		[1]: var9_upvw (read and write)
		[2]: buffer_create_result1_upvw (read and write)
		[3]: tbl_13_upvw (read and write)
		[4]: var12_upvw (read and write)
		[5]: var23_upvw (read and write)
		[6]: var22_upvw (read and write)
	]]
	var9_upvw = 0
	buffer_create_result1_upvw = arg1
	tbl_13_upvw = arg2
	var12_upvw = 0
	if var23_upvw and coroutine.status(var23_upvw) == "suspended" then
		warn(`[Blink]: Yielded in a Sync call. Event "{var22_upvw}" uses a Sync call, consider using an Async call instead.`)
		coroutine.close(var23_upvw)
	end
	var23_upvw = coroutine.running()
	while var9_upvw < buffer.len(buffer_create_result1_upvw) do
		var9_upvw += 1
	end
end)
local module = {
	StepReplication = StepReplication;
}
local tbl_10 = {}
local function On(arg1) -- Line 365
	--[[ Upvalues[2]:
		[1]: tbl_15_upvr (readonly)
		[2]: tbl_4_upvr (readonly)
	]]
	tbl_15_upvr.Reliable[0] = arg1
	for _, v in tbl_4_upvr.Reliable[0] do
		arg1(table.unpack(v))
	end
	tbl_4_upvr.Reliable[0] = {}
	return function() -- Line 371
		--[[ Upvalues[2]:
			[1]: tbl_15_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if tbl_15_upvr.Reliable[0] == arg1 then
			tbl_15_upvr.Reliable[0] = nil
		end
	end
end
tbl_10.On = On
module.adminAccess = tbl_10
local tbl_11 = {}
local function Fire(arg1) -- Line 379
	--[[ Upvalues[1]:
		[1]: WriteEVENT_requestGlobalAction_upvr (readonly)
	]]
	WriteEVENT_requestGlobalAction_upvr(arg1)
end
tbl_11.Fire = Fire
module.requestGlobalAction = tbl_11
local tbl_12 = {}
local function On(arg1) -- Line 384
	--[[ Upvalues[2]:
		[1]: tbl_15_upvr (readonly)
		[2]: tbl_4_upvr (readonly)
	]]
	tbl_15_upvr.Reliable[2] = arg1
	for _, v_2 in tbl_4_upvr.Reliable[2] do
		arg1(table.unpack(v_2))
	end
	tbl_4_upvr.Reliable[2] = {}
	return function() -- Line 390
		--[[ Upvalues[2]:
			[1]: tbl_15_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if tbl_15_upvr.Reliable[2] == arg1 then
			tbl_15_upvr.Reliable[2] = nil
		end
	end
end
tbl_12.On = On
module.openVaultDoor = tbl_12
local tbl_9 = {}
local function On(arg1) -- Line 398
	--[[ Upvalues[2]:
		[1]: tbl_15_upvr (readonly)
		[2]: tbl_4_upvr (readonly)
	]]
	tbl_15_upvr.Reliable[3] = arg1
	for _, v_3 in tbl_4_upvr.Reliable[3] do
		arg1(table.unpack(v_3))
	end
	tbl_4_upvr.Reliable[3] = {}
	return function() -- Line 404
		--[[ Upvalues[2]:
			[1]: tbl_15_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if tbl_15_upvr.Reliable[3] == arg1 then
			tbl_15_upvr.Reliable[3] = nil
		end
	end
end
tbl_9.On = On
module.startSantaEvent = tbl_9
local tbl_2 = {}
local function On(arg1) -- Line 412
	--[[ Upvalues[2]:
		[1]: tbl_15_upvr (readonly)
		[2]: tbl_4_upvr (readonly)
	]]
	tbl_15_upvr.Reliable[4] = arg1
	for _, v_4 in tbl_4_upvr.Reliable[4] do
		arg1(table.unpack(v_4))
	end
	tbl_4_upvr.Reliable[4] = {}
	return function() -- Line 418
		--[[ Upvalues[2]:
			[1]: tbl_15_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if tbl_15_upvr.Reliable[4] == arg1 then
			tbl_15_upvr.Reliable[4] = nil
		end
	end
end
tbl_2.On = On
module.santaEndEvent = tbl_2
module.santaReconcile = {
	On = function(arg1) -- Line 426, Named "On"
		--[[ Upvalues[2]:
			[1]: tbl_15_upvr (readonly)
			[2]: tbl_4_upvr (readonly)
		]]
		tbl_15_upvr.Reliable[5] = arg1
		for _, v_5 in tbl_4_upvr.Reliable[5] do
			arg1(table.unpack(v_5))
		end
		tbl_4_upvr.Reliable[5] = {}
		return function() -- Line 432
			--[[ Upvalues[2]:
				[1]: tbl_15_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			if tbl_15_upvr.Reliable[5] == arg1 then
				tbl_15_upvr.Reliable[5] = nil
			end
		end
	end;
}
module.claimAdvent = {
	Fire = function(arg1) -- Line 440, Named "Fire"
		--[[ Upvalues[2]:
			[1]: Allocate_upvr (readonly)
			[2]: buffer_create_result1_3_upvw (read and write)
		]]
		local Allocate_result1 = Allocate_upvr(2)
		buffer.writeu8(buffer_create_result1_3_upvw, Allocate_result1 + 0, 6)
		buffer.writeu8(buffer_create_result1_3_upvw, Allocate_result1 + 1, arg1)
	end;
}
return table.freeze(module)