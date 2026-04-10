-- Name: BaitShop
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.BaitShop
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.560070799998357 seconds

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
-- Decompiled on 2026-04-10 16:49:30
-- Luau version 6, Types version 3
-- Time taken: 0.004206 seconds

-- KONSTANTERROR: [0] 1. Error Block 16 start (CF ANALYSIS FAILED)
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage_upvr.Modules
local Library_upvr = require(Modules.Library)
local UIController_upvr = require(script.Parent.Parent.UIController)
local BaitShop_upvr = require(ReplicatedStorage_upvr.Modules.Services).Players.LocalPlayer.PlayerGui.Main.Centre.BaitShop
local tbl_2 = {}
local function var8_upvr() -- Line 35
	--[[ Upvalues[2]:
		[1]: UIController_upvr (readonly)
		[2]: BaitShop_upvr (readonly)
	]]
	UIController_upvr.toggleFrame(BaitShop_upvr)
end
tbl_2[1] = var8_upvr
UIController_upvr.bindButton(BaitShop_upvr.Header.Exit, true, tbl_2)
local pairs_result1_2, pairs_result2, pairs_result3_2 = pairs(BaitShop_upvr.Bait:GetChildren())
local var14
if var8_upvr:IsA("Frame") and var8_upvr:FindFirstChild("Buy") then
	var14 = Library_upvr.Items.Bait[tonumber(var8_upvr.Name)]
	var14 = var14.Price
	var8_upvr.Buy.TextLabel.Text = '$'..require(Modules.Utils).Suffix(var14)
	local tbl = {}
	local tbl_upvw = {}
	local ClientResolver_upvr = require(Modules.ClientResolver)
	function var14() -- Line 48
		--[[ Upvalues[5]:
			[1]: var8_upvr (readonly)
			[2]: tbl_upvw (read and write)
			[3]: Library_upvr (readonly)
			[4]: ClientResolver_upvr (readonly)
			[5]: ReplicatedStorage_upvr (readonly)
		]]
		print(tonumber(var8_upvr.Name))
		if 0 < tbl_upvw[tonumber(var8_upvr.Name)] and Library_upvr.Items.Bait[tonumber(var8_upvr.Name)].Price <= ClientResolver_upvr.Resolve("Profile", "Cash") then
			ReplicatedStorage_upvr.Remotes.Server.Bait:FireServer("Buy", tonumber(var8_upvr.Name))
			local var17 = tbl_upvw
			local tonumber_result1 = tonumber(var8_upvr.Name)
			var17[tonumber_result1] -= 1
			var8_upvr.Stock.Text = tbl_upvw[tonumber(var8_upvr.Name)].." Left"
		end
	end
	tbl[1] = var14
	UIController_upvr.bindButton(var8_upvr.Buy, true, tbl)
end
local pairs_result1, pairs_result2_2, pairs_result3 = pairs(var8_upvr:GetChildren())
-- KONSTANTERROR: [0] 1. Error Block 16 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [199] 129. Error Block 9 start (CF ANALYSIS FAILED)
-- KONSTANTERROR: [199] 129. Error Block 9 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [173] 109. Error Block 15 start (CF ANALYSIS FAILED)
-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
if Library_upvr.Items.Bait and Library_upvr.Items.Bait then
	-- KONSTANTWARNING: GOTO [116] #69
end
-- KONSTANTERROR: [173] 109. Error Block 15 end (CF ANALYSIS FAILED)