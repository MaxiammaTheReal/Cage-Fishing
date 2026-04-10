-- Name: SantaClient
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.SantaClient
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5491347999995924 seconds

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
-- Decompiled on 2026-04-10 16:49:55
-- Luau version 6, Types version 3
-- Time taken: 0.007389 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Client = require(ReplicatedStorage.BlinkNetwork.Blink.Client)
local var3_upvw
local var4_upvw
local var5_upvw
local var6_upvw
local var7_upvw
local cframe_upvr = CFrame.Angles(0, (math.pi/2), 0)
local function _(arg1, arg2, arg3, arg4) -- Line 26, Named "calculateBezierPosition"
	return (1 - arg4) ^ 2 * arg1 + (1 - arg4) * 2 * arg4 * arg2 + arg4 ^ 2 * arg3
end
local function _(arg1, arg2, arg3, arg4, arg5) -- Line 34, Named "cubicBezier"
	local var9 = 1 - arg5
	return var9 ^ 3 * arg1 + var9 ^ 2 * 3 * arg5 * arg2 + var9 * 3 * arg5 ^ 2 * arg3 + arg5 ^ 3 * arg4
end
local function _(arg1, arg2, arg3) -- Line 46, Named "calculateControlPoint"
	return (arg1 + arg2) * 0.5 + vector.create(0, arg3, 0)
end
local function _(arg1, arg2, arg3, arg4, arg5) -- Line 51, Named "catmullRom"
	local var10 = arg5 * arg5
	return (arg2 * 2 + (-arg1 + arg3) * arg5 + (arg1 * 2 - arg2 * 5 + arg3 * 4 - arg4) * var10 + (-arg1 + arg2 * 3 - arg3 * 3 + arg4) * (var10 * arg5)) * 0.5
end
local function getPositionAlongPath_upvr(arg1, arg2) -- Line 63, Named "getPositionAlongPath"
	local len = #arg1
	if len < 2 then
		return arg1[1]
	end
	local var12 = 1 / (len - 1)
	local clamped = math.clamp(math.floor(arg2 / var12) + 1, 1, len - 1)
	local var14 = (arg2 - (clamped - 1) * var12) / var12
	local var15 = arg1[math.max(clamped - 1, 1)]
	local var16 = arg1[clamped]
	local var17 = arg1[clamped + 1]
	local var18 = arg1[math.min(clamped + 2, len)]
	local var19 = var14 * var14
	return (var16 * 2 + (-var15 + var17) * var14 + (var15 * 2 - var16 * 5 + var17 * 4 - var18) * var19 + (-var15 + var16 * 3 - var17 * 3 + var18) * (var19 * var14)) * 0.5
end
local function _(arg1, arg2, arg3) -- Line 81, Named "updateSleighRotation"
	--[[ Upvalues[1]:
		[1]: cframe_upvr (readonly)
	]]
	if (arg3 - arg2).Magnitude < 0.001 then
	else
		arg1:PivotTo(CFrame.lookAt(arg2, arg3) * cframe_upvr)
	end
end
local function _() -- Line 89, Named "cleanupSleigh"
	--[[ Upvalues[5]:
		[1]: var4_upvw (read and write)
		[2]: var3_upvw (read and write)
		[3]: var5_upvw (read and write)
		[4]: var6_upvw (read and write)
		[5]: var7_upvw (read and write)
	]]
	if var4_upvw then
		var4_upvw:Disconnect()
		var4_upvw = nil
	end
	if var3_upvw then
		var3_upvw:Destroy()
		var3_upvw = nil
	end
	var5_upvw = nil
	var6_upvw = nil
	var7_upvw = nil
