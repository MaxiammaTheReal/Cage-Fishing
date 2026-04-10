-- Name: Enchants
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.Enchants
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7784363999999186 seconds

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
-- Decompiled on 2026-04-10 16:49:52
-- Luau version 6, Types version 3
-- Time taken: 0.044011 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local Modules = ReplicatedStorage_upvr.Modules
local ClientResolver_upvr = require(Modules.ClientResolver)
local Library_upvr = require(Modules.Library)
local Utils_upvr = require(Modules.Utils)
local UIController_upvr = require(script.Parent.Parent.UIController)
local Notifications_upvr = require(script.Parent.Notifications)
local LocalPlayer_upvr = require(ReplicatedStorage_upvr.Modules.Services).Players.LocalPlayer
local PlayerGui_upvr = LocalPlayer_upvr.PlayerGui
local Enchant_upvr = PlayerGui_upvr.Main.Centre.Enchant
local ScrollingFrame_upvr = Enchant_upvr.Container.ScrollingFrame
local Server_upvr = ReplicatedStorage_upvr.Remotes.Server
local any_Resolve_result1_3_upvr = ClientResolver_upvr.Resolve("Profile", "Capacity")
local var21_upvw = 0
local tbl_upvr = {}
local tbl_2_upvr = {}
local var24_upvw = false
local function toggleEnchant_upvr(arg1, arg2, arg3) -- Line 42, Named "toggleEnchant"
	--[[ Upvalues[5]:
		[1]: ScrollingFrame_upvr (readonly)
		[2]: Enchant_upvr (readonly)
		[3]: ReplicatedStorage_upvr (readonly)
		[4]: Utils_upvr (readonly)
		[5]: Library_upvr (readonly)
	]]
	local SOME_3 = ScrollingFrame_upvr:FindFirstChild(arg1)
	if arg2 == "None" then
		if SOME_3 then
			SOME_3.Visible = true
		end
		for i = 1, 9 do
			local SOME_15 = Enchant_upvr.Container:FindFirstChild(`ImageButton{i}`)
			if SOME_15 and SOME_15:GetAttribute("EnchantId") == arg1 then
				if arg3 then
					ReplicatedStorage_upvr.Remotes.Server.Enchant:FireServer("ExtractEnchant", {
						EnchantId = SOME_15:GetAttribute("EnchantId");
						Slot = i;
					})
				end
				SOME_15.EnchantIcon.Image = ""
				SOME_15:SetAttribute("EnchantId", "")
				return
			end
		end
	else
		if not tonumber(arg2) then return end
		SOME_3.Visible = false
		local SOME_8 = Enchant_upvr.Container:FindFirstChild(`ImageButton{arg2}`)
		if not SOME_8 then return end
		if arg3 then
			local tbl_4 = {}
			tbl_4.EnchantId = arg1
			tbl_4.Slot = tonumber(arg2)
			ReplicatedStorage_upvr.Remotes.Server.Enchant:FireServer("InsertEnchant", tbl_4)
		end
		SOME_8.EnchantIcon.Image = Library_upvr.Enchants[Utils_upvr.SplitDash(arg1)[2]].Image
		SOME_8:SetAttribute("EnchantId", arg1)
	end
end
local function getEmptySlot_upvr() -- Line 85, Named "getEmptySlot"
	--[[ Upvalues[3]:
		[1]: ClientResolver_upvr (readonly)
		[2]: Enchant_upvr (readonly)
		[3]: Notifications_upvr (readonly)
	]]
	local var35
	for i_2 = 1, ClientResolver_upvr.Resolve("Profile", "Capacity/MaxEnchantUnlocked"), var35 do
		local SOME_7 = Enchant_upvr.Container:FindFirstChild(`ImageButton{i_2}`)
		if SOME_7 and SOME_7:GetAttribute("EnchantId") == "" then
			return i_2
		end
	end
	var35 = "Profile"
	local any_Resolve_result1_4 = ClientResolver_upvr.Resolve(var35, "Transactions")
	var35 = 0
	if any_Resolve_result1_4[`Transaction-{3468348955}`] then
		var35 += 1
	end
	if any_Resolve_result1_4[`Transaction-{3468350540}`] then
		var35 += 1
	end
	if any_Resolve_result1_4[`Transaction-{3468350697}`] then
		var35 += 1
	end
	if var35 <= 0 then
		Notifications_upvr.createNotification("You don't have an empty slot!", "Red")
	else
		for var34 = 7, var35 + 6 do
			local SOME_13 = Enchant_upvr.Container:FindFirstChild(`ImageButton{var34}`)
			if SOME_13 and SOME_13:GetAttribute("EnchantId") == "" then
				return var34
			end
		end
	end
