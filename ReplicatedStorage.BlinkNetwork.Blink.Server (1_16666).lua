-- Name: Server
-- Path: game:GetService("ReplicatedStorage").BlinkNetwork.Blink.Server
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.8758691000002727 seconds

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
-- Decompiled on 2026-04-10 16:51:06
-- Luau version 6, Types version 3
-- Time taken: 0.053610 seconds

local _BLINK = _G._BLINK
if not _BLINK then
	_BLINK = {}
end
_G._BLINK = _BLINK
if _G._BLINK.BLINK then
	error("[Blink]: An instance of blink is already running with the remote scope \"BLINK\". Change the remote scope of either instance to avoid conflicts.")
end
_G._BLINK.BLINK = true
local Players_upvr = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local var5_upvw = 64
local var6_upvw = 0
local var7_upvw = 0
local buffer_create_result1_4_upvw = buffer.create(64)
local tbl_8_upvw = {}
local var10_upvw = 0
local buffer_create_result1_3_upvw = buffer.create(64)
local tbl_10_upvw = {}
local var13_upvw = 0
local newproxy_result1_upvr = newproxy()
local function _(arg1) -- Line 52, Named "Read"
	--[[ Upvalues[1]:
		[1]: var10_upvw (read and write)
	]]
	var10_upvw += arg1
	return var10_upvw
end
local function _() -- Line 58, Named "Save"
	--[[ Upvalues[4]:
		[1]: var5_upvw (read and write)
		[2]: var7_upvw (read and write)
		[3]: buffer_create_result1_4_upvw (read and write)
		[4]: tbl_8_upvw (read and write)
	]]
	return {
		Size = var5_upvw;
		Cursor = var7_upvw;
		Buffer = buffer_create_result1_4_upvw;
		Instances = tbl_8_upvw;
	}
end
local function _(arg1) -- Line 67, Named "Load"
	--[[ Upvalues[5]:
		[1]: var5_upvw (read and write)
		[2]: var7_upvw (read and write)
		[3]: var6_upvw (read and write)
		[4]: buffer_create_result1_4_upvw (read and write)
		[5]: tbl_8_upvw (read and write)
	]]
	if arg1 then
		var5_upvw = arg1.Size
		var7_upvw = arg1.Cursor
		var6_upvw = arg1.Cursor
		buffer_create_result1_4_upvw = arg1.Buffer
		tbl_8_upvw = arg1.Instances
	else
		var5_upvw = 64
		var7_upvw = 0
		var6_upvw = 0
		buffer_create_result1_4_upvw = buffer.create(64)
		tbl_8_upvw = {}
	end
end
local var16_upvw = 0
local function _() -- Line 84, Named "Invoke"
	--[[ Upvalues[1]:
		[1]: var16_upvw (read and write)
	]]
	if var16_upvw == 255 then
		var16_upvw = 0
	end
	var16_upvw += 1
	return var16_upvw
end
local function Allocate_upvr(arg1) -- Line 94, Named "Allocate"
	--[[ Upvalues[4]:
		[1]: var7_upvw (read and write)
		[2]: var5_upvw (read and write)
		[3]: buffer_create_result1_4_upvw (read and write)
		[4]: var6_upvw (read and write)
	]]
	local var17 = var7_upvw + arg1
	if var5_upvw < var17 then
		while var5_upvw < var17 do
			var5_upvw *= 1.5
		end
		local buffer_create_result1_2 = buffer.create(var5_upvw)
		buffer.copy(buffer_create_result1_2, 0, buffer_create_result1_4_upvw, 0, var7_upvw)
		buffer_create_result1_4_upvw = buffer_create_result1_2
	end
	var6_upvw = var7_upvw
	var7_upvw += arg1
	return var6_upvw
end
local function _() -- Line 113, Named "CreateQueue"
	return {
		head = nil;
		tail = nil;
	}
end
local function _(arg1) -- Line 120, Named "Pop"
	local head = arg1.head
	if head == nil then return end
	arg1.head = head.next
	return head.value
end
local function _(arg1, arg2) -- Line 130, Named "Push"
	local tbl = {}
	tbl.value = arg2
	tbl.next = nil
	if arg1.tail ~= nil then
		arg1.tail.next = tbl
	end
	arg1.tail = tbl
	if arg1.head == nil then
		arg1.head = tbl
	end
end
local tbl_6_upvr = {
	Reliable = table.create(256);
	Unreliable = table.create(256);
}
local tbl_upvr = {
	Reliable = table.create(256);
	Unreliable = table.create(256);
}
local var24_upvw = '?'
local var25_upvw
tbl_upvr.Reliable[1] = table.create(256)
tbl_upvr.Reliable[6] = table.create(256)
local function _(arg1) -- Line 163, Named "WriteEVENT_adminAccess"
	--[[ Upvalues[2]:
		[1]: Allocate_upvr (readonly)
		[2]: buffer_create_result1_4_upvw (read and write)
	]]
	local Allocate_result1_4 = Allocate_upvr(2)
	local var27 = 0
	buffer.writeu8(buffer_create_result1_4_upvw, Allocate_result1_4 + 0, var27)
	if arg1 then
		var27 = 1
	else
		var27 = 0
	end
	buffer.writeu8(buffer_create_result1_4_upvw, Allocate_result1_4 + 1, var27)
end
local function ReadEVENT_requestGlobalAction_upvr() -- Line 170, Named "ReadEVENT_requestGlobalAction"
	--[[ Upvalues[2]:
		[1]: var10_upvw (read and write)
		[2]: buffer_create_result1_3_upvw (read and write)
	]]
	var10_upvw += 4
	local var28 = var10_upvw
	local module_2 = {}
	local buffer_readu16_result1_2 = buffer.readu16(buffer_create_result1_3_upvw, var28 + 0)
	var10_upvw += buffer_readu16_result1_2
	module_2.option = buffer.readstring(buffer_create_result1_3_upvw, var10_upvw, buffer_readu16_result1_2)
	local buffer_readu16_result1 = buffer.readu16(buffer_create_result1_3_upvw, var28 + 2)
	var10_upvw += buffer_readu16_result1
	module_2.input = buffer.readstring(buffer_create_result1_3_upvw, var10_upvw, buffer_readu16_result1)
	return module_2
end
local function _(arg1) -- Line 181, Named "WriteEVENT_openVaultDoor"
	--[[ Upvalues[2]:
		[1]: Allocate_upvr (readonly)
		[2]: buffer_create_result1_4_upvw (read and write)
	]]
	local Allocate_result1_6 = Allocate_upvr(2)
	local var33 = 2
	buffer.writeu8(buffer_create_result1_4_upvw, Allocate_result1_6 + 0, var33)
	if arg1 then
		var33 = 1
	else
		var33 = 0
	end
	buffer.writeu8(buffer_create_result1_4_upvw, Allocate_result1_6 + 1, var33)
