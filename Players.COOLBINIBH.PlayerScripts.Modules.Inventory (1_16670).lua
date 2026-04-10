-- Name: Inventory
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.Inventory
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 1.068878300000506 seconds

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
-- Decompiled on 2026-04-10 16:49:13
-- Luau version 6, Types version 3
-- Time taken: 0.142599 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local module_upvr_2 = {
	IsDragging = false;
	CONFIG = {};
}
module_upvr_2.CONFIG.UISize = {
	Open = {
		Position = UDim2.new(0.5, 0, -1.746, 0);
		Size = UDim2.new(0.375, 0, 4.392, 0);
	};
	Closed = {
		Position = nil;
		Size = UDim2.new(0.30060000000000003, 0, 3.5262000000000002, 0);
	};
	Tween = {
		Duration = 0.2;
		Style = Enum.EasingStyle.Quint;
	};
}
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local UserInputService_2 = game:GetService("UserInputService")
local Services_upvr = require(ReplicatedStorage_upvr.Modules.Services)
local Modules_2 = ReplicatedStorage_upvr.Modules
local ClientResolver_upvr = require(Modules_2.ClientResolver)
local Library_upvr = require(Modules_2.Library)
local Utils_upvr_2 = require(Modules_2.Utils)
local UIController_upvr = require(script.Parent.Parent.UIController)
local InputController = require(script.Parent.Parent.InputController)
local Registry_upvr_2 = require(script.Registry)
local Server_upvr_2 = ReplicatedStorage_upvr.Remotes.Server
local LocalPlayer_upvr_2 = Services_upvr.Players.LocalPlayer
local PlayerGui_upvr = LocalPlayer_upvr_2:WaitForChild("PlayerGui")
local Main_upvr = PlayerGui_upvr:WaitForChild("Main")
local Bottom_upvr_2 = Main_upvr.Bottom
local TextBox_upvr = Main_upvr.Centre.Inventory.Search.TextBox
local ScrollingFrame_9_upvr = Main_upvr.Centre.Inventory.ScrollingFrame
local var420_upvw
local var421_upvw
local var422_upvw = false
local var423_upvw = false
local tbl_27_upvr = {}
local tbl_29_upvr = {}
for i = 1, 10 do
	local SOME = Bottom_upvr_2.Hotbar:FindFirstChild("EmptySlot"..i)
	if SOME then
		tbl_29_upvr[i] = SOME
	end
end
local function _(arg1, arg2) -- Line 71, Named "MarkHotbarSlot"
	--[[ Upvalues[1]:
		[1]: tbl_29_upvr (readonly)
	]]
	if tbl_29_upvr[arg1] then
		tbl_29_upvr[arg1].Visible = not arg2
	end