end
local function clearAllEnchantSlots_upvr() -- Line 118, Named "clearAllEnchantSlots"
	--[[ Upvalues[2]:
		[1]: Enchant_upvr (readonly)
		[2]: ScrollingFrame_upvr (readonly)
	]]
	for i_3 = 1, 9 do
		local SOME_12 = Enchant_upvr.Container:FindFirstChild(`ImageButton{i_3}`)
		if SOME_12 then
			SOME_12.EnchantIcon.Image = ""
			SOME_12:SetAttribute("EnchantId", "")
		end
	end
	for _, v in pairs(ScrollingFrame_upvr:GetChildren()) do
		if v:IsA("ImageButton") then
			v.Visible = true
		end
	end
end
local Profile_upvr = Enchant_upvr.Profile
local function loadEnchantProfile_upvr(arg1) -- Line 134, Named "loadEnchantProfile"
	--[[ Upvalues[3]:
		[1]: Library_upvr (readonly)
		[2]: Profile_upvr (readonly)
		[3]: ReplicatedStorage_upvr (readonly)
	]]
	local var49 = Library_upvr.Enchants[arg1]
	Profile_upvr.ImageLabel.Image = var49.Image
	Profile_upvr.EnchantName.Text = var49.Name
	Profile_upvr.Rarity.Text = var49.Rarity
	Profile_upvr.Boost.Text = `{math.round(var49.Display * 100)}% Boost`
	for _, v_2 in pairs(Profile_upvr.Rarity:GetChildren()) do
		if v_2:IsA("UIGradient") then
			v_2:Destroy()
		end
	end
	local SOME_2 = ReplicatedStorage_upvr.Resources.RarityGradients:FindFirstChild(var49.Rarity)
	if SOME_2 then
		SOME_2:Clone().Parent = Profile_upvr.Rarity
	end
end
local function createEnchantButton_upvr(arg1, arg2) -- Line 154, Named "createEnchantButton"
	--[[ Upvalues[11]:
		[1]: Utils_upvr (readonly)
		[2]: Library_upvr (readonly)
		[3]: ReplicatedStorage_upvr (readonly)
		[4]: ScrollingFrame_upvr (readonly)
		[5]: tbl_upvr (readonly)
		[6]: UIController_upvr (readonly)
		[7]: var24_upvw (read and write)
		[8]: tbl_2_upvr (readonly)
		[9]: getEmptySlot_upvr (readonly)
		[10]: toggleEnchant_upvr (readonly)
		[11]: loadEnchantProfile_upvr (readonly)
	]]
	local any_SplitDash_result1_upvr = Utils_upvr.SplitDash(arg1)
	local var55 = Library_upvr.Enchants[any_SplitDash_result1_upvr[2]]
	if not var55 then
		warn(`Enchant {any_SplitDash_result1_upvr[2]} does not exist`)
	end
	local clone_upvr = ReplicatedStorage_upvr.Resources.Interface.EnchantFrame:Clone()
	clone_upvr.TextLabel.Text = var55.Name
	clone_upvr.ImageLabel.Image = var55.Image
	clone_upvr.Name = arg1
	clone_upvr.Parent = ScrollingFrame_upvr
	if tbl_upvr[arg1] then
	else
		tbl_upvr[arg1] = UIController_upvr.bindButton(clone_upvr, true, {function() -- Line 174
			--[[ Upvalues[8]:
				[1]: var24_upvw (copied, read and write)
				[2]: tbl_2_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: clone_upvr (readonly)
				[5]: getEmptySlot_upvr (copied, readonly)
				[6]: toggleEnchant_upvr (copied, readonly)
				[7]: loadEnchantProfile_upvr (copied, readonly)
				[8]: any_SplitDash_result1_upvr (readonly)
			]]
			if var24_upvw then
				local table_find_result1 = table.find(tbl_2_upvr, arg1)
				if table_find_result1 then
					clone_upvr.ImageColor3 = Color3.fromRGB(191, 191, 191)
					table.remove(tbl_2_upvr, table_find_result1)
				else
					clone_upvr.ImageColor3 = Color3.fromRGB(170, 0, 0)
					table.insert(tbl_2_upvr, arg1)
				end
			end
			toggleEnchant_upvr(arg1, getEmptySlot_upvr(), true)
			loadEnchantProfile_upvr(any_SplitDash_result1_upvr[2])
		end})[1]
		if not arg2 then return end
		if arg2 == "None" then return end
		toggleEnchant_upvr(arg1, arg2)
	end