end
local function _(arg1) -- Line 188, Named "WriteEVENT_startSantaEvent"
	--[[ Upvalues[4]:
		[1]: Allocate_upvr (readonly)
		[2]: buffer_create_result1_4_upvw (read and write)
		[3]: tbl_8_upvw (read and write)
		[4]: newproxy_result1_upvr (readonly)
	]]
	local var34 = Allocate_upvr(1) + 0
	buffer.writeu8(buffer_create_result1_4_upvw, var34, 3)
	if arg1 == nil then
		var34 = newproxy_result1_upvr
	else
		var34 = arg1
	end
	table.insert(tbl_8_upvw, var34)
end
local function _(arg1) -- Line 195, Named "WriteEVENT_santaEndEvent"
	--[[ Upvalues[4]:
		[1]: Allocate_upvr (readonly)
		[2]: buffer_create_result1_4_upvw (read and write)
		[3]: tbl_8_upvw (read and write)
		[4]: newproxy_result1_upvr (readonly)
	]]
	local var35 = Allocate_upvr(1) + 0
	buffer.writeu8(buffer_create_result1_4_upvw, var35, 4)
	if arg1 == nil then
		var35 = newproxy_result1_upvr
	else
		var35 = arg1
	end
	table.insert(tbl_8_upvw, var35)
end
local function _(arg1) -- Line 202, Named "WriteEVENT_santaReconcile"
	--[[ Upvalues[4]:
		[1]: Allocate_upvr (readonly)
		[2]: buffer_create_result1_4_upvw (read and write)
		[3]: tbl_8_upvw (read and write)
		[4]: newproxy_result1_upvr (readonly)
	]]
	local var36 = Allocate_upvr(1) + 0
	buffer.writeu8(buffer_create_result1_4_upvw, var36, 5)
	if arg1 == nil then
		var36 = newproxy_result1_upvr
	else
		var36 = arg1
	end
	table.insert(tbl_8_upvw, var36)
end
local function _() -- Line 209, Named "ReadEVENT_claimAdvent"
	--[[ Upvalues[2]:
		[1]: var10_upvw (read and write)
		[2]: buffer_create_result1_3_upvw (read and write)
	]]
	var10_upvw += 1
	return buffer.readu8(buffer_create_result1_3_upvw, var10_upvw + 0)
end
if not RunService:IsRunning() then
	local function var37() -- Line 217
	end
	return table.freeze({
		adminAccess = {
			Fire = var37;
			FireAll = var37;
			FireList = var37;
			FireExcept = var37;
		};
		requestGlobalAction = {
			On = var37;
		};
		openVaultDoor = {
			Fire = var37;
			FireAll = var37;
			FireList = var37;
			FireExcept = var37;
		};
		startSantaEvent = {
			Fire = var37;
			FireAll = var37;
			FireList = var37;
			FireExcept = var37;
		};
		santaEndEvent = {
			Fire = var37;
			FireAll = var37;
			FireList = var37;
			FireExcept = var37;
		};
		santaReconcile = {
			Fire = var37;
			FireAll = var37;
			FireList = var37;
			FireExcept = var37;
		};
		claimAdvent = {
			On = var37;
		};
	})
end
if not RunService:IsServer() then
	error("Server network module can only be required from the server.")
end
local BLINK_RELIABLE_REMOTE_upvw = ReplicatedStorage:FindFirstChild("BLINK_RELIABLE_REMOTE")
if not BLINK_RELIABLE_REMOTE_upvw then
	local RemoteEvent = Instance.new("RemoteEvent")
	RemoteEvent.Name = "BLINK_RELIABLE_REMOTE"
	RemoteEvent.Parent = ReplicatedStorage
	BLINK_RELIABLE_REMOTE_upvw = RemoteEvent
end
local BLINK_UNRELIABLE_REMOTE = ReplicatedStorage:FindFirstChild("BLINK_UNRELIABLE_REMOTE")
if not BLINK_UNRELIABLE_REMOTE then
	local UnreliableRemoteEvent = Instance.new("UnreliableRemoteEvent")
	UnreliableRemoteEvent.Name = "BLINK_UNRELIABLE_REMOTE"
	UnreliableRemoteEvent.Parent = ReplicatedStorage
	BLINK_UNRELIABLE_REMOTE = UnreliableRemoteEvent
end
local tbl_12_upvr = {}
Players_upvr.PlayerRemoving:Connect(function(arg1) -- Line 281
	--[[ Upvalues[1]:
		[1]: tbl_12_upvr (readonly)
	]]
	tbl_12_upvr[arg1] = nil
end)
local function StepReplication() -- Line 285
	--[[ Upvalues[2]:
		[1]: tbl_12_upvr (readonly)
		[2]: BLINK_RELIABLE_REMOTE_upvw (read and write)
	]]
	for i, v in tbl_12_upvr do
		if v.Cursor > 0 then
			local buffer_create_result1 = buffer.create(v.Cursor)
			buffer.copy(buffer_create_result1, 0, v.Buffer, 0, v.Cursor)
			BLINK_RELIABLE_REMOTE_upvw:FireClient(i, buffer_create_result1, v.Instances)
			v.Size = 64
			v.Cursor = 0
			v.Buffer = buffer.create(64)
			table.clear(v.Instances)
		end
	end