end
local Sleigh_upvr = ReplicatedStorage.Resources.EventSpawns.Sleigh
local RunService_upvr = game:GetService("RunService")
local function startSleighAnimation_upvr(arg1, arg2, arg3) -- Line 105, Named "startSleighAnimation"
	--[[ Upvalues[9]:
		[1]: var4_upvw (read and write)
		[2]: var3_upvw (read and write)
		[3]: var5_upvw (read and write)
		[4]: var6_upvw (read and write)
		[5]: var7_upvw (read and write)
		[6]: Sleigh_upvr (readonly)
		[7]: RunService_upvr (readonly)
		[8]: getPositionAlongPath_upvr (readonly)
		[9]: cframe_upvr (readonly)
	]]
	if not arg2 or #arg2 == 0 then
		warn("Invalid waypoints received")
	else
		local var22 = arg3
		if not var22 then
			var22 = workspace:GetServerTimeNow()
		end
		if var4_upvw then
			var4_upvw:Disconnect()
			var4_upvw = nil
		end
		if var3_upvw then
			var3_upvw:Destroy()
			var3_upvw = nil
		end
		var5_upvw = nil
		var6_upvw = nil
		var7_upvw = nil
		var3_upvw = Sleigh_upvr:Clone()
		var3_upvw.Parent = workspace
		var5_upvw = var22
		var6_upvw = arg1 or 15
		var7_upvw = arg2
		local Sound = Instance.new("Sound")
		Sound.Looped = true
		Sound.SoundId = "rbxassetid://6974173557"
		Sound.RollOffMode = Enum.RollOffMode.Inverse
		Sound.RollOffMaxDistance = 1000
		Sound.Volume = 0.1
		Sound.Parent = var3_upvw
		Sound:Play()
		var4_upvw = RunService_upvr.PostSimulation:Connect(function() -- Line 132
			--[[ Upvalues[7]:
				[1]: var3_upvw (copied, read and write)
				[2]: var4_upvw (copied, read and write)
				[3]: var5_upvw (copied, read and write)
				[4]: var6_upvw (copied, read and write)
				[5]: var7_upvw (copied, read and write)
				[6]: getPositionAlongPath_upvr (copied, readonly)
				[7]: cframe_upvr (copied, readonly)
			]]
			if not var3_upvw or not var3_upvw.Parent then
				if var4_upvw then
					var4_upvw:Disconnect()
					var4_upvw = nil
				end
				if var3_upvw then
					var3_upvw:Destroy()
					var3_upvw = nil
				end
				var5_upvw = nil
				var6_upvw = nil
				var7_upvw = nil
			else
				local minimum = math.min((workspace:GetServerTimeNow() - var5_upvw) / var6_upvw, 1)
				local getPositionAlongPath_upvr_result1 = getPositionAlongPath_upvr(var7_upvw, minimum)
				local getPositionAlongPath_result1 = getPositionAlongPath_upvr(var7_upvw, math.min(minimum + 0.01, 1))
				if (getPositionAlongPath_result1 - getPositionAlongPath_upvr_result1).Magnitude < 0.001 then
				else
					var3_upvw:PivotTo(CFrame.lookAt(getPositionAlongPath_upvr_result1, getPositionAlongPath_result1) * cframe_upvr)
				end
				if 1 <= minimum then
					if var3_upvw then
						var3_upvw:Destroy()
						var3_upvw = nil
					end
					if var4_upvw then
						var4_upvw:Disconnect()
						var4_upvw = nil
					end
					if var3_upvw then
						var3_upvw:Destroy()
						var3_upvw = nil
					end
					var5_upvw = nil
					var6_upvw = nil
					var7_upvw = nil
				end
			end
		end)
	end
end
Client.startSantaEvent.On(function(arg1) -- Line 157
	--[[ Upvalues[1]:
		[1]: startSleighAnimation_upvr (readonly)
	]]
	startSleighAnimation_upvr(arg1.duration, arg1.waypoints, arg1.startTime)
end)
Client.santaReconcile.On(function(arg1) -- Line 161
	--[[ Upvalues[1]:
		[1]: startSleighAnimation_upvr (readonly)
	]]
	startSleighAnimation_upvr(arg1.duration, arg1.waypoints, workspace:GetServerTimeNow() - (arg1.elapsed or 0))
end)
Client.santaEndEvent.On(function() -- Line 167
	--[[ Upvalues[5]:
		[1]: var4_upvw (read and write)
		[2]: var3_upvw (read and write)
		[3]: var5_upvw (read and write)
		[4]: var6_upvw (read and write)
		[5]: var7_upvw (read and write)
	]]
	if var4_upvw then
		var4_upvw:Disconnect()
		var4_upvw = nil
	end
	if var3_upvw then
		var3_upvw:Destroy()
		var3_upvw = nil
	end
	var5_upvw = nil
	var6_upvw = nil
	var7_upvw = nil
end)
return {}