end
local function loadChestVisual_upvr(arg1) -- Line 202, Named "loadChestVisual"
	--[[ Upvalues[2]:
		[1]: Library_upvr (readonly)
		[2]: ReplicatedStorage_upvr (readonly)
	]]
	local var67 = Library_upvr.EnchantChests[arg1]
	local Chest_2 = workspace.EnchantChest.Chest
	Chest_2.Transparency = 1
	for i_6 = 1, 3 do
		local var69 = workspace.EnchantChest[`Chest{i_6}`]
		var69.Transparency = 1
		for _, v_3 in pairs(var69:GetChildren()) do
			if v_3:IsA("BasePart") then
				v_3.Transparency = 1
			end
		end
	end
	local var73 = workspace.EnchantChest[`Chest{arg1}`]
	var73.Transparency = 0
	for _, v_4 in pairs(var73:GetChildren()) do
		if v_4:IsA("BasePart") then
			v_4.Transparency = 0
		end
	end
	Chest_2.Question.Question.Enabled = false
	Chest_2.Details.Tag.Enabled = true
	Chest_2.Question.ProximityPrompt.Enabled = true
	local Tag = Chest_2.Details.Tag
	Tag.Chest.Text = var67.Name
	Tag.Price.Text = `${var67.Price}`
	Tag.Rarity.Text = var67.Rarity
	for _, v_5 in pairs(Tag.Rarity:GetChildren()) do
		if v_5:IsA("UIGradient") then
			v_5:Destroy()
		end
	end
	local SOME_10 = ReplicatedStorage_upvr.Resources.RarityGradients:FindFirstChild(var67.Rarity)
	if SOME_10 then
		SOME_10:Clone().Parent = Tag.Rarity
	end
	Chest_2.Question.ProximityPrompt.ActionText = `${var67.Price}`
end
local function resetChestVisual_upvr() -- Line 246, Named "resetChestVisual"
	for i_10 = 1, 3 do
		local var85 = workspace.EnchantChest[`Chest{i_10}`]
		var85.Transparency = 1
		for _, v_6 in pairs(var85:GetChildren()) do
			if v_6:IsA("BasePart") then
				v_6.Transparency = 1
			end
		end
	end
	workspace.EnchantChest.Chest.Transparency = 0
	local Chest = workspace.EnchantChest.Chest
	Chest.Question.Question.Enabled = true
	Chest.Details.Tag.Enabled = false
	Chest.Question.ProximityPrompt.Enabled = false
end
local function changeEnchantBuyPrice_upvr(arg1) -- Line 263, Named "changeEnchantBuyPrice"
	--[[ Upvalues[2]:
		[1]: Library_upvr (readonly)
		[2]: Utils_upvr (readonly)
	]]
	local var90 = Library_upvr.EnchantPrices[arg1 + 1]
	if not var90 then
		workspace.BuyEnchantSlot.Main.Attachment.BillboardGui.Price.Text = "MAX"
		workspace.BuyEnchantSlot.Main.Attachment.BillboardGui.Price.TextLabel.Text = "MAX"
	else
		workspace.BuyEnchantSlot.Main.Attachment.BillboardGui.Price.Text = `${Utils_upvr.FormatComma(var90.Price)}`
		workspace.BuyEnchantSlot.Main.Attachment.BillboardGui.Price.TextLabel.Text = `${Utils_upvr.FormatComma(var90.Price)}`
	end