end
RunService.Heartbeat:Connect(StepReplication)
BLINK_RELIABLE_REMOTE_upvw.OnServerEvent:Connect(function(arg1, arg2, arg3) -- Line 302
	--[[ Upvalues[9]:
		[1]: var10_upvw (read and write)
		[2]: buffer_create_result1_3_upvw (read and write)
		[3]: tbl_10_upvw (read and write)
		[4]: var13_upvw (read and write)
		[5]: var25_upvw (read and write)
		[6]: var24_upvw (read and write)
		[7]: ReadEVENT_requestGlobalAction_upvr (readonly)
		[8]: tbl_6_upvr (readonly)
		[9]: tbl_upvr (readonly)
	]]
	var10_upvw = 0
	buffer_create_result1_3_upvw = arg2
	tbl_10_upvw = arg3
	var13_upvw = 0
	if var25_upvw and coroutine.status(var25_upvw) == "suspended" then
		warn(`[Blink]: Yielded in a Sync call. Event "{var24_upvw}" uses a Sync call, consider using an Async call instead.`)
		coroutine.close(var25_upvw)
	end
	var25_upvw = coroutine.running()
	while var10_upvw < buffer.len(buffer_create_result1_3_upvw) do
		var10_upvw += 1
		local buffer_readu8_result1 = buffer.readu8(buffer_create_result1_3_upvw, var10_upvw + 0)
		if buffer_readu8_result1 == 1 then
			if tbl_6_upvr.Reliable[1] ~= nil then
				var24_upvw = "requestGlobalAction"
				tbl_6_upvr.Reliable[1](arg1, ReadEVENT_requestGlobalAction_upvr())
			else
				if 256 < #tbl_upvr.Reliable[1] then
					warn("[Blink]: Event queue of \"requestGlobalAction\" exceeded 256, did you forget to implement a listener?")
				end
				local tbl_11 = {}
				tbl_11[1] = arg1
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_11[2] = ReadEVENT_requestGlobalAction_upvr()
				table.insert(tbl_upvr.Reliable[1], tbl_11)
			end
		elseif buffer_readu8_result1 == 6 then
			var10_upvw += 1
			if tbl_6_upvr.Reliable[6] ~= nil then
				var24_upvw = "claimAdvent"
				tbl_6_upvr.Reliable[6](arg1, buffer.readu8(buffer_create_result1_3_upvw, var10_upvw + 0))
			else
				if 256 < #tbl_upvr.Reliable[6] then
					warn("[Blink]: Event queue of \"claimAdvent\" exceeded 256, did you forget to implement a listener?")
				end
				local tbl_5 = {}
				tbl_5[1] = arg1
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_5[2] = buffer.readu8(buffer_create_result1_3_upvw, var10_upvw + 0)
				table.insert(tbl_upvr.Reliable[6], tbl_5)
			end
		end
	end
end)
BLINK_UNRELIABLE_REMOTE.OnServerEvent:Connect(function(arg1, arg2, arg3) -- Line 342
	--[[ Upvalues[6]:
		[1]: var10_upvw (read and write)
		[2]: buffer_create_result1_3_upvw (read and write)
		[3]: tbl_10_upvw (read and write)
		[4]: var13_upvw (read and write)
		[5]: var25_upvw (read and write)
		[6]: var24_upvw (read and write)
	]]
	var10_upvw = 0
	buffer_create_result1_3_upvw = arg2
	tbl_10_upvw = arg3
	var13_upvw = 0
	if var25_upvw and coroutine.status(var25_upvw) == "suspended" then
		warn(`[Blink]: Yielded in a Sync call. Event "{var24_upvw}" uses a Sync call, consider using an Async call instead.`)
		coroutine.close(var25_upvw)
	end
	var25_upvw = coroutine.running()
	while var10_upvw < buffer.len(buffer_create_result1_3_upvw) do
		var10_upvw += 1
	end
end)
local module = {
	StepReplication = StepReplication;
}
local tbl_2 = {}
local function Fire(arg1, arg2) -- Line 365
	--[[ Upvalues[7]:
		[1]: tbl_12_upvr (readonly)
		[2]: var5_upvw (read and write)
		[3]: var7_upvw (read and write)
		[4]: var6_upvw (read and write)
		[5]: buffer_create_result1_4_upvw (read and write)
		[6]: tbl_8_upvw (read and write)
		[7]: Allocate_upvr (readonly)
	]]
	local var62 = tbl_12_upvr[arg1]
	if var62 then
		var5_upvw = var62.Size
		var7_upvw = var62.Cursor
		var6_upvw = var62.Cursor
		buffer_create_result1_4_upvw = var62.Buffer
		tbl_8_upvw = var62.Instances
	else
		var5_upvw = 64
		var7_upvw = 0
		var6_upvw = 0
		buffer_create_result1_4_upvw = buffer.create(64)
		tbl_8_upvw = {}
	end
	local Allocate_result1_5 = Allocate_upvr(2)
	local var64 = 0
	buffer.writeu8(buffer_create_result1_4_upvw, Allocate_result1_5 + 0, var64)
	if arg2 then
		var64 = 1
	else
		var64 = 0
	end
	buffer.writeu8(buffer_create_result1_4_upvw, Allocate_result1_5 + 1, var64)
	tbl_12_upvr[arg1] = {
		Size = var5_upvw;
		Cursor = var7_upvw;
		Buffer = buffer_create_result1_4_upvw;
		Instances = tbl_8_upvw;
	}