end
local function HighlightSlot_upvr(arg1, arg2) -- Line 77, Named "HighlightSlot"
	--[[ Upvalues[2]:
		[1]: Bottom_upvr_2 (readonly)
		[2]: tbl_29_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local ipairs_result1_2, ipairs_result2_17, ipairs_result3_3 = ipairs(Bottom_upvr_2.Hotbar:GetChildren())
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [29] 22. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [29] 22. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 9. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [29.9]
	-- KONSTANTERROR: [11] 9. Error Block 2 end (CF ANALYSIS FAILED)
end
local tbl_21_upvr = {}
tbl_21_upvr.__index = tbl_21_upvr
function tbl_21_upvr.new(arg1, arg2) -- Line 107
	--[[ Upvalues[4]:
		[1]: tbl_21_upvr (readonly)
		[2]: Utils_upvr_2 (readonly)
		[3]: Library_upvr (readonly)
		[4]: Registry_upvr_2 (readonly)
	]]
	local setmetatable_result1_2 = setmetatable({}, tbl_21_upvr)
	setmetatable_result1_2.Key = arg1
	setmetatable_result1_2.Data = arg2
	local any_SplitDash_result1 = Utils_upvr_2.SplitDash(arg1)
	local var433 = any_SplitDash_result1
	if var433 then
		var433 = any_SplitDash_result1[1]
	end
	setmetatable_result1_2.Type = var433
	var433 = any_SplitDash_result1
	local var434 = var433
	if var434 then
		var434 = any_SplitDash_result1[2]
	end
	setmetatable_result1_2.ID = var434
	local var435 = Library_upvr.Items[setmetatable_result1_2.Type]
	if not var435 then
		var435 = {}
	end
	setmetatable_result1_2.Meta = var435[setmetatable_result1_2.ID]
	Registry_upvr_2.Register(arg1, setmetatable_result1_2)
	return setmetatable_result1_2
end
function module_upvr_2.DeleteItem(arg1, arg2) -- Line 119
	--[[ Upvalues[10]:
		[1]: ClientResolver_upvr (readonly)
		[2]: Registry_upvr_2 (readonly)
		[3]: Bottom_upvr_2 (readonly)
		[4]: ScrollingFrame_9_upvr (readonly)
		[5]: tbl_29_upvr (readonly)
		[6]: var420_upvw (read and write)
		[7]: var421_upvw (read and write)
		[8]: var423_upvw (read and write)
		[9]: PlayerGui_upvr (readonly)
		[10]: Server_upvr_2 (readonly)
	]]
	local var436
	if not ClientResolver_upvr.Resolve("Profile", "Inventory") then
		var436 = "DeleteItem: No such item with key:"
		warn(var436, arg2)
		return false
	end
	var436 = arg2
	if Registry_upvr_2.Get(var436) then
		var436 = Registry_upvr_2
		var436 = var436.Unregister
		var436(arg2)
	end
	var436 = Bottom_upvr_2
	var436 = var436.Hotbar:FindFirstChild(arg2)
	if not var436 then
		var436 = ScrollingFrame_9_upvr:FindFirstChild(arg2)
	end
	if var436 then
		if var436.Parent == Bottom_upvr_2.Hotbar then
			local LayoutOrder_3 = var436.LayoutOrder
			if typeof(LayoutOrder_3) == "number" and tbl_29_upvr[LayoutOrder_3] then
				tbl_29_upvr[LayoutOrder_3].Visible = true
			end
		end
		var436:Destroy()
	end
	if var420_upvw == arg2 then
		if var421_upvw and var421_upvw.Unequip then
			var421_upvw:Unequip()
		end
		var421_upvw = nil
		var420_upvw = nil
		if var423_upvw then
			PlayerGui_upvr.Main.Bottom.ConsoleActivateTip.Visible = false
		end
	end
	local tbl_18 = {}
	tbl_18[1] = arg2
	Server_upvr_2.Inventory:FireServer("Delete", tbl_18)
	return true
end
function module_upvr_2.DeleteVisual(arg1, arg2) -- Line 163
	--[[ Upvalues[6]:
		[1]: Registry_upvr_2 (readonly)
		[2]: Bottom_upvr_2 (readonly)
		[3]: ScrollingFrame_9_upvr (readonly)
		[4]: tbl_29_upvr (readonly)
		[5]: var420_upvw (read and write)
		[6]: var421_upvw (read and write)
	]]
	local var439
	if Registry_upvr_2.Get(arg2) then
		var439 = Registry_upvr_2
		var439 = var439.Unregister
		var439(arg2)
	end
	var439 = Bottom_upvr_2
	var439 = var439.Hotbar:FindFirstChild(arg2)
	if not var439 then
		var439 = ScrollingFrame_9_upvr:FindFirstChild(arg2)
	end
	if var439 then
		if var439.Parent == Bottom_upvr_2.Hotbar then
			local LayoutOrder_2 = var439.LayoutOrder
			if typeof(LayoutOrder_2) == "number" and tbl_29_upvr[LayoutOrder_2] then
				tbl_29_upvr[LayoutOrder_2].Visible = true
			end
		end
		var439:Destroy()
	end
	if var420_upvw == arg2 then
		if var421_upvw and var421_upvw.Unequip then
			var421_upvw:Unequip()
		end
		var421_upvw = nil
		var420_upvw = nil
	end
end
function module_upvr_2.GetNameString(arg1, arg2) -- Line 191
	local var445 = ""
	if arg2 and arg2.Mutations then
		for _, v in ipairs(arg2.Mutations) do
			var445 = var445..v..' '
		end
	end
	var445 = var445..' '..arg1
	local var449 = var445
	if arg2.Weight then
		var449 = var449..' '..(math.floor(arg2.Weight * 100 + 0.5) / 100).." kg"
	end
	return var449
end
local Interface_upvr = ReplicatedStorage_upvr.Resources.Interface
function tbl_21_upvr.Render(arg1) -- Line 210
	--[[ Upvalues[7]:
		[1]: Bottom_upvr_2 (readonly)
		[2]: Main_upvr (readonly)
		[3]: Interface_upvr (readonly)
		[4]: ReplicatedStorage_upvr (readonly)
		[5]: module_upvr_2 (readonly)
		[6]: Library_upvr (readonly)
		[7]: tbl_29_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var459
	if not arg1.Meta then
	else
		local Location_4 = arg1.Data.Location
		if typeof(Location_4) ~= "number" then
			var459 = false
		else
			var459 = true
		end
		if var459 then
		else
		end
		if not var459 or not Bottom_upvr_2.Hotbar then
			local ScrollingFrame_6 = Main_upvr.Centre.Inventory.ScrollingFrame
		end
		local InventoryFrame_3 = Interface_upvr.InventoryFrame
		if not InventoryFrame_3 or not ScrollingFrame_6 then return end
		for i_15, v_12 in ipairs(ScrollingFrame_6:GetChildren()) do
			if v_12:IsA("Frame") and v_12.Name == arg1.Key then
				v_12:Destroy()
			end
		end
		local clone_4 = InventoryFrame_3:Clone()
		clone_4.Name = arg1.Key
		if arg1.Data.Locked == true then
			clone_4.Locked.Visible = true
			i_15 = "Locked"
			v_12 = true
			clone_4:SetAttribute(i_15, v_12)
		else
			i_15 = "Locked"
			v_12 = false
			clone_4:SetAttribute(i_15, v_12)
		end
		local var467
		if arg1.Meta and arg1.Meta.Name then
			var467 = arg1.Meta.Name
		end
		if arg1.Meta.Rarity and Location_4 == "Inventory" then
			v_12 = arg1.Meta
			v_12 = v_12.Rarity
			if ReplicatedStorage_upvr.Resources.RarityGradients:FindFirstChild(v_12) then
				i_15 = ReplicatedStorage_upvr.Resources.RarityGradients:FindFirstChild(v_12):Clone()
				i_15.Parent = clone_4
			end
		end
		if var467 then
			i_15 = module_upvr_2
			i_15 = i_15.GetNameString
			v_12 = var467
			i_15 = i_15(v_12, arg1.Data)
			clone_4.ItemName.Text = i_15
		end
		v_12 = Library_upvr
		v_12 = v_12.Items
		i_15 = v_12[arg1.Type]
		v_12 = arg1.ID
		i_15 = clone_4.ItemImage
		i_15.Image = i_15[v_12].Image
		i_15 = clone_4.ItemImage
		v_12 = Color3.fromRGB(0, 0, 0)
		i_15.ImageColor3 = v_12
		i_15 = arg1.Data
		i_15 = i_15.Amount
		if i_15 then
			i_15 = clone_4.ItemName
			v_12 = clone_4.ItemName.Text.." x"..arg1.Data.Amount
			i_15.Text = v_12
		end
		if var459 then
			clone_4.LayoutOrder = Location_4
			v_12 = tbl_29_upvr
			i_15 = v_12[Location_4]
			if i_15 then
				v_12 = tbl_29_upvr
				i_15 = v_12[Location_4]
				v_12 = false
				i_15.Visible = v_12
			end
			i_15 = clone_4:FindFirstChild("Index")
			if i_15 then
				v_12 = i_15:IsA("TextLabel")
				if v_12 then
					v_12 = tostring(Location_4)
					i_15.Text = v_12
				end
			end
		end
		clone_4.Parent = ScrollingFrame_6
		arg1.UI = clone_4
		i_15 = arg1:EnableDrag
		i_15()
		i_15 = arg1:BindEquipToggle
		i_15()
	end
end
local Overlay_upvr_2 = Main_upvr:WaitForChild("Overlay")
local RunService_upvr = game:GetService("RunService")
function tbl_21_upvr.EnableDrag(arg1) -- Line 279
	--[[ Upvalues[14]:
		[1]: module_upvr_2 (readonly)
		[2]: var422_upvw (read and write)
		[3]: Server_upvr_2 (readonly)
		[4]: Main_upvr (readonly)
		[5]: ScrollingFrame_9_upvr (readonly)
		[6]: Services_upvr (readonly)
		[7]: tbl_29_upvr (readonly)
		[8]: Overlay_upvr_2 (readonly)
		[9]: var423_upvw (read and write)
		[10]: RunService_upvr (readonly)
		[11]: HighlightSlot_upvr (readonly)
		[12]: ClientResolver_upvr (readonly)
		[13]: Bottom_upvr_2 (readonly)
		[14]: tbl_21_upvr (readonly)
	]]
	local DragHandle_2 = arg1.UI:FindFirstChild("DragHandle")
	if not DragHandle_2 then
		DragHandle_2 = arg1.UI
	end
	local var473_upvw = false
	local var474_upvw
	local var475_upvw
	local var476_upvw
	local var477_upvw
	local var478_upvw
	DragHandle_2.InputBegan:Connect(function(arg1_11) -- Line 283
		--[[ Upvalues[21]:
			[1]: module_upvr_2 (copied, readonly)
			[2]: var422_upvw (copied, read and write)
			[3]: arg1 (readonly)
			[4]: Server_upvr_2 (copied, readonly)
			[5]: Main_upvr (copied, readonly)
			[6]: var473_upvw (read and write)
			[7]: var474_upvw (read and write)
			[8]: ScrollingFrame_9_upvr (copied, readonly)
			[9]: Services_upvr (copied, readonly)
			[10]: var475_upvw (read and write)
			[11]: tbl_29_upvr (copied, readonly)
			[12]: Overlay_upvr_2 (copied, readonly)
			[13]: var423_upvw (copied, read and write)
			[14]: var476_upvw (read and write)
			[15]: RunService_upvr (copied, readonly)
			[16]: var477_upvw (read and write)
			[17]: HighlightSlot_upvr (copied, readonly)
			[18]: var478_upvw (read and write)
			[19]: ClientResolver_upvr (copied, readonly)
			[20]: Bottom_upvr_2 (copied, readonly)
			[21]: tbl_21_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if module_upvr_2.IsDragging then
		elseif arg1_11.UserInputType == Enum.UserInputType.MouseButton1 or arg1_11.UserInputType == Enum.UserInputType.Touch then
			local var487
			if var487 then
				var487 = false
				if arg1.UI:GetAttribute("Locked") then
					arg1.UI.Locked.Visible = false
					arg1.UI:SetAttribute("Locked", false)
					var487 = true
				else
					arg1.UI.Locked.Visible = true
					arg1.UI:SetAttribute("Locked", true)
				end
				Server_upvr_2.Inventory:FireServer("Lock", {arg1.Key})
				local SOME_9 = Main_upvr.Centre.FishShop.Inventory:FindFirstChild(arg1.Key)
				if SOME_9 then
					SOME_9.Visible = var487
				end
				return
			end
			var487 = Main_upvr
			var487 = var487.Centre
			var487 = var487.Inventory
			var487 = var487.Visible
			if not var487 then return end
			var487 = module_upvr_2
			var487.IsDragging = true
			var487 = true
			var473_upvw = var487
			var474_upvw = arg1_11
			var487 = ScrollingFrame_9_upvr
			var487.ScrollingEnabled = false
			var487 = Services_upvr
			var487 = var487.UserInputService:GetMouseLocation()
			local var490
			if Services_upvr.UserInputService.TouchEnabled and not Services_upvr.UserInputService.MouseEnabled then
				var490 += Vector2.new(0, arg1.UI.AbsoluteSize.Y / 2)
			end
			local AbsolutePosition_7 = arg1.UI.AbsolutePosition
			local AbsoluteSize_8 = arg1.UI.AbsoluteSize
			local _ = Vector2.new(var490.X - AbsolutePosition_7.X, var490.Y - AbsolutePosition_7.Y)
			var475_upvw = arg1.UI:Clone()
			var475_upvw.AnchorPoint = Vector2.new(0.5, 0.5)
			if arg1.Data.Location == "Inventory" and tbl_29_upvr[1] then
				local AbsoluteSize_14 = tbl_29_upvr[1].AbsoluteSize
				var475_upvw.Size = UDim2.new(0, AbsoluteSize_14.X, 0, AbsoluteSize_14.Y)
			else
				var475_upvw.Size = UDim2.new(0, AbsoluteSize_8.X, 0, AbsoluteSize_8.Y)
			end
			var475_upvw.Position = UDim2.new(0, var490.X, 0, var490.Y)
			var475_upvw.ZIndex = 100
			var475_upvw.Parent = Overlay_upvr_2
			for _, v_14 in ipairs(arg1.UI:GetChildren()) do
				if v_14:IsA("ImageLabel") or v_14:IsA("TextLabel") and v_14.Name ~= "Index" then
					v_14.Visible = false
				end
			end
			if var423_upvw then
				var476_upvw = RunService_upvr.Heartbeat:Connect(function() -- Line 349
					--[[ Upvalues[6]:
						[1]: var473_upvw (copied, read and write)
						[2]: var475_upvw (copied, read and write)
						[3]: Services_upvr (copied, readonly)
						[4]: arg1 (copied, readonly)
						[5]: var477_upvw (copied, read and write)
						[6]: HighlightSlot_upvr (copied, readonly)
					]]
					if not var473_upvw or not var475_upvw then
					else
						local any_GetMouseLocation_result1_2 = Services_upvr.UserInputService:GetMouseLocation()
						var475_upvw.Position = UDim2.new(0, any_GetMouseLocation_result1_2.X, 0, any_GetMouseLocation_result1_2.Y)
						local any_GetHoveredHotbarSlot_result1_3 = arg1:GetHoveredHotbarSlot(any_GetMouseLocation_result1_2)
						if var477_upvw ~= any_GetHoveredHotbarSlot_result1_3 then
							if var477_upvw then
								HighlightSlot_upvr(var477_upvw, false)
							end
							if any_GetHoveredHotbarSlot_result1_3 then
								HighlightSlot_upvr(any_GetHoveredHotbarSlot_result1_3, true)
							end
							var477_upvw = any_GetHoveredHotbarSlot_result1_3
						end
					end
				end)
			else
				var476_upvw = Services_upvr.UserInputService.InputChanged:Connect(function(arg1_12) -- Line 362
					--[[ Upvalues[6]:
						[1]: var473_upvw (copied, read and write)
						[2]: var475_upvw (copied, read and write)
						[3]: Services_upvr (copied, readonly)
						[4]: arg1 (copied, readonly)
						[5]: var477_upvw (copied, read and write)
						[6]: HighlightSlot_upvr (copied, readonly)
					]]
					-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
					-- KONSTANTERROR: [0] 1. Error Block 37 start (CF ANALYSIS FAILED)
					local var502
					local function INLINED_3() -- Internal function, doesn't exist in bytecode
						var502 = var475_upvw
						return var502
					end
					if not var502 or not INLINED_3() then return end
					if arg1_12.UserInputType ~= Enum.UserInputType.Touch then
						var502 = false
					else
						var502 = true
					end
					if arg1_12.UserInputType ~= Enum.UserInputType.MouseMovement then
					else
					end
					-- KONSTANTERROR: [0] 1. Error Block 37 end (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [22] 17. Error Block 13 start (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [22] 17. Error Block 13 end (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [23] 18. Error Block 14 start (CF ANALYSIS FAILED)
					-- KONSTANTERROR: [23] 18. Error Block 14 end (CF ANALYSIS FAILED)
				end)
			end
			var478_upvw = Services_upvr.UserInputService.InputEnded:Connect(function(arg1_13) -- Line 382
				--[[ Upvalues[18]:
					[1]: var423_upvw (copied, read and write)
					[2]: var474_upvw (copied, read and write)
					[3]: module_upvr_2 (copied, readonly)
					[4]: var473_upvw (copied, read and write)
					[5]: ScrollingFrame_9_upvr (copied, readonly)
					[6]: var476_upvw (copied, read and write)
					[7]: var478_upvw (copied, read and write)
					[8]: var475_upvw (copied, read and write)
					[9]: var477_upvw (copied, read and write)
					[10]: HighlightSlot_upvr (copied, readonly)
					[11]: arg1_11 (readonly)
					[12]: Services_upvr (copied, readonly)
					[13]: arg1 (copied, readonly)
					[14]: ClientResolver_upvr (copied, readonly)
					[15]: tbl_29_upvr (copied, readonly)
					[16]: Server_upvr_2 (copied, readonly)
					[17]: Bottom_upvr_2 (copied, readonly)
					[18]: tbl_21_upvr (copied, readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [5] 5. Error Block 3 start (CF ANALYSIS FAILED)
				do
					return
				end
				-- KONSTANTERROR: [5] 5. Error Block 3 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [6] 6. Error Block 4 start (CF ANALYSIS FAILED)
				module_upvr_2.IsDragging = false
				var473_upvw = false
				ScrollingFrame_9_upvr.ScrollingEnabled = true
				-- KONSTANTERROR: [6] 6. Error Block 4 end (CF ANALYSIS FAILED)
			end)
		end
	end)
end
function tbl_21_upvr.GetHoveredHotbarSlot(arg1, arg2) -- Line 490
	--[[ Upvalues[2]:
		[1]: Bottom_upvr_2 (readonly)
		[2]: tbl_29_upvr (readonly)
	]]
	for _, v_2 in ipairs(Bottom_upvr_2.Hotbar:GetChildren()) do
		if v_2:IsA("TextButton") and v_2.Name ~= "" then
			local AbsolutePosition_6 = v_2.AbsolutePosition
			local AbsoluteSize_5 = v_2.AbsoluteSize
			local var513 = AbsoluteSize_5.Y * 0.2
			if AbsolutePosition_6.X <= arg2.X and arg2.X <= AbsolutePosition_6.X + AbsoluteSize_5.X and AbsolutePosition_6.Y - var513 <= arg2.Y and arg2.Y <= AbsolutePosition_6.Y + AbsoluteSize_5.Y + var513 then
				return v_2.LayoutOrder
			end
		end
	end
	for i_4, v_3 in pairs(tbl_29_upvr) do
		local AbsolutePosition = v_3.AbsolutePosition
		local AbsoluteSize_10 = v_3.AbsoluteSize
		local var519 = AbsoluteSize_10.Y * 0.2
		if AbsolutePosition.X <= arg2.X and arg2.X <= AbsolutePosition.X + AbsoluteSize_10.X and AbsolutePosition.Y - var519 <= arg2.Y and arg2.Y <= AbsolutePosition.Y + AbsoluteSize_10.Y + var519 then
			return i_4
		end
	end
	return nil
end
function tbl_21_upvr.IsHoveringInventory(arg1, arg2) -- Line 526
	--[[ Upvalues[1]:
		[1]: Main_upvr (readonly)
	]]
	local ScrollingFrame_5 = Main_upvr.Centre.Inventory.ScrollingFrame
	local AbsolutePosition_10 = ScrollingFrame_5.AbsolutePosition
	local AbsoluteSize_13 = ScrollingFrame_5.AbsoluteSize
	local var523 = false
	if AbsolutePosition_10.X <= arg2.X then
		var523 = false
		if arg2.X <= AbsolutePosition_10.X + AbsoluteSize_13.X then
			var523 = false
			if AbsolutePosition_10.Y <= arg2.Y then
				if arg2.Y > AbsolutePosition_10.Y + AbsoluteSize_13.Y then
					var523 = false
				else
					var523 = true
				end
			end
		end
	end
	return var523
end
function tbl_21_upvr.BindEquipToggle(arg1) -- Line 534
	if not arg1.UI or typeof(arg1.Data.Location) ~= "number" then
	else
		arg1.UI.MouseButton1Click:Connect(function() -- Line 537
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:EquipOrUnequip()
		end)
	end
end
local ToolBehaviour_upvr = require(script.ToolBehaviour)
function tbl_21_upvr.EquipOrUnequip(arg1) -- Line 542
	--[[ Upvalues[9]:
		[1]: Main_upvr (readonly)
		[2]: LocalPlayer_upvr_2 (readonly)
		[3]: var420_upvw (read and write)
		[4]: var421_upvw (read and write)
		[5]: Server_upvr_2 (readonly)
		[6]: var423_upvw (read and write)
		[7]: PlayerGui_upvr (readonly)
		[8]: Bottom_upvr_2 (readonly)
		[9]: ToolBehaviour_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 6. Error Block 2 start (CF ANALYSIS FAILED)
	do
		return
	end
	-- KONSTANTERROR: [8] 6. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 7. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 7. Error Block 3 end (CF ANALYSIS FAILED)
end
UserInputService_2.LastInputTypeChanged:Connect(function(arg1) -- Line 599
	--[[ Upvalues[2]:
		[1]: var423_upvw (read and write)
		[2]: PlayerGui_upvr (readonly)
	]]
	if arg1 == Enum.UserInputType.Gamepad1 then
		var423_upvw = true
		PlayerGui_upvr.Main.Bottom.ConsoleTip.Visible = true
	end
end)
if UserInputService_2:GetLastInputType() == Enum.UserInputType.Gamepad1 then
	var423_upvw = true
	PlayerGui_upvr.Main.Bottom.ConsoleTip.Visible = true
end
local any_Resolve_result1_5_upvr = ClientResolver_upvr.Resolve("Profile", "Inventory")
if not any_Resolve_result1_5_upvr then
	warn("Inventory setup failed: Inventory data does not exist")
	return nil
end
for i_5 = 1, 10 do
	if tbl_29_upvr[i_5] then
		tbl_29_upvr[i_5].Visible = true
	end
end
for _, v_4 in pairs(any_Resolve_result1_5_upvr) do
	if typeof(v_4.Location) == "number" then
		local Location_5 = v_4.Location
		if tbl_29_upvr[Location_5] then
			tbl_29_upvr[Location_5].Visible = false
		end
	end
end
for i_7, v_5 in pairs(any_Resolve_result1_5_upvr) do
	if v_5.Location ~= "Shop" then
		tbl_21_upvr.new(i_7, v_5):Render()
	end
end
ClientResolver_upvr.OnArraySet("Profile", "Inventory", function(arg1, arg2) -- Line 636
	--[[ Upvalues[2]:
		[1]: tbl_21_upvr (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	if arg2 then
		tbl_21_upvr.new(arg1, arg2):Render()
	else
		module_upvr_2:DeleteItem(arg1)
	end
end)
ClientResolver_upvr.OnArraySet("Profile", "Index", function(arg1, arg2) -- Line 648
	--[[ Upvalues[4]:
		[1]: Utils_upvr_2 (readonly)
		[2]: Library_upvr (readonly)
		[3]: ReplicatedStorage_upvr (readonly)
		[4]: PlayerGui_upvr (readonly)
	]]
	if arg1 and arg2 then
		local var537 = Library_upvr.Items.Loot[Utils_upvr_2.SplitDash(arg1)[2]]
		local Rarity_5 = var537.Rarity
		local clone_2_upvr = ReplicatedStorage_upvr.Resources.Interface.NewIndexFrame:Clone()
		clone_2_upvr.Action.ItemName.Text = var537.Name
		clone_2_upvr.Action.Rarity.Text = Rarity_5
		ReplicatedStorage_upvr.Resources.RarityGradients[Rarity_5]:Clone().Parent = clone_2_upvr.Action.Rarity
		clone_2_upvr.Action.ItemImage.Image = var537.Image
		clone_2_upvr.Parent = PlayerGui_upvr.Main.Top.NewIndex
		Utils_upvr_2.PlaySound(ReplicatedStorage_upvr.Resources.Sounds.SFX.Index)
		Utils_upvr_2.Animation(clone_2_upvr, {
			Size = UDim2.new(0.192, 0, 0.9, 0);
		}, 0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
		task.wait(0.25)
		local Position = clone_2_upvr.Action.Position
		Utils_upvr_2.Animation(clone_2_upvr.Action, {
			Position = UDim2.new(Position.X.Scale, 0, Position.Y.Scale - 0.15, 0);
		}, 0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 4, true, 0, function() -- Line 687
			--[[ Upvalues[2]:
				[1]: Utils_upvr_2 (copied, readonly)
				[2]: clone_2_upvr (readonly)
			]]
			Utils_upvr_2.Animation(clone_2_upvr, {
				Size = UDim2.new({0, 0}, {0, 0});
			}, 0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0, function() -- Line 697
				--[[ Upvalues[1]:
					[1]: clone_2_upvr (copied, readonly)
				]]
				clone_2_upvr:Destroy()
			end)
		end)
	end
end)
InputController.Bind(Enum.UserInputType.MouseButton1, function() -- Line 707
	--[[ Upvalues[1]:
		[1]: var421_upvw (read and write)
	]]
	if var421_upvw and var421_upvw.Activated then
		var421_upvw:Activated()
	end
end)
InputController.Bind(Enum.KeyCode.ButtonR2, function() -- Line 713
	--[[ Upvalues[1]:
		[1]: var421_upvw (read and write)
	]]
	if var421_upvw and var421_upvw.Activated then
		var421_upvw:Activated()
	end
end)
InputController.Bind(Enum.UserInputType.Touch, function() -- Line 719
	--[[ Upvalues[1]:
		[1]: var421_upvw (read and write)
	]]
	if var421_upvw and var421_upvw.Activated then
		var421_upvw:Activated()
	end
end)
UIController_upvr.bindButton(Main_upvr.Centre.Inventory.ExitButton, true, {function() -- Line 729
	--[[ Upvalues[2]:
		[1]: UIController_upvr (readonly)
		[2]: Main_upvr (readonly)
	]]
	UIController_upvr.toggleFrame(Main_upvr.Centre.Inventory)
end})
local tbl_10 = {}
local Notifications_upvr = require(script.Parent.Notifications)
tbl_10[1] = function() -- Line 767
	--[[ Upvalues[4]:
		[1]: Main_upvr (readonly)
		[2]: var422_upvw (read and write)
		[3]: Utils_upvr_2 (readonly)
		[4]: Notifications_upvr (readonly)
	]]
	if not var422_upvw then
		var422_upvw = true
		Utils_upvr_2.Animation(Main_upvr.Centre.Inventory.LockButton, {
			BackgroundColor3 = Color3.fromRGB(255, 0, 0);
		}, 0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		Notifications_upvr.createNotification("Click on items to lock them", "Green")
	else
		var422_upvw = false
		Utils_upvr_2.Animation(Main_upvr.Centre.Inventory.LockButton, {
			BackgroundColor3 = Color3.fromRGB(17, 17, 17);
		}, 0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	end
end
UIController_upvr.bindButton(Main_upvr.Centre.Inventory.LockButton, true, tbl_10)
InputController.Bind(Enum.KeyCode.Backquote, function() -- Line 800
	--[[ Upvalues[2]:
		[1]: UIController_upvr (readonly)
		[2]: Main_upvr (readonly)
	]]
	UIController_upvr.toggleFrame(Main_upvr.Centre.Inventory)
end)
local TouchEnabled = UserInputService_2.TouchEnabled
if TouchEnabled then
	TouchEnabled = not UserInputService_2.KeyboardEnabled
end
if TouchEnabled then
	Main_upvr.Centre.Inventory:GetPropertyChangedSignal("Visible"):Connect(function() -- Line 859
		--[[ Upvalues[1]:
			[1]: PlayerGui_upvr (readonly)
		]]
		local Hotbar_4 = PlayerGui_upvr.Main.Bottom:FindFirstChild("Hotbar")
		if Hotbar_4 and not Hotbar_4.Visible then
			Hotbar_4.Visible = true
		end
	end)
end
TextBox_upvr:GetPropertyChangedSignal("Text"):Connect(function() -- Line 868
	--[[ Upvalues[2]:
		[1]: TextBox_upvr (readonly)
		[2]: ScrollingFrame_9_upvr (readonly)
	]]
	local any_lower_result1 = TextBox_upvr.Text:lower()
	for _, v_6 in pairs(ScrollingFrame_9_upvr:GetChildren()) do
		if v_6:IsA("TextButton") and v_6:FindFirstChild("ItemName") then
			local var571 = true
			if any_lower_result1 ~= "" then
				var571 = string.find(v_6.ItemName.Text:lower(), any_lower_result1, 1, true)
			end
			v_6.Visible = var571
		end
	end
end)
ReplicatedStorage_upvr.Remotes.Client.Inventory.OnClientEvent:Connect(function(arg1, arg2) -- Line 879
	--[[ Upvalues[6]:
		[1]: Registry_upvr_2 (readonly)
		[2]: Bottom_upvr_2 (readonly)
		[3]: Main_upvr (readonly)
		[4]: Utils_upvr_2 (readonly)
		[5]: Library_upvr (readonly)
		[6]: ReplicatedStorage_upvr (readonly)
	]]
	if arg1 == "AmountChanged" then
		local any_Get_result1_2 = Registry_upvr_2.Get(arg2[1])
		if any_Get_result1_2 then
			any_Get_result1_2.UI.ItemName.Text = any_Get_result1_2.Meta.Name.." x"..arg2[2]
		end
	elseif arg1 == "SetToInventory" then
		local Hotbar_3 = Bottom_upvr_2.Hotbar
		local _1_5 = arg2[1]
		local SOME_4 = Hotbar_3:FindFirstChild(_1_5)
		if SOME_4 then
			SOME_4.Parent = Main_upvr.Centre.Inventory.ScrollingFrame
			Hotbar_3["EmptySlot"..tostring(arg2[2])].Visible = true
		end
		local Rarity_2 = Library_upvr.Items.Loot[Utils_upvr_2.SplitDash(_1_5)[2]].Rarity
		if Rarity_2 then
			local SOME_10 = ReplicatedStorage_upvr.Resources.RarityGradients:FindFirstChild(Rarity_2)
			if SOME_10 then
				SOME_10:Clone().Parent = SOME_4
			end
		end
		SOME_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		SOME_4.BackgroundTransparency = 0.65
		local Index = SOME_4:FindFirstChild("Index")
		if Index then
			Index:Destroy()
		end
		return
	end
end)
for i_9_upvr = 1, 10 do
	InputController.Bind(({Enum.KeyCode.One, Enum.KeyCode.Two, Enum.KeyCode.Three, Enum.KeyCode.Four, Enum.KeyCode.Five, Enum.KeyCode.Six, Enum.KeyCode.Seven, Enum.KeyCode.Eight, Enum.KeyCode.Nine, Enum.KeyCode.Zero})[i_9_upvr], function() -- Line 943
		--[[ Upvalues[4]:
			[1]: any_Resolve_result1_5_upvr (readonly)
			[2]: i_9_upvr (readonly)
			[3]: Bottom_upvr_2 (readonly)
			[4]: tbl_21_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local pairs_result1_6, pairs_result2, pairs_result3_3 = pairs(any_Resolve_result1_5_upvr)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [30] 23. Error Block 5 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [30] 23. Error Block 5 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 5. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [30.5]
		-- KONSTANTERROR: [5] 5. Error Block 2 end (CF ANALYSIS FAILED)
	end)
	local _
end
local AutoSort = Main_upvr.Centre.Inventory.AutoSort
local function sortInventory_upvr(arg1) -- Line 963, Named "sortInventory"
	--[[ Upvalues[4]:
		[1]: ClientResolver_upvr (readonly)
		[2]: ScrollingFrame_9_upvr (readonly)
		[3]: Utils_upvr_2 (readonly)
		[4]: Library_upvr (readonly)
	]]
	local tbl_17 = {}
	local any_Resolve_result1 = ClientResolver_upvr.Resolve("Profile", "Inventory")
	for _, v_7 in pairs(ScrollingFrame_9_upvr:GetChildren()) do
		if v_7:IsA("TextButton") then
			if v_7:FindFirstChild("ItemName") then
				local any_SplitDash_result1_2 = Utils_upvr_2.SplitDash(v_7.Name)
				if any_SplitDash_result1_2 then
					local var601
					if any_SplitDash_result1_2[1] == "Loot" then
						var601 = Library_upvr
						var601 = var601.Items
						var601 = var601.Loot
						local var602 = var601[any_SplitDash_result1_2[2]]
						var601 = any_Resolve_result1
						if var601 then
							var601 = any_Resolve_result1[v_7.Name]
						end
						if var602 and var601 then
							local tbl_6 = {
								frame = v_7;
								rarity = var602.Rarity;
								weight = var601.Weight or 0;
							}
							local Mutations_2 = var601.Mutations
							if not Mutations_2 then
								Mutations_2 = {}
							end
							tbl_6.mutations = Mutations_2
							table.insert(tbl_17, tbl_6)
						end
					end
				end
			end
		end
	end
	if arg1 == "Rarity" then
		table.sort(tbl_17, function(arg1_14, arg2) -- Line 988
			--[[ Upvalues[1]:
				[1]: Library_upvr (copied, readonly)
			]]
			local var606 = Library_upvr.RarityOrder[arg1_14.rarity] or 0
			local var607 = Library_upvr.RarityOrder[arg2.rarity]
			local var608 = var607 or 0
			if var606 ~= var608 then
				if var608 >= var606 then
					var607 = false
				else
					var607 = true
				end
				return var607
			end
			if arg2.weight >= arg1_14.weight then
				var607 = false
			else
				var607 = true
			end
			return var607
		end)
	elseif arg1 == "Weight" then
		table.sort(tbl_17, function(arg1_15, arg2) -- Line 995
			local var610
			if arg2.weight >= arg1_15.weight then
				var610 = false
			else
				var610 = true
			end
			return var610
		end)
	elseif arg1 == "Mutation" then
		table.sort(tbl_17, function(arg1_16, arg2) -- Line 999
			--[[ Upvalues[1]:
				[1]: Library_upvr (copied, readonly)
			]]
			local _1_7 = arg1_16.mutations[1]
			local mutations = arg2.mutations
			local _1_8 = mutations[1]
			local var615
			if _1_7 then
				var615 = Library_upvr
				var615 = var615.Values
				var615 = var615.Mutations
				mutations = var615[_1_7]
				if not mutations then
					mutations = 0
					-- KONSTANTWARNING: GOTO [17] #14
				end
			else
				mutations = 0
			end
			if _1_8 then
				var615 = Library_upvr.Values.Mutations[_1_8]
				if not var615 then
					var615 = 0
					-- KONSTANTWARNING: GOTO [28] #23
				end
			else
				var615 = 0
				local var616
			end
			if mutations ~= var615 then
				if var615 >= mutations then
					var616 = false
				else
					var616 = true
				end
				return var616
			end
			if arg2.weight >= arg1_16.weight then
				var616 = false
			else
				var616 = true
			end
			return var616
		end)
	end
	for i_11, v_8 in ipairs(tbl_17) do
		v_8.frame.LayoutOrder = i_11
	end
end
local Rarity_3 = AutoSort:FindFirstChild("Rarity")
local Weight_2 = AutoSort:FindFirstChild("Weight")
local Mutation_2 = AutoSort:FindFirstChild("Mutation")
if Rarity_3 then
	UIController_upvr.bindButton(Rarity_3, true, {function() -- Line 1019
		--[[ Upvalues[1]:
			[1]: sortInventory_upvr (readonly)
		]]
		sortInventory_upvr("Rarity")
	end})
end
if Weight_2 then
	UIController_upvr.bindButton(Weight_2, true, {function() -- Line 1023
		--[[ Upvalues[1]:
			[1]: sortInventory_upvr (readonly)
		]]
		sortInventory_upvr("Weight")
	end})
end
if Mutation_2 then
	UIController_upvr.bindButton(Mutation_2, true, {function() -- Line 1027
		--[[ Upvalues[1]:
			[1]: sortInventory_upvr (readonly)
		]]
		sortInventory_upvr("Mutation")
	end})
end
function module_upvr_2.SaveCurrentOrder(arg1, arg2) -- Line 1033
	--[[ Upvalues[1]:
		[1]: ScrollingFrame_9_upvr (readonly)
	]]
	for _, v_9 in ipairs(ScrollingFrame_9_upvr:GetChildren()) do
		if v_9:IsA("TextButton") then
			if v_9.Name ~= "" then
				arg2[v_9.Name] = v_9.LayoutOrder
			end
		end
	end
end
function module_upvr_2.ApplySavedOrder(arg1, arg2) -- Line 1042
	--[[ Upvalues[1]:
		[1]: ScrollingFrame_9_upvr (readonly)
	]]
	for _, v_10 in ipairs(ScrollingFrame_9_upvr:GetChildren()) do
		if v_10:IsA("TextButton") then
			if arg2[v_10.Name] then
				v_10.LayoutOrder = arg2[v_10.Name]
			end
		end
	end
end
function module_upvr_2.GetSavedInventoryOrder(arg1) -- Line 1051
	--[[ Upvalues[1]:
		[1]: tbl_27_upvr (readonly)
	]]
	return tbl_27_upvr
end
local module_upvr_3 = {}
function module_upvr_2.GetSavedVaultOrder(arg1) -- Line 1055
	--[[ Upvalues[1]:
		[1]: module_upvr_3 (readonly)
	]]
	return module_upvr_3
end
function module_upvr_2.RefreshUI(arg1) -- Line 1060
	--[[ Upvalues[5]:
		[1]: module_upvr_2 (readonly)
		[2]: tbl_27_upvr (readonly)
		[3]: ScrollingFrame_9_upvr (readonly)
		[4]: ClientResolver_upvr (readonly)
		[5]: tbl_21_upvr (readonly)
	]]
	module_upvr_2:SaveCurrentOrder(tbl_27_upvr)
	for _, v_11 in ipairs(ScrollingFrame_9_upvr:GetChildren()) do
		if v_11:IsA("TextButton") or v_11:IsA("Frame") then
			v_11:Destroy()
		end
	end
	local any_Resolve_result1_2 = ClientResolver_upvr.Resolve("Profile", "Inventory")
	if not any_Resolve_result1_2 then
	else
		for i_16, v_13 in pairs(any_Resolve_result1_2) do
			if v_13.Location == "Inventory" then
				tbl_21_upvr.new(i_16, v_13):Render()
			end
		end
		module_upvr_2:ApplySavedOrder(tbl_27_upvr)
	end
end
module_upvr_2.ItemClass = tbl_21_upvr
return module_upvr_2