end
local function unlockEnchantSlots_upvr(arg1) -- Line 280, Named "unlockEnchantSlots"
	--[[ Upvalues[1]:
		[1]: Enchant_upvr (readonly)
	]]
	for i_12 = 1, arg1 do
		local SOME_4 = Enchant_upvr.Container:FindFirstChild(`ImageButton{i_12}`)
		if SOME_4 then
			SOME_4.ImageColor3 = Color3.fromRGB(255, 255, 255)
			local LockImage_3 = SOME_4:FindFirstChild("LockImage")
			if LockImage_3 then
				LockImage_3.Visible = false
			end
		end
	end
end
workspace.Enchant.Main.Prompt.ProximityPrompt.Triggered:Connect(function() -- Line 293
	--[[ Upvalues[2]:
		[1]: UIController_upvr (readonly)
		[2]: Enchant_upvr (readonly)
	]]
	UIController_upvr.toggleFrame(Enchant_upvr)
end)
UIController_upvr.bindButton(Enchant_upvr.Container.Exit, true, {function() -- Line 301
	--[[ Upvalues[2]:
		[1]: UIController_upvr (readonly)
		[2]: Enchant_upvr (readonly)
	]]
	UIController_upvr.toggleFrame(Enchant_upvr)
end})
UIController_upvr.bindButton(Enchant_upvr.Container.Amount.DeleteToggle, true, {function() -- Line 311
	--[[ Upvalues[3]:
		[1]: var24_upvw (read and write)
		[2]: Enchant_upvr (readonly)
		[3]: ScrollingFrame_upvr (readonly)
	]]
	if not var24_upvw then
		var24_upvw = true
		Enchant_upvr.Container.Amount.DeleteToggle.Image = "rbxassetid://96343086012463"
		Enchant_upvr.Container.Amount.Confirm.Visible = true
	else
		var24_upvw = false
		Enchant_upvr.Container.Amount.DeleteToggle.Image = "rbxassetid://72284483525208"
		Enchant_upvr.Container.Amount.Confirm.Visible = false
		for _, v_11 in pairs(ScrollingFrame_upvr:GetChildren()) do
			if v_11:IsA("ImageButton") then
				v_11.ImageColor3 = Color3.fromRGB(191, 191, 191)
			end
		end
	end
end})
UIController_upvr.bindButton(Enchant_upvr.Container.Amount.Confirm, true, {function() -- Line 333
	--[[ Upvalues[5]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: var24_upvw (read and write)
		[4]: Enchant_upvr (readonly)
		[5]: ScrollingFrame_upvr (readonly)
	]]
	ReplicatedStorage_upvr.Remotes.Server.Enchant:FireServer("Delete", {
		DeleteTable = tbl_2_upvr;
	})
	var24_upvw = false
	Enchant_upvr.Container.Amount.DeleteToggle.Image = "rbxassetid://72284483525208"
	Enchant_upvr.Container.Amount.Confirm.Visible = false
	for _, v_7 in pairs(ScrollingFrame_upvr:GetChildren()) do
		if v_7:IsA("ImageButton") then
			v_7.ImageColor3 = Color3.fromRGB(191, 191, 191)
		end
	end
	table.clear(tbl_2_upvr)
end})
for i_14_upvr, v_8_upvr in pairs(ClientResolver_upvr.Resolve("Profile", "Enchants")) do
	local pcall_result1_2, pcall_result2 = pcall(function() -- Line 349
		--[[ Upvalues[4]:
			[1]: createEnchantButton_upvr (readonly)
			[2]: i_14_upvr (readonly)
			[3]: v_8_upvr (readonly)
			[4]: var21_upvw (read and write)
		]]
		createEnchantButton_upvr(i_14_upvr, v_8_upvr.Slot)
		var21_upvw += 1
	end)
	if not pcall_result1_2 then
		warn(pcall_result2)
	end