end
tbl_2.Fire = Fire
local function FireAll(arg1) -- Line 370
	--[[ Upvalues[8]:
		[1]: var5_upvw (read and write)
		[2]: var7_upvw (read and write)
		[3]: var6_upvw (read and write)
		[4]: buffer_create_result1_4_upvw (read and write)
		[5]: tbl_8_upvw (read and write)
		[6]: Allocate_upvr (readonly)
		[7]: Players_upvr (readonly)
		[8]: tbl_12_upvr (readonly)
	]]
	var5_upvw = 64
	var7_upvw = 0
	var6_upvw = 0
	buffer_create_result1_4_upvw = buffer.create(64)
	tbl_8_upvw = {}
	local Allocate_result1_7 = Allocate_upvr(2)
	local var71 = 0
	buffer.writeu8(buffer_create_result1_4_upvw, Allocate_result1_7 + 0, var71)
	if arg1 then
		var71 = 1
	else
		var71 = 0
	end
	buffer.writeu8(buffer_create_result1_4_upvw, Allocate_result1_7 + 1, var71)
	local var72 = var7_upvw
	local var73 = tbl_8_upvw
	for _, v_2 in Players_upvr:GetPlayers() do
		local var77 = tbl_12_upvr[v_2]
		if var77 then
			var5_upvw = var77.Size
			var7_upvw = var77.Cursor
			var6_upvw = var77.Cursor
			buffer_create_result1_4_upvw = var77.Buffer
			tbl_8_upvw = var77.Instances
		else
			var5_upvw = 64
			var7_upvw = 0
			var6_upvw = 0
			buffer_create_result1_4_upvw = buffer.create(64)
			tbl_8_upvw = {}
		end
		buffer.copy(buffer_create_result1_4_upvw, Allocate_upvr(var72), buffer_create_result1_4_upvw, 0, var72)
		table.move(var73, 1, #var73, #tbl_8_upvw + 1, tbl_8_upvw)
		tbl_12_upvr[v_2] = {
			Size = var5_upvw;
			Cursor = var7_upvw;
			Buffer = buffer_create_result1_4_upvw;
			Instances = tbl_8_upvw;
		}
	end
end
tbl_2.FireAll = FireAll
local function FireList(arg1, arg2) -- Line 382
	--[[ Upvalues[7]:
		[1]: var5_upvw (read and write)
		[2]: var7_upvw (read and write)
		[3]: var6_upvw (read and write)
		[4]: buffer_create_result1_4_upvw (read and write)
		[5]: tbl_8_upvw (read and write)
		[6]: Allocate_upvr (readonly)
		[7]: tbl_12_upvr (readonly)
	]]
	var5_upvw = 64
	var7_upvw = 0
	var6_upvw = 0
	buffer_create_result1_4_upvw = buffer.create(64)
	tbl_8_upvw = {}
	local Allocate_result1_10 = Allocate_upvr(2)
	local var84 = 0
	buffer.writeu8(buffer_create_result1_4_upvw, Allocate_result1_10 + 0, var84)
	if arg2 then
		var84 = 1
	else
		var84 = 0
	end
	buffer.writeu8(buffer_create_result1_4_upvw, Allocate_result1_10 + 1, var84)
	local var85 = var7_upvw
	local var86 = tbl_8_upvw
	for _, v_3 in arg1 do
		local var87 = tbl_12_upvr[v_3]
		if var87 then
			var5_upvw = var87.Size
			var7_upvw = var87.Cursor
			var6_upvw = var87.Cursor
			buffer_create_result1_4_upvw = var87.Buffer
			tbl_8_upvw = var87.Instances
		else
			var5_upvw = 64
			var7_upvw = 0
			var6_upvw = 0
			buffer_create_result1_4_upvw = buffer.create(64)
			tbl_8_upvw = {}
		end
		buffer.copy(buffer_create_result1_4_upvw, Allocate_upvr(var85), buffer_create_result1_4_upvw, 0, var85)
		table.move(var86, 1, #var86, #tbl_8_upvw + 1, tbl_8_upvw)
		tbl_12_upvr[v_3] = {
			Size = var5_upvw;
			Cursor = var7_upvw;
			Buffer = buffer_create_result1_4_upvw;
			Instances = tbl_8_upvw;
		}
	end
end
tbl_2.FireList = FireList
local function FireExcept(arg1, arg2) -- Line 394
	--[[ Upvalues[8]:
		[1]: var5_upvw (read and write)
		[2]: var7_upvw (read and write)
		[3]: var6_upvw (read and write)
		[4]: buffer_create_result1_4_upvw (read and write)
		[5]: tbl_8_upvw (read and write)
		[6]: Allocate_upvr (readonly)
		[7]: Players_upvr (readonly)
		[8]: tbl_12_upvr (readonly)
	]]
	var5_upvw = 64
	var7_upvw = 0
	var6_upvw = 0
	buffer_create_result1_4_upvw = buffer.create(64)
	tbl_8_upvw = {}
	local Allocate_result1_9 = Allocate_upvr(2)
	local var94 = 0
	buffer.writeu8(buffer_create_result1_4_upvw, Allocate_result1_9 + 0, var94)
	if arg2 then
		var94 = 1
	else
		var94 = 0
	end
	buffer.writeu8(buffer_create_result1_4_upvw, Allocate_result1_9 + 1, var94)
	local var95 = var7_upvw
	local var96 = tbl_8_upvw
	for _, v_4 in Players_upvr:GetPlayers() do
		if v_4 ~= arg1 then
			local var100 = tbl_12_upvr[v_4]
			if var100 then
				var5_upvw = var100.Size
				var7_upvw = var100.Cursor
				var6_upvw = var100.Cursor
				buffer_create_result1_4_upvw = var100.Buffer
				tbl_8_upvw = var100.Instances
			else
				var5_upvw = 64
				var7_upvw = 0
				var6_upvw = 0
				buffer_create_result1_4_upvw = buffer.create(64)
				tbl_8_upvw = {}
			end
			buffer.copy(buffer_create_result1_4_upvw, Allocate_upvr(var95), buffer_create_result1_4_upvw, 0, var95)
			table.move(var96, 1, #var96, #tbl_8_upvw + 1, tbl_8_upvw)
			tbl_12_upvr[v_4] = {
				Size = var5_upvw;
				Cursor = var7_upvw;
				Buffer = buffer_create_result1_4_upvw;
				Instances = tbl_8_upvw;
			}
		end
	end
end
tbl_2.FireExcept = FireExcept
module.adminAccess = tbl_2
local tbl_9 = {}
local function On(arg1) -- Line 411
	--[[ Upvalues[2]:
		[1]: tbl_6_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	tbl_6_upvr.Reliable[1] = arg1
	for _, v_5 in tbl_upvr.Reliable[1] do
		arg1(table.unpack(v_5))
	end
	tbl_upvr.Reliable[1] = {}
	return function() -- Line 417
		--[[ Upvalues[2]:
			[1]: tbl_6_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if tbl_6_upvr.Reliable[1] == arg1 then
			tbl_6_upvr.Reliable[1] = nil
		end
	end
end
tbl_9.On = On
module.requestGlobalAction = tbl_9
local tbl_7 = {}
local function Fire(arg1, arg2) -- Line 425
	--[[ Upvalues[7]:
		[1]: tbl_12_upvr (readonly)
		[2]: var5_upvw (read and write)
		[3]: var7_upvw (read and write)
		[4]: var6_upvw (read and write)
		[5]: buffer_create_result1_4_upvw (read and write)
		[6]: tbl_8_upvw (read and write)
		[7]: Allocate_upvr (readonly)
	]]
	local var107 = tbl_12_upvr[arg1]
	if var107 then
		var5_upvw = var107.Size
		var7_upvw = var107.Cursor
		var6_upvw = var107.Cursor
		buffer_create_result1_4_upvw = var107.Buffer
		tbl_8_upvw = var107.Instances
	else
		var5_upvw = 64
		var7_upvw = 0
		var6_upvw = 0
		buffer_create_result1_4_upvw = buffer.create(64)
		tbl_8_upvw = {}
	end
	local Allocate_result1_2 = Allocate_upvr(2)
	local var109 = 2
	buffer.writeu8(buffer_create_result1_4_upvw, Allocate_result1_2 + 0, var109)
	if arg2 then
		var109 = 1
	else
		var109 = 0
	end
	buffer.writeu8(buffer_create_result1_4_upvw, Allocate_result1_2 + 1, var109)
	tbl_12_upvr[arg1] = {
		Size = var5_upvw;
		Cursor = var7_upvw;
		Buffer = buffer_create_result1_4_upvw;
		Instances = tbl_8_upvw;
	}
end
tbl_7.Fire = Fire
local function FireAll(arg1) -- Line 430
	--[[ Upvalues[8]:
		[1]: var5_upvw (read and write)
		[2]: var7_upvw (read and write)
		[3]: var6_upvw (read and write)
		[4]: buffer_create_result1_4_upvw (read and write)
		[5]: tbl_8_upvw (read and write)
		[6]: Allocate_upvr (readonly)
		[7]: Players_upvr (readonly)
		[8]: tbl_12_upvr (readonly)
	]]
	var5_upvw = 64
	var7_upvw = 0
	var6_upvw = 0
	buffer_create_result1_4_upvw = buffer.create(64)
	tbl_8_upvw = {}
	local Allocate_result1 = Allocate_upvr(2)
	local var116 = 2
	buffer.writeu8(buffer_create_result1_4_upvw, Allocate_result1 + 0, var116)
	if arg1 then
		var116 = 1
	else
		var116 = 0
	end
	buffer.writeu8(buffer_create_result1_4_upvw, Allocate_result1 + 1, var116)
	local var117 = var7_upvw
	local var118 = tbl_8_upvw
	for _, v_6 in Players_upvr:GetPlayers() do
		local var122 = tbl_12_upvr[v_6]
		if var122 then
			var5_upvw = var122.Size
			var7_upvw = var122.Cursor
			var6_upvw = var122.Cursor
			buffer_create_result1_4_upvw = var122.Buffer
			tbl_8_upvw = var122.Instances
		else
			var5_upvw = 64
			var7_upvw = 0
			var6_upvw = 0
			buffer_create_result1_4_upvw = buffer.create(64)
			tbl_8_upvw = {}
		end
		buffer.copy(buffer_create_result1_4_upvw, Allocate_upvr(var117), buffer_create_result1_4_upvw, 0, var117)
		table.move(var118, 1, #var118, #tbl_8_upvw + 1, tbl_8_upvw)
		tbl_12_upvr[v_6] = {
			Size = var5_upvw;
			Cursor = var7_upvw;
			Buffer = buffer_create_result1_4_upvw;
			Instances = tbl_8_upvw;
		}
	end
end
tbl_7.FireAll = FireAll
local function FireList(arg1, arg2) -- Line 442
	--[[ Upvalues[7]:
		[1]: var5_upvw (read and write)
		[2]: var7_upvw (read and write)
		[3]: var6_upvw (read and write)
		[4]: buffer_create_result1_4_upvw (read and write)
		[5]: tbl_8_upvw (read and write)
		[6]: Allocate_upvr (readonly)
		[7]: tbl_12_upvr (readonly)
	]]
	var5_upvw = 64
	var7_upvw = 0
	var6_upvw = 0
	buffer_create_result1_4_upvw = buffer.create(64)
	tbl_8_upvw = {}
	local Allocate_result1_8 = Allocate_upvr(2)
	local var129 = 2
	buffer.writeu8(buffer_create_result1_4_upvw, Allocate_result1_8 + 0, var129)
	if arg2 then
		var129 = 1
	else
		var129 = 0
	end
	buffer.writeu8(buffer_create_result1_4_upvw, Allocate_result1_8 + 1, var129)
	local var130 = var7_upvw
	local var131 = tbl_8_upvw
	for _, v_7 in arg1 do
		local var132 = tbl_12_upvr[v_7]
		if var132 then
			var5_upvw = var132.Size
			var7_upvw = var132.Cursor
			var6_upvw = var132.Cursor
			buffer_create_result1_4_upvw = var132.Buffer
			tbl_8_upvw = var132.Instances
		else
			var5_upvw = 64
			var7_upvw = 0
			var6_upvw = 0
			buffer_create_result1_4_upvw = buffer.create(64)
			tbl_8_upvw = {}
		end
		buffer.copy(buffer_create_result1_4_upvw, Allocate_upvr(var130), buffer_create_result1_4_upvw, 0, var130)
		table.move(var131, 1, #var131, #tbl_8_upvw + 1, tbl_8_upvw)
		tbl_12_upvr[v_7] = {
			Size = var5_upvw;
			Cursor = var7_upvw;
			Buffer = buffer_create_result1_4_upvw;
			Instances = tbl_8_upvw;
		}
	end
end
tbl_7.FireList = FireList
local function FireExcept(arg1, arg2) -- Line 454
	--[[ Upvalues[8]:
		[1]: var5_upvw (read and write)
		[2]: var7_upvw (read and write)
		[3]: var6_upvw (read and write)
		[4]: buffer_create_result1_4_upvw (read and write)
		[5]: tbl_8_upvw (read and write)
		[6]: Allocate_upvr (readonly)
		[7]: Players_upvr (readonly)
		[8]: tbl_12_upvr (readonly)
	]]
	var5_upvw = 64
	var7_upvw = 0
	var6_upvw = 0
	buffer_create_result1_4_upvw = buffer.create(64)
	tbl_8_upvw = {}
	local Allocate_result1_3 = Allocate_upvr(2)
	local var139 = 2
	buffer.writeu8(buffer_create_result1_4_upvw, Allocate_result1_3 + 0, var139)
	if arg2 then
		var139 = 1
	else
		var139 = 0
	end
	buffer.writeu8(buffer_create_result1_4_upvw, Allocate_result1_3 + 1, var139)
	local var140 = var7_upvw
	local var141 = tbl_8_upvw
	for _, v_8 in Players_upvr:GetPlayers() do
		if v_8 ~= arg1 then
			local var145 = tbl_12_upvr[v_8]
			if var145 then
				var5_upvw = var145.Size
				var7_upvw = var145.Cursor
				var6_upvw = var145.Cursor
				buffer_create_result1_4_upvw = var145.Buffer
				tbl_8_upvw = var145.Instances
			else
				var5_upvw = 64
				var7_upvw = 0
				var6_upvw = 0
				buffer_create_result1_4_upvw = buffer.create(64)
				tbl_8_upvw = {}
			end
			buffer.copy(buffer_create_result1_4_upvw, Allocate_upvr(var140), buffer_create_result1_4_upvw, 0, var140)
			table.move(var141, 1, #var141, #tbl_8_upvw + 1, tbl_8_upvw)
			tbl_12_upvr[v_8] = {
				Size = var5_upvw;
				Cursor = var7_upvw;
				Buffer = buffer_create_result1_4_upvw;
				Instances = tbl_8_upvw;
			}
		end
	end
end
tbl_7.FireExcept = FireExcept
module.openVaultDoor = tbl_7
local tbl_3 = {}
local function Fire(arg1, arg2) -- Line 471
	--[[ Upvalues[8]:
		[1]: tbl_12_upvr (readonly)
		[2]: var5_upvw (read and write)
		[3]: var7_upvw (read and write)
		[4]: var6_upvw (read and write)
		[5]: buffer_create_result1_4_upvw (read and write)
		[6]: tbl_8_upvw (read and write)
		[7]: Allocate_upvr (readonly)
		[8]: newproxy_result1_upvr (readonly)
	]]
	local var148 = tbl_12_upvr[arg1]
	if var148 then
		var5_upvw = var148.Size
		var7_upvw = var148.Cursor
		var6_upvw = var148.Cursor
		buffer_create_result1_4_upvw = var148.Buffer
		tbl_8_upvw = var148.Instances
	else
		var5_upvw = 64
		var7_upvw = 0
		var6_upvw = 0
		buffer_create_result1_4_upvw = buffer.create(64)
		tbl_8_upvw = {}
	end
	local var149 = Allocate_upvr(1) + 0
	buffer.writeu8(buffer_create_result1_4_upvw, var149, 3)
	if arg2 == nil then
		var149 = newproxy_result1_upvr
	else
		var149 = arg2
	end
	table.insert(tbl_8_upvw, var149)
	tbl_12_upvr[arg1] = {
		Size = var5_upvw;
		Cursor = var7_upvw;
		Buffer = buffer_create_result1_4_upvw;
		Instances = tbl_8_upvw;
	}
end
tbl_3.Fire = Fire
local function FireAll(arg1) -- Line 476
	--[[ Upvalues[9]:
		[1]: var5_upvw (read and write)
		[2]: var7_upvw (read and write)
		[3]: var6_upvw (read and write)
		[4]: buffer_create_result1_4_upvw (read and write)
		[5]: tbl_8_upvw (read and write)
		[6]: Allocate_upvr (readonly)
		[7]: newproxy_result1_upvr (readonly)
		[8]: Players_upvr (readonly)
		[9]: tbl_12_upvr (readonly)
	]]
	var5_upvw = 64
	var7_upvw = 0
	var6_upvw = 0
	buffer_create_result1_4_upvw = buffer.create(64)
	tbl_8_upvw = {}
	local var155 = Allocate_upvr(1) + 0
	buffer.writeu8(buffer_create_result1_4_upvw, var155, 3)
	if arg1 == nil then
		var155 = newproxy_result1_upvr
	else
		var155 = arg1
	end
	table.insert(tbl_8_upvw, var155)
	local var156 = var7_upvw
	local var157 = tbl_8_upvw
	for _, v_9 in Players_upvr:GetPlayers() do
		local var161 = tbl_12_upvr[v_9]
		if var161 then
			var5_upvw = var161.Size
			var7_upvw = var161.Cursor
			var6_upvw = var161.Cursor
			buffer_create_result1_4_upvw = var161.Buffer
			tbl_8_upvw = var161.Instances
		else
			var5_upvw = 64
			var7_upvw = 0
			var6_upvw = 0
			buffer_create_result1_4_upvw = buffer.create(64)
			tbl_8_upvw = {}
		end
		buffer.copy(buffer_create_result1_4_upvw, Allocate_upvr(var156), buffer_create_result1_4_upvw, 0, var156)
		table.move(var157, 1, #var157, #tbl_8_upvw + 1, tbl_8_upvw)
		tbl_12_upvr[v_9] = {
			Size = var5_upvw;
			Cursor = var7_upvw;
			Buffer = buffer_create_result1_4_upvw;
			Instances = tbl_8_upvw;
		}
	end
end
tbl_3.FireAll = FireAll
local function FireList(arg1, arg2) -- Line 488
	--[[ Upvalues[8]:
		[1]: var5_upvw (read and write)
		[2]: var7_upvw (read and write)
		[3]: var6_upvw (read and write)
		[4]: buffer_create_result1_4_upvw (read and write)
		[5]: tbl_8_upvw (read and write)
		[6]: Allocate_upvr (readonly)
		[7]: newproxy_result1_upvr (readonly)
		[8]: tbl_12_upvr (readonly)
	]]
	var5_upvw = 64
	var7_upvw = 0
	var6_upvw = 0
	buffer_create_result1_4_upvw = buffer.create(64)
	tbl_8_upvw = {}
	local var167 = Allocate_upvr(1) + 0
	buffer.writeu8(buffer_create_result1_4_upvw, var167, 3)
	if arg2 == nil then
		var167 = newproxy_result1_upvr
	else
		var167 = arg2
	end
	table.insert(tbl_8_upvw, var167)
	local var168 = var7_upvw
	local var169 = tbl_8_upvw
	for _, v_10 in arg1 do
		local var170 = tbl_12_upvr[v_10]
		if var170 then
			var5_upvw = var170.Size
			var7_upvw = var170.Cursor
			var6_upvw = var170.Cursor
			buffer_create_result1_4_upvw = var170.Buffer
			tbl_8_upvw = var170.Instances
		else
			var5_upvw = 64
			var7_upvw = 0
			var6_upvw = 0
			buffer_create_result1_4_upvw = buffer.create(64)
			tbl_8_upvw = {}
		end
		buffer.copy(buffer_create_result1_4_upvw, Allocate_upvr(var168), buffer_create_result1_4_upvw, 0, var168)
		table.move(var169, 1, #var169, #tbl_8_upvw + 1, tbl_8_upvw)
		tbl_12_upvr[v_10] = {
			Size = var5_upvw;
			Cursor = var7_upvw;
			Buffer = buffer_create_result1_4_upvw;
			Instances = tbl_8_upvw;
		}
	end
end
tbl_3.FireList = FireList
local function FireExcept(arg1, arg2) -- Line 500
	--[[ Upvalues[9]:
		[1]: var5_upvw (read and write)
		[2]: var7_upvw (read and write)
		[3]: var6_upvw (read and write)
		[4]: buffer_create_result1_4_upvw (read and write)
		[5]: tbl_8_upvw (read and write)
		[6]: Allocate_upvr (readonly)
		[7]: newproxy_result1_upvr (readonly)
		[8]: Players_upvr (readonly)
		[9]: tbl_12_upvr (readonly)
	]]
	var5_upvw = 64
	var7_upvw = 0
	var6_upvw = 0
	buffer_create_result1_4_upvw = buffer.create(64)
	tbl_8_upvw = {}
	local var176 = Allocate_upvr(1) + 0
	buffer.writeu8(buffer_create_result1_4_upvw, var176, 3)
	if arg2 == nil then
		var176 = newproxy_result1_upvr
	else
		var176 = arg2
	end
	table.insert(tbl_8_upvw, var176)
	local var177 = var7_upvw
	local var178 = tbl_8_upvw
	for _, v_11 in Players_upvr:GetPlayers() do
		if v_11 ~= arg1 then
			local var182 = tbl_12_upvr[v_11]
			if var182 then
				var5_upvw = var182.Size
				var7_upvw = var182.Cursor
				var6_upvw = var182.Cursor
				buffer_create_result1_4_upvw = var182.Buffer
				tbl_8_upvw = var182.Instances
			else
				var5_upvw = 64
				var7_upvw = 0
				var6_upvw = 0
				buffer_create_result1_4_upvw = buffer.create(64)
				tbl_8_upvw = {}
			end
			buffer.copy(buffer_create_result1_4_upvw, Allocate_upvr(var177), buffer_create_result1_4_upvw, 0, var177)
			table.move(var178, 1, #var178, #tbl_8_upvw + 1, tbl_8_upvw)
			tbl_12_upvr[v_11] = {
				Size = var5_upvw;
				Cursor = var7_upvw;
				Buffer = buffer_create_result1_4_upvw;
				Instances = tbl_8_upvw;
			}
		end
	end
end
tbl_3.FireExcept = FireExcept
module.startSantaEvent = tbl_3
local tbl_4 = {}
local function Fire(arg1, arg2) -- Line 517
	--[[ Upvalues[8]:
		[1]: tbl_12_upvr (readonly)
		[2]: var5_upvw (read and write)
		[3]: var7_upvw (read and write)
		[4]: var6_upvw (read and write)
		[5]: buffer_create_result1_4_upvw (read and write)
		[6]: tbl_8_upvw (read and write)
		[7]: Allocate_upvr (readonly)
		[8]: newproxy_result1_upvr (readonly)
	]]
	local var185 = tbl_12_upvr[arg1]
	if var185 then
		var5_upvw = var185.Size
		var7_upvw = var185.Cursor
		var6_upvw = var185.Cursor
		buffer_create_result1_4_upvw = var185.Buffer
		tbl_8_upvw = var185.Instances
	else
		var5_upvw = 64
		var7_upvw = 0
		var6_upvw = 0
		buffer_create_result1_4_upvw = buffer.create(64)
		tbl_8_upvw = {}
	end
	local var186 = Allocate_upvr(1) + 0
	buffer.writeu8(buffer_create_result1_4_upvw, var186, 4)
	if arg2 == nil then
		var186 = newproxy_result1_upvr
	else
		var186 = arg2
	end
	table.insert(tbl_8_upvw, var186)
	tbl_12_upvr[arg1] = {
		Size = var5_upvw;
		Cursor = var7_upvw;
		Buffer = buffer_create_result1_4_upvw;
		Instances = tbl_8_upvw;
	}
end
tbl_4.Fire = Fire
local function FireAll(arg1) -- Line 522
	--[[ Upvalues[9]:
		[1]: var5_upvw (read and write)
		[2]: var7_upvw (read and write)
		[3]: var6_upvw (read and write)
		[4]: buffer_create_result1_4_upvw (read and write)
		[5]: tbl_8_upvw (read and write)
		[6]: Allocate_upvr (readonly)
		[7]: newproxy_result1_upvr (readonly)
		[8]: Players_upvr (readonly)
		[9]: tbl_12_upvr (readonly)
	]]
	var5_upvw = 64
	var7_upvw = 0
	var6_upvw = 0
	buffer_create_result1_4_upvw = buffer.create(64)
	tbl_8_upvw = {}
	local var192 = Allocate_upvr(1) + 0
	buffer.writeu8(buffer_create_result1_4_upvw, var192, 4)
	if arg1 == nil then
		var192 = newproxy_result1_upvr
	else
		var192 = arg1
	end
	table.insert(tbl_8_upvw, var192)
	local var193 = var7_upvw
	local var194 = tbl_8_upvw
	for _, v_12 in Players_upvr:GetPlayers() do
		local var198 = tbl_12_upvr[v_12]
		if var198 then
			var5_upvw = var198.Size
			var7_upvw = var198.Cursor
			var6_upvw = var198.Cursor
			buffer_create_result1_4_upvw = var198.Buffer
			tbl_8_upvw = var198.Instances
		else
			var5_upvw = 64
			var7_upvw = 0
			var6_upvw = 0
			buffer_create_result1_4_upvw = buffer.create(64)
			tbl_8_upvw = {}
		end
		buffer.copy(buffer_create_result1_4_upvw, Allocate_upvr(var193), buffer_create_result1_4_upvw, 0, var193)
		table.move(var194, 1, #var194, #tbl_8_upvw + 1, tbl_8_upvw)
		tbl_12_upvr[v_12] = {
			Size = var5_upvw;
			Cursor = var7_upvw;
			Buffer = buffer_create_result1_4_upvw;
			Instances = tbl_8_upvw;
		}
	end
end
tbl_4.FireAll = FireAll
local function FireList(arg1, arg2) -- Line 534
	--[[ Upvalues[8]:
		[1]: var5_upvw (read and write)
		[2]: var7_upvw (read and write)
		[3]: var6_upvw (read and write)
		[4]: buffer_create_result1_4_upvw (read and write)
		[5]: tbl_8_upvw (read and write)
		[6]: Allocate_upvr (readonly)
		[7]: newproxy_result1_upvr (readonly)
		[8]: tbl_12_upvr (readonly)
	]]
	var5_upvw = 64
	var7_upvw = 0
	var6_upvw = 0
	buffer_create_result1_4_upvw = buffer.create(64)
	tbl_8_upvw = {}
	local var204 = Allocate_upvr(1) + 0
	buffer.writeu8(buffer_create_result1_4_upvw, var204, 4)
	if arg2 == nil then
		var204 = newproxy_result1_upvr
	else
		var204 = arg2
	end
	table.insert(tbl_8_upvw, var204)
	local var205 = var7_upvw
	local var206 = tbl_8_upvw
	for _, v_13 in arg1 do
		local var207 = tbl_12_upvr[v_13]
		if var207 then
			var5_upvw = var207.Size
			var7_upvw = var207.Cursor
			var6_upvw = var207.Cursor
			buffer_create_result1_4_upvw = var207.Buffer
			tbl_8_upvw = var207.Instances
		else
			var5_upvw = 64
			var7_upvw = 0
			var6_upvw = 0
			buffer_create_result1_4_upvw = buffer.create(64)
			tbl_8_upvw = {}
		end
		buffer.copy(buffer_create_result1_4_upvw, Allocate_upvr(var205), buffer_create_result1_4_upvw, 0, var205)
		table.move(var206, 1, #var206, #tbl_8_upvw + 1, tbl_8_upvw)
		tbl_12_upvr[v_13] = {
			Size = var5_upvw;
			Cursor = var7_upvw;
			Buffer = buffer_create_result1_4_upvw;
			Instances = tbl_8_upvw;
		}
	end
end
tbl_4.FireList = FireList
local function FireExcept(arg1, arg2) -- Line 546
	--[[ Upvalues[9]:
		[1]: var5_upvw (read and write)
		[2]: var7_upvw (read and write)
		[3]: var6_upvw (read and write)
		[4]: buffer_create_result1_4_upvw (read and write)
		[5]: tbl_8_upvw (read and write)
		[6]: Allocate_upvr (readonly)
		[7]: newproxy_result1_upvr (readonly)
		[8]: Players_upvr (readonly)
		[9]: tbl_12_upvr (readonly)
	]]
	var5_upvw = 64
	var7_upvw = 0
	var6_upvw = 0
	buffer_create_result1_4_upvw = buffer.create(64)
	tbl_8_upvw = {}
	local var213 = Allocate_upvr(1) + 0
	buffer.writeu8(buffer_create_result1_4_upvw, var213, 4)
	if arg2 == nil then
		var213 = newproxy_result1_upvr
	else
		var213 = arg2
	end
	table.insert(tbl_8_upvw, var213)
	local var214 = var7_upvw
	local var215 = tbl_8_upvw
	for _, v_14 in Players_upvr:GetPlayers() do
		if v_14 ~= arg1 then
			local var219 = tbl_12_upvr[v_14]
			if var219 then
				var5_upvw = var219.Size
				var7_upvw = var219.Cursor
				var6_upvw = var219.Cursor
				buffer_create_result1_4_upvw = var219.Buffer
				tbl_8_upvw = var219.Instances
			else
				var5_upvw = 64
				var7_upvw = 0
				var6_upvw = 0
				buffer_create_result1_4_upvw = buffer.create(64)
				tbl_8_upvw = {}
			end
			buffer.copy(buffer_create_result1_4_upvw, Allocate_upvr(var214), buffer_create_result1_4_upvw, 0, var214)
			table.move(var215, 1, #var215, #tbl_8_upvw + 1, tbl_8_upvw)
			tbl_12_upvr[v_14] = {
				Size = var5_upvw;
				Cursor = var7_upvw;
				Buffer = buffer_create_result1_4_upvw;
				Instances = tbl_8_upvw;
			}
		end
	end
end
tbl_4.FireExcept = FireExcept
module.santaEndEvent = tbl_4
module.santaReconcile = {
	Fire = function(arg1, arg2) -- Line 563, Named "Fire"
		--[[ Upvalues[8]:
			[1]: tbl_12_upvr (readonly)
			[2]: var5_upvw (read and write)
			[3]: var7_upvw (read and write)
			[4]: var6_upvw (read and write)
			[5]: buffer_create_result1_4_upvw (read and write)
			[6]: tbl_8_upvw (read and write)
			[7]: Allocate_upvr (readonly)
			[8]: newproxy_result1_upvr (readonly)
		]]
		local var222 = tbl_12_upvr[arg1]
		if var222 then
			var5_upvw = var222.Size
			var7_upvw = var222.Cursor
			var6_upvw = var222.Cursor
			buffer_create_result1_4_upvw = var222.Buffer
			tbl_8_upvw = var222.Instances
		else
			var5_upvw = 64
			var7_upvw = 0
			var6_upvw = 0
			buffer_create_result1_4_upvw = buffer.create(64)
			tbl_8_upvw = {}
		end
		local var223 = Allocate_upvr(1) + 0
		buffer.writeu8(buffer_create_result1_4_upvw, var223, 5)
		if arg2 == nil then
			var223 = newproxy_result1_upvr
		else
			var223 = arg2
		end
		table.insert(tbl_8_upvw, var223)
		tbl_12_upvr[arg1] = {
			Size = var5_upvw;
			Cursor = var7_upvw;
			Buffer = buffer_create_result1_4_upvw;
			Instances = tbl_8_upvw;
		}
	end;
	FireAll = function(arg1) -- Line 568, Named "FireAll"
		--[[ Upvalues[9]:
			[1]: var5_upvw (read and write)
			[2]: var7_upvw (read and write)
			[3]: var6_upvw (read and write)
			[4]: buffer_create_result1_4_upvw (read and write)
			[5]: tbl_8_upvw (read and write)
			[6]: Allocate_upvr (readonly)
			[7]: newproxy_result1_upvr (readonly)
			[8]: Players_upvr (readonly)
			[9]: tbl_12_upvr (readonly)
		]]
		var5_upvw = 64
		var7_upvw = 0
		var6_upvw = 0
		buffer_create_result1_4_upvw = buffer.create(64)
		tbl_8_upvw = {}
		local var229 = Allocate_upvr(1) + 0
		buffer.writeu8(buffer_create_result1_4_upvw, var229, 5)
		if arg1 == nil then
			var229 = newproxy_result1_upvr
		else
			var229 = arg1
		end
		table.insert(tbl_8_upvw, var229)
		local var230 = var7_upvw
		local var231 = tbl_8_upvw
		for _, v_15 in Players_upvr:GetPlayers() do
			local var235 = tbl_12_upvr[v_15]
			if var235 then
				var5_upvw = var235.Size
				var7_upvw = var235.Cursor
				var6_upvw = var235.Cursor
				buffer_create_result1_4_upvw = var235.Buffer
				tbl_8_upvw = var235.Instances
			else
				var5_upvw = 64
				var7_upvw = 0
				var6_upvw = 0
				buffer_create_result1_4_upvw = buffer.create(64)
				tbl_8_upvw = {}
			end
			buffer.copy(buffer_create_result1_4_upvw, Allocate_upvr(var230), buffer_create_result1_4_upvw, 0, var230)
			table.move(var231, 1, #var231, #tbl_8_upvw + 1, tbl_8_upvw)
			tbl_12_upvr[v_15] = {
				Size = var5_upvw;
				Cursor = var7_upvw;
				Buffer = buffer_create_result1_4_upvw;
				Instances = tbl_8_upvw;
			}
		end
	end;
	FireList = function(arg1, arg2) -- Line 580, Named "FireList"
		--[[ Upvalues[8]:
			[1]: var5_upvw (read and write)
			[2]: var7_upvw (read and write)
			[3]: var6_upvw (read and write)
			[4]: buffer_create_result1_4_upvw (read and write)
			[5]: tbl_8_upvw (read and write)
			[6]: Allocate_upvr (readonly)
			[7]: newproxy_result1_upvr (readonly)
			[8]: tbl_12_upvr (readonly)
		]]
		var5_upvw = 64
		var7_upvw = 0
		var6_upvw = 0
		buffer_create_result1_4_upvw = buffer.create(64)
		tbl_8_upvw = {}
		local var241 = Allocate_upvr(1) + 0
		buffer.writeu8(buffer_create_result1_4_upvw, var241, 5)
		if arg2 == nil then
			var241 = newproxy_result1_upvr
		else
			var241 = arg2
		end
		table.insert(tbl_8_upvw, var241)
		local var242 = var7_upvw
		local var243 = tbl_8_upvw
		for _, v_16 in arg1 do
			local var244 = tbl_12_upvr[v_16]
			if var244 then
				var5_upvw = var244.Size
				var7_upvw = var244.Cursor
				var6_upvw = var244.Cursor
				buffer_create_result1_4_upvw = var244.Buffer
				tbl_8_upvw = var244.Instances
			else
				var5_upvw = 64
				var7_upvw = 0
				var6_upvw = 0
				buffer_create_result1_4_upvw = buffer.create(64)
				tbl_8_upvw = {}
			end
			buffer.copy(buffer_create_result1_4_upvw, Allocate_upvr(var242), buffer_create_result1_4_upvw, 0, var242)
			table.move(var243, 1, #var243, #tbl_8_upvw + 1, tbl_8_upvw)
			tbl_12_upvr[v_16] = {
				Size = var5_upvw;
				Cursor = var7_upvw;
				Buffer = buffer_create_result1_4_upvw;
				Instances = tbl_8_upvw;
			}
		end
	end;
	FireExcept = function(arg1, arg2) -- Line 592, Named "FireExcept"
		--[[ Upvalues[9]:
			[1]: var5_upvw (read and write)
			[2]: var7_upvw (read and write)
			[3]: var6_upvw (read and write)
			[4]: buffer_create_result1_4_upvw (read and write)
			[5]: tbl_8_upvw (read and write)
			[6]: Allocate_upvr (readonly)
			[7]: newproxy_result1_upvr (readonly)
			[8]: Players_upvr (readonly)
			[9]: tbl_12_upvr (readonly)
		]]
		var5_upvw = 64
		var7_upvw = 0
		var6_upvw = 0
		buffer_create_result1_4_upvw = buffer.create(64)
		tbl_8_upvw = {}
		local var250 = Allocate_upvr(1) + 0
		buffer.writeu8(buffer_create_result1_4_upvw, var250, 5)
		if arg2 == nil then
			var250 = newproxy_result1_upvr
		else
			var250 = arg2
		end
		table.insert(tbl_8_upvw, var250)
		local var251 = var7_upvw
		local var252 = tbl_8_upvw
		for _, v_17 in Players_upvr:GetPlayers() do
			if v_17 ~= arg1 then
				local var256 = tbl_12_upvr[v_17]
				if var256 then
					var5_upvw = var256.Size
					var7_upvw = var256.Cursor
					var6_upvw = var256.Cursor
					buffer_create_result1_4_upvw = var256.Buffer
					tbl_8_upvw = var256.Instances
				else
					var5_upvw = 64
					var7_upvw = 0
					var6_upvw = 0
					buffer_create_result1_4_upvw = buffer.create(64)
					tbl_8_upvw = {}
				end
				buffer.copy(buffer_create_result1_4_upvw, Allocate_upvr(var251), buffer_create_result1_4_upvw, 0, var251)
				table.move(var252, 1, #var252, #tbl_8_upvw + 1, tbl_8_upvw)
				tbl_12_upvr[v_17] = {
					Size = var5_upvw;
					Cursor = var7_upvw;
					Buffer = buffer_create_result1_4_upvw;
					Instances = tbl_8_upvw;
				}
			end
		end
	end;
}
module.claimAdvent = {
	On = function(arg1) -- Line 609, Named "On"
		--[[ Upvalues[2]:
			[1]: tbl_6_upvr (readonly)
			[2]: tbl_upvr (readonly)
		]]
		tbl_6_upvr.Reliable[6] = arg1
		for _, v_18 in tbl_upvr.Reliable[6] do
			arg1(table.unpack(v_18))
		end
		tbl_upvr.Reliable[6] = {}
		return function() -- Line 615
			--[[ Upvalues[2]:
				[1]: tbl_6_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			if tbl_6_upvr.Reliable[6] == arg1 then
				tbl_6_upvr.Reliable[6] = nil
			end
		end
	end;
}
return table.freeze(module)