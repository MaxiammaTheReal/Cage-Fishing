-- Name: FishShop
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.FishShop
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.563306800000646 seconds

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
-- Decompiled on 2026-04-10 16:49:35
-- Luau version 6, Types version 3
-- Time taken: 0.010969 seconds

-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
local tbl_upvr = {}
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage_upvr.Modules
local ClientResolver_upvr = require(Modules.ClientResolver)
local Library_upvr = require(Modules.Library)
local Utils_upvr = require(Modules.Utils)
local UIController_upvr = require(script.Parent.Parent.UIController)
local Inventory_3_upvr = require(script.Parent.Inventory)
local FishShop_upvr = require(ReplicatedStorage_upvr.Modules.Services).Players.LocalPlayer.PlayerGui.Main.Centre.FishShop
local Shop_2_upvr = FishShop_upvr.Shop
local Inventory_2_upvr = FishShop_upvr.Inventory
;({}).AllAction = false
UIController_upvr.bindButton(FishShop_upvr.Header.Exit, true, {function() -- Line 49
	--[[ Upvalues[2]:
		[1]: UIController_upvr (readonly)
		[2]: FishShop_upvr (readonly)
	]]
	UIController_upvr.toggleFrame(FishShop_upvr)
end})
local function _(arg1, arg2, arg3, arg4, arg5) -- Line 55, Named "newFrame"
	--[[ Upvalues[7]:
		[1]: Utils_upvr (readonly)
		[2]: ReplicatedStorage_upvr (readonly)
		[3]: Library_upvr (readonly)
		[4]: Inventory_3_upvr (readonly)
		[5]: ClientResolver_upvr (readonly)
		[6]: UIController_upvr (readonly)
		[7]: tbl_upvr (readonly)
	]]
	local pcall_result1, pcall_result2_2 = pcall(function() -- Line 56
		--[[ Upvalues[12]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: Utils_upvr (copied, readonly)
			[4]: ReplicatedStorage_upvr (copied, readonly)
			[5]: Library_upvr (copied, readonly)
			[6]: Inventory_3_upvr (copied, readonly)
			[7]: arg4 (readonly)
			[8]: arg5 (readonly)
			[9]: ClientResolver_upvr (copied, readonly)
			[10]: arg3 (readonly)
			[11]: UIController_upvr (copied, readonly)
			[12]: tbl_upvr (copied, readonly)
		]]
		local var15 = arg1
		local any_SplitDash_result1_2 = Utils_upvr.SplitDash(var15)
		if any_SplitDash_result1_2[1] == "Loot" then
			local clone_2 = ReplicatedStorage_upvr.Resources.Interface.ShopItemFrame:Clone()
			clone_2.Name = var15
			ReplicatedStorage_upvr.Resources.RarityGradients[Library_upvr.Items.Loot[any_SplitDash_result1_2[2]].Rarity]:Clone().Parent = clone_2.Action
			clone_2.Action.ItemName.Text = Inventory_3_upvr.GetNameString(Library_upvr.Items.Loot[any_SplitDash_result1_2[2]].Name, arg2)
			clone_2.Action.ItemImage.Image = Library_upvr.Items.Loot[any_SplitDash_result1_2[2]].Image
			clone_2.Action.ItemImage.ImageColor3 = Color3.fromRGB(0, 0, 0)
			if arg4 == "Shop" and arg5 and arg5[1] then
				local any_Resolve_result1 = ClientResolver_upvr.Resolve("Profile", "Transactions")
				local var19
				if any_Resolve_result1 and any_Resolve_result1["Transaction-"..1342857545] then
					var19 *= 2
				end
				clone_2.Action.ItemValue.Text = '$'..var19
				clone_2.Action.ItemValue.Visible = true
			end
			clone_2.Parent = arg3
			UIController_upvr.bindButton(clone_2.Action, true, {function() -- Line 93
				--[[ Upvalues[4]:
					[1]: tbl_upvr (copied, readonly)
					[2]: arg4 (copied, readonly)
					[3]: arg1 (copied, readonly)
					[4]: arg2 (copied, readonly)
				]]
				tbl_upvr.ItemAction[arg4](arg1, arg2)
			end})
		end
	end)
	if not pcall_result1 then
		warn(pcall_result2_2)
	end
