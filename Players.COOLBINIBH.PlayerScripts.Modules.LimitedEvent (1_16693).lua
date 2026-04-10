-- Name: LimitedEvent
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.LimitedEvent
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5569159000006039 seconds

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
-- Decompiled on 2026-04-10 16:49:37
-- Luau version 6, Types version 3
-- Time taken: 0.009460 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage_upvr.Modules
local Library_upvr = require(Modules.Library)
local PlayerGui_upvr = require(ReplicatedStorage_upvr.Modules.Services).Players.LocalPlayer:WaitForChild("PlayerGui")
local var5_upvw
local function getUi_upvr() -- Line 40, Named "getUi"
	--[[ Upvalues[1]:
		[1]: PlayerGui_upvr (readonly)
	]]
	if workspace:FindFirstChild("Global") then
	end
	local SurfaceGui = PlayerGui_upvr:FindFirstChild("SurfaceGui")
	if SurfaceGui then
		SurfaceGui = PlayerGui_upvr
		SurfaceGui = SurfaceGui.SurfaceGui:FindFirstChild("LimitedEvent")
	end
	if not SurfaceGui then
		return nil
	end
	local Frame = SurfaceGui:FindFirstChild("Frame")
	if not Frame then
		return nil
	end
	local Cage = Frame:FindFirstChild("Cage")
	local Time = Frame:FindFirstChild("Time")
	if not Cage or not Time then
		return nil
	end
	return {
		Frame = Frame;
		Cage = Cage;
		Time = Time;
	}
end
local function _(arg1, arg2) -- Line 67, Named "setText"
	if arg1 then
		arg1.Text = arg2
	end
end
local function _() -- Line 74, Named "isNowActiveWindow"
	--[[ Upvalues[1]:
		[1]: var5_upvw (read and write)
	]]
	if not var5_upvw then
		return false
	end
	local os_time_result1 = os.time()
	local var12 = tonumber(var5_upvw.Timestamp) or 0
	local var13 = false
	if var12 <= os_time_result1 then
		if os_time_result1 >= var12 + 900 then
			var13 = false
		else
			var13 = true
		end
	end
	return var13
end
local var14_upvw
local var15_upvw = false
local Utils_upvr = require(Modules.Utils)
local function startOrRestartTicker_upvr() -- Line 83, Named "startOrRestartTicker"
	--[[ Upvalues[6]:
		[1]: var14_upvw (read and write)
		[2]: getUi_upvr (readonly)
		[3]: var5_upvw (read and write)
		[4]: var15_upvw (read and write)
		[5]: Utils_upvr (readonly)
		[6]: Library_upvr (readonly)
	]]
	local _, _ = pcall(function() -- Line 84
		--[[ Upvalues[1]:
			[1]: var14_upvw (copied, read and write)
		]]
		if var14_upvw then
			task.cancel(var14_upvw)
			var14_upvw = nil
		end
	end)
	var14_upvw = task.spawn(function() -- Line 91
		--[[ Upvalues[5]:
			[1]: getUi_upvr (copied, readonly)
			[2]: var5_upvw (copied, read and write)
			[3]: var15_upvw (copied, read and write)
			[4]: Utils_upvr (copied, readonly)
			[5]: Library_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [154] 115. Error Block 33 start (CF ANALYSIS FAILED)
		task.wait(1)
		-- KONSTANTERROR: [154] 115. Error Block 33 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 55 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [158.0]
		if nil then
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [158.1]
			if nil then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [158.65666]
				if 1 <= task.wait(1) then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [158.4]
					if task.wait(1) >= nil then
					else
					end
				end
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [158.5]
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [158.6]
				if nil ~= nil then
				end
				if nil then
					-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [158.7]
					if nil then
					end
					-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [158.9]
					local function INLINED_4() -- Internal function, doesn't exist in bytecode
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						return nil
					end
					local function INLINED_5() -- Internal function, doesn't exist in bytecode
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						return nil
					end
					local function INLINED_6() -- Internal function, doesn't exist in bytecode
						-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [158.8]
						return nil
					end
					if not nil or not INLINED_4() or not INLINED_5() or not INLINED_6() then
					end
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					if nil then
						-- KONSTANTWARNING: GOTO [154] #115
					end
				else
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					if nil then
					end
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x4)
					if not nil or not nil or not nil or not nil then
					end
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					if nil then
					end
				end
			end
		end
		-- KONSTANTERROR: [0] 1. Error Block 55 end (CF ANALYSIS FAILED)
	end)
end
ReplicatedStorage_upvr.Remotes.Client.LimitedEvent.OnClientEvent:Connect(function(arg1, arg2) -- Line 140
	--[[ Upvalues[5]:
		[1]: var5_upvw (read and write)
		[2]: startOrRestartTicker_upvr (readonly)
		[3]: PlayerGui_upvr (readonly)
		[4]: Library_upvr (readonly)
		[5]: ReplicatedStorage_upvr (readonly)
	]]
	if arg1 == "RefreshData" then
		if typeof(arg2) ~= "table" or not arg2.Timestamp then
			warn("LimitedEvent: received invalid data", arg2)
		else
			var5_upvw = {
				CageType = tonumber(arg2.CageType);
				Timestamp = tonumber(arg2.Timestamp);
			}
			startOrRestartTicker_upvr()
			for _, v in pairs(PlayerGui_upvr.SurfaceGui.LimitedEvent.Frame.Items.Cage:GetChildren()) do
				if v:IsA("ViewportFrame") then
					v.Visible = false
				end
			end
			PlayerGui_upvr.SurfaceGui.LimitedEvent.Frame.Items.Cage["Cage"..arg2.CageType].Visible = true
			local Rarity = Library_upvr.Items.Cage[arg2.CageType].Rarity
			PlayerGui_upvr.SurfaceGui.LimitedEvent.Frame.Items.Cage.CageName.Text = Library_upvr.Items.Cage[arg2.CageType].Name
			local SOME = ReplicatedStorage_upvr.Resources.RarityGradients:FindFirstChild(Rarity)
			if SOME then
				local Rarity_2 = PlayerGui_upvr.SurfaceGui.LimitedEvent.Frame.Items.Cage.Rarity
				for _, v_2 in pairs(Rarity_2:GetChildren()) do
					if v_2:IsA("UIGradient") then
						v_2:Destroy()
					end
				end
				SOME:Clone().Parent = PlayerGui_upvr.SurfaceGui.LimitedEvent.Frame.Items.Cage.Rarity
				Rarity_2.TextLabel.Text = Rarity
			end
		end
	end
end)
local clone = ReplicatedStorage_upvr.Resources.Interface.LimitedEvent:Clone()
clone.Parent = PlayerGui_upvr.SurfaceGui
clone.Adornee = workspace.Global.LimitedEvent
startOrRestartTicker_upvr()
return {}