-- Name: Shop
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.Shop
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.58554169999843 seconds

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
-- Decompiled on 2026-04-10 16:49:23
-- Luau version 6, Types version 3
-- Time taken: 0.024016 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage.Modules
local ClientResolver = require(Modules.ClientResolver)
local Utils_upvr = require(Modules.Utils)
local UIController_upvr = require(script.Parent.Parent.UIController)
local LocalPlayer_upvr = require(ReplicatedStorage.Modules.Services).Players.LocalPlayer
local PlayerGui_2 = LocalPlayer_upvr.PlayerGui
local Shop_upvr_2 = PlayerGui_2.Main.Centre.Shop
local any_Resolve_result1_2 = ClientResolver.Resolve("Profile", "Transactions")
for _, v_upvr in pairs(Shop_upvr_2:GetDescendants()) do
	if v_upvr:IsA("TextButton") and tonumber(v_upvr.Name) ~= nil then
		if 3000000000 <= tonumber(v_upvr.Name) then
			local tbl_3 = {}
			local MarketplaceService_upvr_2 = game:GetService("MarketplaceService")
			tbl_3[1] = function() -- Line 36
				--[[ Upvalues[3]:
					[1]: MarketplaceService_upvr_2 (readonly)
					[2]: LocalPlayer_upvr (readonly)
					[3]: v_upvr (readonly)
				]]
				MarketplaceService_upvr_2:PromptProductPurchase(LocalPlayer_upvr, v_upvr.Name)
			end
			UIController_upvr.bindButton(v_upvr, true, tbl_3)
		else
			UIController_upvr.bindButton(v_upvr, true, {function() -- Line 46
				--[[ Upvalues[3]:
					[1]: MarketplaceService_upvr_2 (readonly)
					[2]: LocalPlayer_upvr (readonly)
					[3]: v_upvr (readonly)
				]]
				MarketplaceService_upvr_2:PromptGamePassPurchase(LocalPlayer_upvr, v_upvr.Name)
			end})
		end
	end
end
UIController_upvr.bindButton(Shop_upvr_2.Header.Exit, true, {function() -- Line 59
	--[[ Upvalues[2]:
		[1]: UIController_upvr (readonly)
		[2]: Shop_upvr_2 (readonly)
	]]
	UIController_upvr.toggleFrame(Shop_upvr_2)
end})
if any_Resolve_result1_2 then
	if any_Resolve_result1_2["Transaction-"..tostring(1345489906)] then
		PlayerGui_2.Main.Bottom.Potions.VIP.Visible = true
	end
