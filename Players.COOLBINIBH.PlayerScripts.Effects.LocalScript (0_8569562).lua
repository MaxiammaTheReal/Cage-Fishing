-- Name: LocalScript
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Effects.LocalScript
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.5441361000011966 seconds

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
-- Decompiled on 2026-04-10 16:49:10
-- Luau version 6, Types version 3
-- Time taken: 0.003519 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local function _(arg1, arg2, arg3, arg4) -- Line 11, Named "QuadraticBezier"
	return (1 - arg1) ^ 2 * arg2 + 2 * (1 - arg1) * arg1 * arg3 + arg1 ^ 2 * arg4
end
local RunService_upvr = game:GetService("RunService")
local function TweenBezier_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 15, Named "TweenBezier"
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	local Position_upvr = arg3.Position
	local tick_result1_upvr = tick()
	local var6_upvw = arg4 or 1
	local class_Highlight_upvr = arg3:FindFirstChildOfClass("Highlight")
	local var8_upvw
	local var9_upvr = (arg2 + Position_upvr) / 2 + Vector3.new(0, arg5 or 10, 0)
	var8_upvw = RunService_upvr.Heartbeat:Connect(function() -- Line 26
		--[[ Upvalues[9]:
			[1]: tick_result1_upvr (readonly)
			[2]: var6_upvw (read and write)
			[3]: arg3 (readonly)
			[4]: class_Highlight_upvr (readonly)
			[5]: arg1 (readonly)
			[6]: Position_upvr (readonly)
			[7]: var8_upvw (read and write)
			[8]: arg2 (readonly)
			[9]: var9_upvr (readonly)
		]]
		local var10 = (tick() - tick_result1_upvr) / var6_upvw
		if arg3:FindFirstChild("Health") then
			if arg3.Health.Value <= 0 then
				var10 = 1
				-- KONSTANTWARNING: GOTO [24] #20
			end
		else
			var10 = 1
		end
		if 0.85 <= var10 then
			if class_Highlight_upvr then
				class_Highlight_upvr.Enabled = true
				task.delay(0.1, function() -- Line 42
					--[[ Upvalues[1]:
						[1]: class_Highlight_upvr (copied, readonly)
					]]
					class_Highlight_upvr.Enabled = false
				end)
			end
			var10 = 0.85
			arg1.Position = Position_upvr
			var8_upvw:Disconnect()
		else
			local var12 = var10
			arg1.Position = (1 - var12) ^ 2 * arg2 + 2 * (1 - var12) * var12 * var9_upvr + var12 ^ 2 * Position_upvr
		end
	end)
end
local Library_upvr = require(ReplicatedStorage.Modules.Library)
local Loot_upvr = ReplicatedStorage.Resources.Loot
local Debris_upvr = game:GetService("Debris")
ReplicatedStorage.Remotes.Client.ShootFish.OnClientEvent:Connect(function(arg1, arg2) -- Line 57
	--[[ Upvalues[4]:
		[1]: Library_upvr (readonly)
		[2]: Loot_upvr (readonly)
		[3]: Debris_upvr (readonly)
		[4]: TweenBezier_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 27 start (CF ANALYSIS FAILED)
	if not arg1 or not arg2 then return end
	local string_match_result1 = string.match(arg1.Name, "Cage%-(%d+)%-")
	if Library_upvr.Items.Cage[tonumber(string_match_result1)] then
		-- KONSTANTWARNING: GOTO [46] #36
	end
	-- KONSTANTERROR: [0] 1. Error Block 27 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [36] 28. Error Block 26 start (CF ANALYSIS FAILED)
	warn(`Cage {string_match_result1} not found`)
	do
		return
	end
	if Library_upvr.Items.Cage[tonumber(string_match_result1)].MinRegion == "Shore" then
		-- KONSTANTWARNING: GOTO [80] #63
	end
	-- KONSTANTERROR: [36] 28. Error Block 26 end (CF ANALYSIS FAILED)
end)