end
for i_15_upvr = 1, 9 do
	i_14_upvr = Enchant_upvr.Container:FindFirstChild(`ImageButton{i_15_upvr}`)
	if i_14_upvr then
		v_8_upvr = UIController_upvr.bindButton
		v_8_upvr(i_14_upvr, true, {function() -- Line 364
			--[[ Upvalues[8]:
				[1]: i_15_upvr (readonly)
				[2]: ClientResolver_upvr (readonly)
				[3]: MarketplaceService_upvr (readonly)
				[4]: LocalPlayer_upvr (readonly)
				[5]: i_14_upvr (readonly)
				[6]: toggleEnchant_upvr (readonly)
				[7]: Utils_upvr (readonly)
				[8]: loadEnchantProfile_upvr (readonly)
			]]
			if 7 <= i_15_upvr then
				local any_Resolve_result1 = ClientResolver_upvr.Resolve("Profile", "Transactions")
				if i_15_upvr == 7 and not any_Resolve_result1[`Transaction-{3468348955}`] then
					MarketplaceService_upvr:PromptProductPurchase(LocalPlayer_upvr, 3468348955)
					return
				end
				if i_15_upvr == 8 then
					if not any_Resolve_result1[`Transaction-{3468350540}`] then
						MarketplaceService_upvr:PromptProductPurchase(LocalPlayer_upvr, 3468350540)
						return
					end
				end
				if i_15_upvr == 9 then
					if not any_Resolve_result1[`Transaction-{3468350697}`] then
						MarketplaceService_upvr:PromptProductPurchase(LocalPlayer_upvr, 3468350697)
						return
					end
				end
			end
			local EnchantId_2 = i_14_upvr:GetAttribute("EnchantId")
			if EnchantId_2 == "" then
			else
				toggleEnchant_upvr(EnchantId_2, "None", true)
				loadEnchantProfile_upvr(Utils_upvr.SplitDash(EnchantId_2)[2])
			end
		end})
	end
end
ClientResolver_upvr.OnArraySet("Profile", "Enchants", function(arg1, arg2) -- Line 393
	--[[ Upvalues[6]:
		[1]: createEnchantButton_upvr (readonly)
		[2]: var21_upvw (read and write)
		[3]: Enchant_upvr (readonly)
		[4]: any_Resolve_result1_3_upvr (readonly)
		[5]: tbl_upvr (readonly)
		[6]: ScrollingFrame_upvr (readonly)
	]]
	if arg2 then
		createEnchantButton_upvr(arg1)
		var21_upvw += 1
		Enchant_upvr.Container.Amount.TextLabel.Text = `{var21_upvw}/{any_Resolve_result1_3_upvr.Enchants}`
	else
		if tbl_upvr[arg1] then
			tbl_upvr[arg1]:Disconnect()
			tbl_upvr[arg1] = nil
		end
		local SOME = ScrollingFrame_upvr:FindFirstChild(arg1)
		if not SOME then return end
		SOME:Destroy()
		var21_upvw -= 1
		Enchant_upvr.Container.Amount.TextLabel.Text = `{var21_upvw}/{any_Resolve_result1_3_upvr.Enchants}`
	end
end)
for i_16, _ in pairs(ClientResolver_upvr.Resolve("Profile", "Transactions")) do
	if i_16 == `Transaction-{3468348955}` then
		local ImageButton7_2 = Enchant_upvr.Container.ImageButton7
		ImageButton7_2.ImageColor3 = Color3.fromRGB(255, 255, 255)
		ImageButton7_2.LockImage.Visible = false
	elseif i_16 == `Transaction-{3468350540}` then
		local ImageButton8_2 = Enchant_upvr.Container.ImageButton8
		ImageButton8_2.ImageColor3 = Color3.fromRGB(255, 255, 255)
		ImageButton8_2.LockImage.Visible = false
	elseif i_16 == `Transaction-{3468350697}` then
		local ImageButton9_2 = Enchant_upvr.Container.ImageButton9
		ImageButton9_2.ImageColor3 = Color3.fromRGB(255, 255, 255)
		ImageButton9_2.LockImage.Visible = false
	end