end
ClientResolver.OnChanged("SCache", "ServerLuck", function(arg1) -- Line 71
	--[[ Upvalues[2]:
		[1]: Shop_upvr_2 (readonly)
		[2]: Utils_upvr (readonly)
	]]
	if arg1 <= 0 then
		Shop_upvr_2.ShopFrame.ServerLuck.Timer.Visible = false
		Shop_upvr_2.ShopFrame.ServerLuck.Timer.Text = "15:00 Left"
	else
		if not Shop_upvr_2.ShopFrame.ServerLuck.Timer.Visible then
			Shop_upvr_2.ShopFrame.ServerLuck.Timer.Visible = true
		end
		Shop_upvr_2.ShopFrame.ServerLuck.Timer.Text = Utils_upvr.TimeFormat(arg1).." Left"
	end
end)
ClientResolver.OnChanged("SCache", "ServerLuckMultiplier", function(arg1) -- Line 83
	--[[ Upvalues[1]:
		[1]: Shop_upvr_2 (readonly)
	]]
	if arg1 == 0 then
		Shop_upvr_2.ShopFrame.ServerLuck.Previous.Text = "x1"
		Shop_upvr_2.ShopFrame.ServerLuck.Multiplier.Text = "x2"
		for _, v_2 in pairs(Shop_upvr_2.ShopFrame.ServerLuck:GetChildren()) do
			if v_2:IsA("TextButton") then
				v_2.Name = "3347539134"
				v_2.TextLabel.Text = "249"
			end
		end
		for _, v_3 in pairs(Shop_upvr_2.ShopFrame.ServerLuck:GetChildren()) do
			if v_3:IsA("UIGradient") then
				v_3.Enabled = false
			end
		end
		for _, v_4 in pairs(Shop_upvr_2.ShopFrame.ServerLuck.UIStroke:GetChildren()) do
			if v_4:IsA("UIGradient") then
				v_4.Enabled = false
			end
		end
		Shop_upvr_2.ShopFrame.ServerLuck.Luck2.Enabled = true
		Shop_upvr_2.ShopFrame.ServerLuck.UIStroke.Luck2.Enabled = true
	else
		if arg1 == 2 then
			Shop_upvr_2.ShopFrame.ServerLuck.Previous.Text = "x2"
			Shop_upvr_2.ShopFrame.ServerLuck.Multiplier.Text = "x4"
			for _, v_8 in pairs(Shop_upvr_2.ShopFrame.ServerLuck:GetChildren()) do
				if v_8:IsA("TextButton") then
					v_8.Name = "3487707391"
					v_8.TextLabel.Text = "499"
				end
			end
			for _, v_9 in pairs(Shop_upvr_2.ShopFrame.ServerLuck:GetChildren()) do
				if v_9:IsA("UIGradient") then
					v_9.Enabled = false
				end
			end
			for _, v_10 in pairs(Shop_upvr_2.ShopFrame.ServerLuck.UIStroke:GetChildren()) do
				if v_10:IsA("UIGradient") then
					v_10.Enabled = false
				end
			end
			Shop_upvr_2.ShopFrame.ServerLuck.Luck4.Enabled = true
			Shop_upvr_2.ShopFrame.ServerLuck.UIStroke.Luck4.Enabled = true
			return
		end
		if arg1 == 4 then
			Shop_upvr_2.ShopFrame.ServerLuck.Previous.Text = "x4"
			Shop_upvr_2.ShopFrame.ServerLuck.Multiplier.Text = "x8"
			for _, v_11 in pairs(Shop_upvr_2.ShopFrame.ServerLuck:GetChildren()) do
				if v_11:IsA("TextButton") then
					v_11.Name = "3487723769"
					v_11.TextLabel.Text = "999"
				end
			end
			for _, v_12 in pairs(Shop_upvr_2.ShopFrame.ServerLuck:GetChildren()) do
				if v_12:IsA("UIGradient") then
					v_12.Enabled = false
				end
			end
			for _, v_13 in pairs(Shop_upvr_2.ShopFrame.ServerLuck.UIStroke:GetChildren()) do
				if v_13:IsA("UIGradient") then
					v_13.Enabled = false
				end
			end
			Shop_upvr_2.ShopFrame.ServerLuck.Luck8.Enabled = true
			Shop_upvr_2.ShopFrame.ServerLuck.UIStroke.Luck8.Enabled = true
			return
		end
		if arg1 == 8 then
			Shop_upvr_2.ShopFrame.ServerLuck.Previous.Text = "x8"
			Shop_upvr_2.ShopFrame.ServerLuck.Multiplier.Text = "x8 (Max)"
			for _, v_14 in pairs(Shop_upvr_2.ShopFrame.ServerLuck:GetChildren()) do
				if v_14:IsA("TextButton") then
					v_14.Name = "3487723769"
					v_14.TextLabel.Text = "999"
				end
			end
			for _, v_15 in pairs(Shop_upvr_2.ShopFrame.ServerLuck:GetChildren()) do
				if v_15:IsA("UIGradient") then
					v_15.Enabled = false
				end
			end
			for _, v_16 in pairs(Shop_upvr_2.ShopFrame.ServerLuck.UIStroke:GetChildren()) do
				if v_16:IsA("UIGradient") then
					v_16.Enabled = false
				end
			end
			Shop_upvr_2.ShopFrame.ServerLuck.Luck8.Enabled = true
			Shop_upvr_2.ShopFrame.ServerLuck.UIStroke.Luck8.Enabled = true
			return
		end
	end
end)
ClientResolver.OnChanged("SCache", "CustomerLuck", function(arg1) -- Line 171
	--[[ Upvalues[2]:
		[1]: Shop_upvr_2 (readonly)
		[2]: Utils_upvr (readonly)
	]]
	if arg1 <= 0 then
		Shop_upvr_2.ShopFrame.CustomerLuck.Timer.Visible = false
		Shop_upvr_2.ShopFrame.CustomerLuck.Timer.Text = "15:00 Left"
	else
		if not Shop_upvr_2.ShopFrame.CustomerLuck.Timer.Visible then
			Shop_upvr_2.ShopFrame.CustomerLuck.Timer.Visible = true
		end
		Shop_upvr_2.ShopFrame.CustomerLuck.Timer.Text = Utils_upvr.TimeFormat(arg1).." Left"
	end
end)
ClientResolver.OnChanged("SCache", "CustomerLuckMultiplier", function(arg1) -- Line 183
	--[[ Upvalues[1]:
		[1]: Shop_upvr_2 (readonly)
	]]
	if arg1 == 0 then
		Shop_upvr_2.ShopFrame.CustomerLuck.Previous.Text = "x1"
		Shop_upvr_2.ShopFrame.CustomerLuck.Multiplier.Text = "x2"
		for _, v_5 in pairs(Shop_upvr_2.ShopFrame.CustomerLuck:GetChildren()) do
			if v_5:IsA("TextButton") then
				v_5.Name = "3487783001"
				v_5.TextLabel.Text = "249"
			end
		end
		for _, v_6 in pairs(Shop_upvr_2.ShopFrame.CustomerLuck:GetChildren()) do
			if v_6:IsA("UIGradient") then
				v_6.Enabled = false
			end
		end
		for _, v_7 in pairs(Shop_upvr_2.ShopFrame.CustomerLuck.UIStroke:GetChildren()) do
			if v_7:IsA("UIGradient") then
				v_7.Enabled = false
			end
		end
		Shop_upvr_2.ShopFrame.CustomerLuck.Luck2.Enabled = true
		Shop_upvr_2.ShopFrame.CustomerLuck.UIStroke.Luck2.Enabled = true
	else
		if arg1 == 2 then
			Shop_upvr_2.ShopFrame.CustomerLuck.Previous.Text = "x2"
			Shop_upvr_2.ShopFrame.CustomerLuck.Multiplier.Text = "x4"
			for _, v_17 in pairs(Shop_upvr_2.ShopFrame.CustomerLuck:GetChildren()) do
				if v_17:IsA("TextButton") then
					v_17.Name = "3487783214"
					v_17.TextLabel.Text = "499"
				end
			end
			for _, v_18 in pairs(Shop_upvr_2.ShopFrame.CustomerLuck:GetChildren()) do
				if v_18:IsA("UIGradient") then
					v_18.Enabled = false
				end
			end
			for _, v_19 in pairs(Shop_upvr_2.ShopFrame.CustomerLuck.UIStroke:GetChildren()) do
				if v_19:IsA("UIGradient") then
					v_19.Enabled = false
				end
			end
			Shop_upvr_2.ShopFrame.CustomerLuck.Luck4.Enabled = true
			Shop_upvr_2.ShopFrame.CustomerLuck.UIStroke.Luck4.Enabled = true
			return
		end
		if arg1 == 4 then
			Shop_upvr_2.ShopFrame.CustomerLuck.Previous.Text = "x4"
			Shop_upvr_2.ShopFrame.CustomerLuck.Multiplier.Text = "x8"
			for _, v_20 in pairs(Shop_upvr_2.ShopFrame.CustomerLuck:GetChildren()) do
				if v_20:IsA("TextButton") then
					v_20.Name = "3487783424"
					v_20.TextLabel.Text = "999"
				end
			end
			for _, v_21 in pairs(Shop_upvr_2.ShopFrame.CustomerLuck:GetChildren()) do
				if v_21:IsA("UIGradient") then
					v_21.Enabled = false
				end
			end
			for _, v_22 in pairs(Shop_upvr_2.ShopFrame.CustomerLuck.UIStroke:GetChildren()) do
				if v_22:IsA("UIGradient") then
					v_22.Enabled = false
				end
			end
			Shop_upvr_2.ShopFrame.CustomerLuck.Luck8.Enabled = true
			Shop_upvr_2.ShopFrame.CustomerLuck.UIStroke.Luck8.Enabled = true
			return
		end
		if arg1 == 8 then
			Shop_upvr_2.ShopFrame.CustomerLuck.Previous.Text = "x8"
			Shop_upvr_2.ShopFrame.CustomerLuck.Multiplier.Text = "x8 (Max)"
			for _, v_23 in pairs(Shop_upvr_2.ShopFrame.CustomerLuck:GetChildren()) do
				if v_23:IsA("TextButton") then
					v_23.Name = "3487783424"
					v_23.TextLabel.Text = "999"
				end
			end
			for _, v_24 in pairs(Shop_upvr_2.ShopFrame.CustomerLuck:GetChildren()) do
				if v_24:IsA("UIGradient") then
					v_24.Enabled = false
				end
			end
			for _, v_25 in pairs(Shop_upvr_2.ShopFrame.CustomerLuck.UIStroke:GetChildren()) do
				if v_25:IsA("UIGradient") then
					v_25.Enabled = false
				end
			end
			Shop_upvr_2.ShopFrame.CustomerLuck.Luck8.Enabled = true
			Shop_upvr_2.ShopFrame.CustomerLuck.UIStroke.Luck8.Enabled = true
			return
		end
	end
end)
local PolicyService_upvr = game:GetService("PolicyService")
local pcall_result1_2, pcall_result2 = pcall(function() -- Line 269
	--[[ Upvalues[3]:
		[1]: PolicyService_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: Shop_upvr_2 (readonly)
	]]
	if PolicyService_upvr:GetPolicyInfoForPlayerAsync(LocalPlayer_upvr).ArePaidRandomItemsRestricted then
		Shop_upvr_2.ShopFrame.LuckyBlock.Visible = false
	end
end)
if not pcall_result1_2 then
	warn(pcall_result2)
end
return {}