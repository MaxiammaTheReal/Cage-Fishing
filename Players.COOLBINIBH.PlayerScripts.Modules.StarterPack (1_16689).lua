-- Name: StarterPack
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.StarterPack
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5416559999994206 seconds

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
-- Decompiled on 2026-04-10 16:49:33
-- Luau version 6, Types version 3
-- Time taken: 0.003983 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage.Modules
local ClientResolver = require(Modules.ClientResolver)
local UIController_upvr = require(script.Parent.Parent.UIController)
local LocalPlayer_upvr = require(ReplicatedStorage.Modules.Services).Players.LocalPlayer
local PlayerGui = LocalPlayer_upvr.PlayerGui
local StarterPack_upvr_2 = PlayerGui.Main.Centre.StarterPack
local StarterPack_upvr = PlayerGui.Main.Overlay.StarterPack
local any_Resolve_result1 = ClientResolver.Resolve("Profile", "Engagement/StarterPackTime")
if any_Resolve_result1 and tonumber(any_Resolve_result1) and any_Resolve_result1 <= 0 or ClientResolver.Resolve("Profile", "Transactions")["Transaction-3367178044"] then
	StarterPack_upvr.Visible = false
else
	local Timer_upvr = StarterPack_upvr_2.Timer
	local Utils_upvr = require(Modules.Utils)
	local TimeLeft_upvr = StarterPack_upvr.TimeLeft
	ClientResolver.OnChanged("Profile", "Engagement/StarterPackTime", function(arg1) -- Line 45
		--[[ Upvalues[4]:
			[1]: Timer_upvr (readonly)
			[2]: Utils_upvr (readonly)
			[3]: TimeLeft_upvr (readonly)
			[4]: StarterPack_upvr (readonly)
		]]
		Timer_upvr.Text = Utils_upvr.TimeFormat(arg1)
		TimeLeft_upvr.Text = Utils_upvr.TimeFormat(arg1)
		if arg1 == 0 then
			StarterPack_upvr.Visible = false
		end
	end)
	UIController_upvr.bindButton(StarterPack_upvr, true, {function() -- Line 58
		--[[ Upvalues[2]:
			[1]: UIController_upvr (readonly)
			[2]: StarterPack_upvr_2 (readonly)
		]]
		UIController_upvr.toggleFrame(StarterPack_upvr_2)
	end})
	local tbl = {}
	local MarketplaceService_upvr = game:GetService("MarketplaceService")
	tbl[1] = function() -- Line 68
		--[[ Upvalues[2]:
			[1]: MarketplaceService_upvr (readonly)
			[2]: LocalPlayer_upvr (readonly)
		]]
		MarketplaceService_upvr:PromptProductPurchase(LocalPlayer_upvr, 3367178044)
	end
	UIController_upvr.bindButton(StarterPack_upvr_2.Buy, true, tbl)
	ClientResolver.OnArraySet("Profile", "Transactions", function(arg1, arg2) -- Line 74
		--[[ Upvalues[3]:
			[1]: StarterPack_upvr_2 (readonly)
			[2]: UIController_upvr (readonly)
			[3]: StarterPack_upvr (readonly)
		]]
		if arg1 == "Transaction-3367178044" and StarterPack_upvr_2.Visible then
			UIController_upvr.toggleFrame(StarterPack_upvr_2)
			StarterPack_upvr.Visible = false
		end
	end)
end
UIController_upvr.bindButton(StarterPack_upvr_2.Header.Exit, true, {function() -- Line 88
	--[[ Upvalues[2]:
		[1]: UIController_upvr (readonly)
		[2]: StarterPack_upvr_2 (readonly)
	]]
	UIController_upvr.toggleFrame(StarterPack_upvr_2)
end})
return {}