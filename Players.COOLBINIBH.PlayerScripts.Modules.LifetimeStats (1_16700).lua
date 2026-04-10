-- Name: LifetimeStats
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.LifetimeStats
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.555493199999546 seconds

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
-- Decompiled on 2026-04-10 16:49:44
-- Luau version 6, Types version 3
-- Time taken: 0.002670 seconds

-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage.Modules
local ClientResolver_upvr = require(Modules.ClientResolver)
local var4 = 0
-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [63] 41. Error Block 12 start (CF ANALYSIS FAILED)
if 0 < var4 then
	local clone = ReplicatedStorage.Resources.Interface.LifetimeStats:Clone()
	clone.Adornee = workspace.Plots[tostring(var4)].Visuals.LifetimeStats
	clone.Parent = require(ReplicatedStorage.Modules.Services).Players.LocalPlayer.PlayerGui.SurfaceGui
	local ScrollingFrame_upvr = clone.ScrollingFrame
	local Utils_upvr = require(Modules.Utils)
	task.spawn(function() -- Line 39
		--[[ Upvalues[3]:
			[1]: ClientResolver_upvr (readonly)
			[2]: ScrollingFrame_upvr (readonly)
			[3]: Utils_upvr (readonly)
		]]
		while true do
			local any_Resolve_result1 = ClientResolver_upvr.Resolve("Profile", "Engagement")
			for _, v in pairs(ScrollingFrame_upvr:GetChildren()) do
				if v:IsA("TextLabel") and any_Resolve_result1[v.Name] then
					local var17 = ""
					if v.Name == "Time" then
						var17 = Utils_upvr.TimeFormat(any_Resolve_result1[v.Name])
					else
						var17 = Utils_upvr.FormatComma(any_Resolve_result1[v.Name])
					end
					v.Text = v:GetAttribute("BaseText")..' '..var17
				end
			end
			task.wait(5)
		end
	end)
end
do
	return {}
end
-- KONSTANTERROR: [63] 41. Error Block 12 end (CF ANALYSIS FAILED)