end
ClientResolver_upvr.OnArraySet("Profile", "Transactions", function(arg1, arg2) -- Line 437
	--[[ Upvalues[2]:
		[1]: Utils_upvr (readonly)
		[2]: Enchant_upvr (readonly)
	]]
	local any_SplitDash_result1 = Utils_upvr.SplitDash(arg1)
	if any_SplitDash_result1[2] == 3468348955 then
		local ImageButton7 = Enchant_upvr.Container.ImageButton7
		ImageButton7.ImageColor3 = Color3.fromRGB(255, 255, 255)
		ImageButton7.LockImage.Visible = false
	else
		if any_SplitDash_result1[2] == 3468350540 then
			local ImageButton8 = Enchant_upvr.Container.ImageButton8
			ImageButton8.ImageColor3 = Color3.fromRGB(255, 255, 255)
			ImageButton8.LockImage.Visible = false
			return
		end
		if any_SplitDash_result1[2] == 3468350697 then
			local ImageButton9 = Enchant_upvr.Container.ImageButton9
			ImageButton9.ImageColor3 = Color3.fromRGB(255, 255, 255)
			ImageButton9.LockImage.Visible = false
			return
		end
	end
end)
local LuckyBlocks_upvr = require(script.Parent.LuckyBlocks)
local RunService_upvr = game:GetService("RunService")
ReplicatedStorage_upvr.Remotes.Client.Enchant.OnClientEvent:Connect(function(arg1, arg2) -- Line 459
	--[[ Upvalues[11]:
		[1]: Library_upvr (readonly)
		[2]: PlayerGui_upvr (readonly)
		[3]: LuckyBlocks_upvr (readonly)
		[4]: ReplicatedStorage_upvr (readonly)
		[5]: RunService_upvr (readonly)
		[6]: Utils_upvr (readonly)
		[7]: Notifications_upvr (readonly)
		[8]: loadChestVisual_upvr (readonly)
		[9]: resetChestVisual_upvr (readonly)
		[10]: clearAllEnchantSlots_upvr (readonly)
		[11]: toggleEnchant_upvr (readonly)
	]]
	if arg1 == "Roll" then
		local Reward = arg2.Reward
		if not arg2.ChestId then
		else
			if not Reward then return end
			if not arg2.Odds then return end
			local ScrollingFrame_upvr_3 = PlayerGui_upvr.Main.LuckyBlock.Frame.ScrollingFrame
			for _, v_12 in pairs(ScrollingFrame_upvr_3:GetChildren()) do
				if v_12:IsA("ImageLabel") then
					v_12:Destroy()
				end
			end
			for i_22 = 1, 100 do
				if i_22 == 95 then
				end
				local var194 = Library_upvr.Enchants[Reward]
				local Rarity_2 = var194.Rarity
				local clone = ReplicatedStorage_upvr.Resources.Interface.RollFrame:Clone()
				clone.ImageLabel.Image = var194.Image
				clone.ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
				clone.Rarity.TextLabel.Text = Rarity_2
				clone.TextLabel.Text = var194.Name
				local SOME_11 = ReplicatedStorage_upvr.Resources.RarityGradients:FindFirstChild(Rarity_2)
				if SOME_11 then
					SOME_11:Clone().Parent = clone
					SOME_11:Clone().Parent = clone.Rarity
				end
				clone.LayoutOrder = i_22
				clone.Name = tostring(i_22)
				clone.Parent = ScrollingFrame_upvr_3
				if i_22 == 95 then
					local var198 = clone
				end
			end
			PlayerGui_upvr.Main.LuckyBlock.Visible = true
			RunService_upvr.RenderStepped:Wait()
			ScrollingFrame_upvr_3.CanvasPosition = Vector2.new(0, 0)
			RunService_upvr.RenderStepped:Wait()
			local var201_upvr = Library_upvr.Enchants[Reward]
			Utils_upvr.Animation(ScrollingFrame_upvr_3, {
				CanvasPosition = Vector2.new(var198.AbsolutePosition.X - ScrollingFrame_upvr_3.AbsolutePosition.X - ScrollingFrame_upvr_3.AbsoluteWindowSize.X / 2 + var198.AbsoluteSize.X / 2, 0);
			}, 12, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out, 0, false, 0, function() -- Line 546
				--[[ Upvalues[5]:
					[1]: PlayerGui_upvr (copied, readonly)
					[2]: Utils_upvr (copied, readonly)
					[3]: ScrollingFrame_upvr_3 (readonly)
					[4]: Notifications_upvr (copied, readonly)
					[5]: var201_upvr (readonly)
				]]
				local ImageLabel = PlayerGui_upvr.Main.LuckyBlock.Frame.ScrollingFrame:FindFirstChild("95").ImageLabel
				Utils_upvr.Animation(ImageLabel, {
					Size = UDim2.new(ImageLabel.Size.X.Scale * 1.5, 0, ImageLabel.Size.Y.Scale * 1.5, 0);
					ImageColor3 = Color3.fromRGB(255, 255, 255);
				}, 1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0, function() -- Line 563
					--[[ Upvalues[4]:
						[1]: ScrollingFrame_upvr_3 (copied, readonly)
						[2]: PlayerGui_upvr (copied, readonly)
						[3]: Notifications_upvr (copied, readonly)
						[4]: var201_upvr (copied, readonly)
					]]
					task.wait(3)
					for _, v_13 in pairs(ScrollingFrame_upvr_3:GetChildren()) do
						if v_13:IsA("ImageLabel") then
							v_13:Destroy()
						end
					end
					PlayerGui_upvr.Main.LuckyBlock.Visible = false
					Notifications_upvr.createNotification(`You got a {var201_upvr.Name} from the lucky block!`, "Green")
				end)
			end)
		end
	end
	if arg1 == "ChangeVisual" then
		if arg2.Set then
			var201_upvr = arg2.ChestId
			loadChestVisual_upvr(var201_upvr)
		else
			resetChestVisual_upvr()
		end
	end
	if arg1 == "LoadoutLoaded" then
		clearAllEnchantSlots_upvr()
		local LoadoutData_2 = arg2.LoadoutData
		if LoadoutData_2 then
			for i_17, v_10 in pairs(LoadoutData_2) do
				if tonumber(v_10) then
					toggleEnchant_upvr(i_17, v_10, false)
				end
			end
		end
	end
end)
ClientResolver_upvr.OnChanged("Profile", "Capacity/MaxEnchantUnlocked", function(arg1) -- Line 607
	--[[ Upvalues[2]:
		[1]: unlockEnchantSlots_upvr (readonly)
		[2]: changeEnchantBuyPrice_upvr (readonly)
	]]
	if not arg1 then
	else
		if not tonumber(arg1) then return end
		unlockEnchantSlots_upvr(arg1)
		changeEnchantBuyPrice_upvr(arg1)
	end
end)
workspace.BuyEnchantSlot.Main.Prompt.ProximityPrompt.Triggered:Connect(function() -- Line 614
	--[[ Upvalues[1]:
		[1]: Server_upvr (readonly)
	]]
	Server_upvr.Enchant:FireServer("UnlockSlot")
end)
local pcall_result1, pcall_result2_2 = pcall(function() -- Line 618
	--[[ Upvalues[7]:
		[1]: resetChestVisual_upvr (readonly)
		[2]: Enchant_upvr (readonly)
		[3]: var21_upvw (read and write)
		[4]: any_Resolve_result1_3_upvr (readonly)
		[5]: ClientResolver_upvr (readonly)
		[6]: unlockEnchantSlots_upvr (readonly)
		[7]: changeEnchantBuyPrice_upvr (readonly)
	]]
	resetChestVisual_upvr()
	Enchant_upvr.Container.Amount.TextLabel.Text = `{var21_upvw}/{any_Resolve_result1_3_upvr.Enchants}`
	local any_Resolve_result1_2 = ClientResolver_upvr.Resolve("Profile", "Capacity/MaxEnchantUnlocked")
	unlockEnchantSlots_upvr(any_Resolve_result1_2)
	changeEnchantBuyPrice_upvr(any_Resolve_result1_2)
end)
if not pcall_result1 then
	warn(pcall_result2_2)