end
local tbl = {}
local Server_upvr = ReplicatedStorage_upvr.Remotes.Server
local AttributeStacker_upvr = require(Modules.AttributeStacker)
function tbl.Inventory(arg1, arg2) -- Line 107
	--[[ Upvalues[11]:
		[1]: Server_upvr (readonly)
		[2]: Utils_upvr (readonly)
		[3]: AttributeStacker_upvr (readonly)
		[4]: Inventory_2_upvr (readonly)
		[5]: Inventory_3_upvr (readonly)
		[6]: Shop_2_upvr (readonly)
		[7]: ReplicatedStorage_upvr (readonly)
		[8]: Library_upvr (readonly)
		[9]: ClientResolver_upvr (readonly)
		[10]: UIController_upvr (readonly)
		[11]: tbl_upvr (readonly)
	]]
	({})[1] = arg1
	local any_SplitDash_result1_3 = Utils_upvr.SplitDash(arg1)
	local var29
	if any_SplitDash_result1_3 and any_SplitDash_result1_3[1] == "Loot" then
		var29 = AttributeStacker_upvr.GetLootValue(Utils_upvr.SplitDash(arg1)[2], arg2)
	end
	if Inventory_2_upvr:FindFirstChild(arg1) then
		Inventory_2_upvr[arg1]:Destroy()
	end
	Inventory_3_upvr:DeleteVisual(arg1)
	local tbl_2_upvr = {var29}
	local var32_upvr = "Shop"
	local pcall_result1_2, pcall_result2 = pcall(function() -- Line 56
		--[[ Upvalues[12]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: Utils_upvr (copied, readonly)
			[4]: ReplicatedStorage_upvr (copied, readonly)
			[5]: Library_upvr (copied, readonly)
			[6]: Inventory_3_upvr (copied, readonly)
			[7]: var32_upvr (readonly)
			[8]: tbl_2_upvr (readonly)
			[9]: ClientResolver_upvr (copied, readonly)
			[10]: Shop_2_upvr (readonly)
			[11]: UIController_upvr (copied, readonly)
			[12]: tbl_upvr (copied, readonly)
		]]
		local var33 = arg1
		local any_SplitDash_result1 = Utils_upvr.SplitDash(var33)
		if any_SplitDash_result1[1] == "Loot" then
			local clone = ReplicatedStorage_upvr.Resources.Interface.ShopItemFrame:Clone()
			clone.Name = var33
			ReplicatedStorage_upvr.Resources.RarityGradients[Library_upvr.Items.Loot[any_SplitDash_result1[2]].Rarity]:Clone().Parent = clone.Action
			clone.Action.ItemName.Text = Inventory_3_upvr.GetNameString(Library_upvr.Items.Loot[any_SplitDash_result1[2]].Name, arg2)
			clone.Action.ItemImage.Image = Library_upvr.Items.Loot[any_SplitDash_result1[2]].Image
			clone.Action.ItemImage.ImageColor3 = Color3.fromRGB(0, 0, 0)
			if var32_upvr == "Shop" and tbl_2_upvr and tbl_2_upvr[1] then
				local any_Resolve_result1_2 = ClientResolver_upvr.Resolve("Profile", "Transactions")
				local var37
				if any_Resolve_result1_2 and any_Resolve_result1_2["Transaction-"..1342857545] then
					var37 *= 2
				end
				clone.Action.ItemValue.Text = '$'..var37
				clone.Action.ItemValue.Visible = true
			end
			clone.Parent = Shop_2_upvr
			UIController_upvr.bindButton(clone.Action, true, {function() -- Line 93
				--[[ Upvalues[4]:
					[1]: tbl_upvr (copied, readonly)
					[2]: var32_upvr (copied, readonly)
					[3]: arg1 (copied, readonly)
					[4]: arg2 (copied, readonly)
				]]
				tbl_upvr.ItemAction[var32_upvr](arg1, arg2)
			end})
		end
	end)
	if not pcall_result1_2 then
		var32_upvr = warn
		var32_upvr(pcall_result2)
	end
end
function tbl.Shop(arg1, arg2) -- Line 126
end
tbl_upvr.ItemAction = tbl
local pairs_result1, pairs_result2, pairs_result3 = pairs(ClientResolver_upvr.Resolve("Profile", "Inventory"))
-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [235] 164. Error Block 8 start (CF ANALYSIS FAILED)
-- KONSTANTERROR: [235] 164. Error Block 8 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [184] 119. Error Block 46 start (CF ANALYSIS FAILED)
-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [235.35]
if nil == "Shop" then
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if not nil then
		-- KONSTANTWARNING: GOTO [235] #164
	end
else
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if not nil then
	end
end
-- KONSTANTERROR: [184] 119. Error Block 46 end (CF ANALYSIS FAILED)