end
local Loadouts_upvr = Enchant_upvr.Loadouts
local function _() -- Line 636, Named "hasLoadoutGamepass"
	--[[ Upvalues[2]:
		[1]: ClientResolver_upvr (readonly)
		[2]: Library_upvr (readonly)
	]]
	local var221 = "Profile"
	if ClientResolver_upvr.Resolve(var221, "Transactions")[`Transaction-{Library_upvr.Gamepasses.ExtraLoadouts}`] == nil then
		var221 = false
	else
		var221 = true
	end
	return var221
end
local function updateLoadoutLocks_upvr() -- Line 641, Named "updateLoadoutLocks"
	--[[ Upvalues[3]:
		[1]: Loadouts_upvr (readonly)
		[2]: ClientResolver_upvr (readonly)
		[3]: Library_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	for i_18 = 4, 7 do
		local SOME_6 = Loadouts_upvr:FindFirstChild(tostring(i_18))
		local var227
		if SOME_6 then
			if ClientResolver_upvr.Resolve("Profile", "Transactions")[`Transaction-{Library_upvr.Gamepasses.ExtraLoadouts}`] == nil then
				var227 = false
			else
				var227 = true
			end
			local LockImage = SOME_6:FindFirstChild("LockImage")
			if LockImage then
				LockImage.Visible = not var227
			end
			if var227 then
			else
			end
			SOME_6.BackgroundTransparency = 0.5
		end
	end
end
for i_19_upvr = 1, 7 do
	local SOME_14 = Loadouts_upvr:FindFirstChild(tostring(i_19_upvr))
	if SOME_14 then
		local Save = SOME_14:FindFirstChild("Save")
		local Load = SOME_14:FindFirstChild("Load")
		if Save then
			UIController_upvr.bindButton(Save, true, {function() -- Line 667
				--[[ Upvalues[7]:
					[1]: i_19_upvr (readonly)
					[2]: ClientResolver_upvr (readonly)
					[3]: Library_upvr (readonly)
					[4]: Notifications_upvr (readonly)
					[5]: MarketplaceService_upvr (readonly)
					[6]: LocalPlayer_upvr (readonly)
					[7]: Server_upvr (readonly)
				]]
				local var234 = i_19_upvr
				if 4 <= var234 then
					if ClientResolver_upvr.Resolve("Profile", "Transactions")[`Transaction-{Library_upvr.Gamepasses.ExtraLoadouts}`] == nil then
						var234 = false
					else
						var234 = true
					end
					if not var234 then
						var234 = Notifications_upvr
						var234 = var234.createNotification
						var234("You need the Extra Loadouts gamepass to use this slot!", "Red")
						var234 = task.delay
						var234(1, function() -- Line 670
							--[[ Upvalues[3]:
								[1]: MarketplaceService_upvr (copied, readonly)
								[2]: LocalPlayer_upvr (copied, readonly)
								[3]: Library_upvr (copied, readonly)
							]]
							MarketplaceService_upvr:PromptGamePassPurchase(LocalPlayer_upvr, Library_upvr.Gamepasses.ExtraLoadouts)
						end)
						return
					end
				end
				Server_upvr.Enchant:FireServer("SaveLoadout", {
					SlotIndex = i_19_upvr;
				})
			end})
		end
		if Load then
			UIController_upvr.bindButton(Load, true, {function() -- Line 686
				--[[ Upvalues[7]:
					[1]: i_19_upvr (readonly)
					[2]: ClientResolver_upvr (readonly)
					[3]: Library_upvr (readonly)
					[4]: Notifications_upvr (readonly)
					[5]: MarketplaceService_upvr (readonly)
					[6]: LocalPlayer_upvr (readonly)
					[7]: Server_upvr (readonly)
				]]
				local var239 = i_19_upvr
				if 4 <= var239 then
					if ClientResolver_upvr.Resolve("Profile", "Transactions")[`Transaction-{Library_upvr.Gamepasses.ExtraLoadouts}`] == nil then
						var239 = false
					else
						var239 = true
					end
					if not var239 then
						var239 = Notifications_upvr
						var239 = var239.createNotification
						var239("You need the Extra Loadouts gamepass to use this slot!", "Red")
						var239 = task.delay
						var239(1, function() -- Line 689
							--[[ Upvalues[3]:
								[1]: MarketplaceService_upvr (copied, readonly)
								[2]: LocalPlayer_upvr (copied, readonly)
								[3]: Library_upvr (copied, readonly)
							]]
							MarketplaceService_upvr:PromptGamePassPurchase(LocalPlayer_upvr, Library_upvr.Gamepasses.ExtraLoadouts)
						end)
						return
					end
				end
				Server_upvr.Enchant:FireServer("LoadLoadout", {
					SlotIndex = i_19_upvr;
				})
			end})
		end
	end
end
ClientResolver_upvr.OnArraySet("Profile", "Transactions", function(arg1, arg2) -- Line 702
	--[[ Upvalues[3]:
		[1]: Utils_upvr (readonly)
		[2]: Library_upvr (readonly)
		[3]: updateLoadoutLocks_upvr (readonly)
	]]
	if tonumber(Utils_upvr.SplitDash(arg1)[2]) == Library_upvr.Gamepasses.ExtraLoadouts then
		updateLoadoutLocks_upvr()
	end
end)
updateLoadoutLocks_upvr()
return {}