-- Name: Mover
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.Inventory.ToolBehaviour.Mover
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.6831771000015578 seconds

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
-- Decompiled on 2026-04-10 16:49:19
-- Luau version 6, Types version 3
-- Time taken: 0.022508 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
module_upvr.Type = "Mover"
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Services_upvr = require(ReplicatedStorage_upvr.Modules.Services)
local LocalPlayer_upvr = Services_upvr.Players.LocalPlayer
local _ = LocalPlayer_upvr:WaitForChild("PlayerGui"):WaitForChild("Main")
local Zone = require(ReplicatedStorage_upvr.Modules.Zone)
local ClientResolver_upvr = require(ReplicatedStorage_upvr.Modules.ClientResolver)
local PlacementZones_upvr = workspace:WaitForChild("PlacementZones")
local Registry_upvr = require(ReplicatedStorage_upvr.Modules.ItemVisuals.Cage.Registry)
local Notifications_upvr = require(script.Parent.Parent.Parent.Notifications)
local tbl_upvr = {}
for _, v in ipairs(PlacementZones_upvr:GetChildren()) do
	tbl_upvr[tonumber(v.Name)] = Zone.new(v)
end
local function _() -- Line 35, Named "getPlayerPlotIndex"
	--[[ Upvalues[2]:
		[1]: ClientResolver_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
	]]
	for i_2, v_2 in ipairs(ClientResolver_upvr.Resolve("SCache", "Plots")) do
		if v_2.Player == LocalPlayer_upvr.UserId then
			return i_2
		end
	end
	return nil
end
function module_upvr.new(arg1, arg2) -- Line 47
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	setmetatable_result1.Player = arg1
	setmetatable_result1.ToolData = arg2
	setmetatable_result1.SelectableCages = nil
	setmetatable_result1.SelectedCage = nil
	setmetatable_result1._lastHighlightedCage = nil
	setmetatable_result1._originalColors = {}
	setmetatable_result1._isMoving = false
	setmetatable_result1._cageType = nil
	setmetatable_result1._previewPart = nil
	setmetatable_result1._updateConn = nil
	return setmetatable_result1
end
function module_upvr.Equip(arg1) -- Line 66
	--[[ Upvalues[2]:
		[1]: PlacementZones_upvr (readonly)
		[2]: Services_upvr (readonly)
	]]
	arg1.SelectableCages = workspace.Debris.Players[arg1.Player.Name].Cages:GetChildren()
	arg1.SelectedCage = nil
	arg1._lastHighlightedCage = nil
	arg1._originalColors = {}
	local mouse_upvr = arg1.Player:GetMouse()
	mouse_upvr.TargetFilter = PlacementZones_upvr
	arg1._hoverConnection = Services_upvr.RunService.RenderStepped:Connect(function() -- Line 75
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: mouse_upvr (readonly)
			[3]: Services_upvr (copied, readonly)
		]]
		local var43
		if arg1._isMoving then
		else
			local Target = mouse_upvr.Target
			if not Target then
				var43 = arg1
				var43 = var43._lastHighlightedCage
				if var43 then
					var43 = ipairs(arg1._lastHighlightedCage:GetDescendants())
					local ipairs_result1_3, ipairs_result2, ipairs_result3_7 = ipairs(arg1._lastHighlightedCage:GetDescendants())
					for _, v_5 in ipairs_result1_3, ipairs_result2, ipairs_result3_7 do
						if v_5:IsA("BasePart") or v_5:IsA("UnionOperation") then
							if arg1._originalColors[v_5] then
								v_5.Color = arg1._originalColors[v_5]
							end
						end
					end
					ipairs_result1_3 = arg1
					ipairs_result1_3._lastHighlightedCage = nil
					ipairs_result1_3 = arg1
					ipairs_result1_3._originalColors = {}
				end
				ipairs_result1_3 = arg1
				ipairs_result1_3.SelectedCage = nil
				return
			end
			ipairs_result1_3 = nil
			if Services_upvr.CollectionService:HasTag(Target, "Cage") then
				ipairs_result1_3 = Target
			elseif Target.Parent and Services_upvr.CollectionService:HasTag(Target.Parent, "Cage") then
				ipairs_result1_3 = Target.Parent
			end
			if ipairs_result1_3 and table.find(arg1.SelectableCages, ipairs_result1_3) then
				if arg1._lastHighlightedCage and arg1._lastHighlightedCage ~= ipairs_result1_3 then
					for _, v_6 in ipairs(arg1._lastHighlightedCage:GetDescendants()) do
						if v_6:IsA("BasePart") or v_6:IsA("UnionOperation") then
							if arg1._originalColors[v_6] then
								v_6.Color = arg1._originalColors[v_6]
							end
						end
					end
					arg1._originalColors = {}
				end
				for _, v_7 in ipairs(ipairs_result1_3:GetDescendants()) do
					if v_7:IsA("BasePart") or v_7:IsA("UnionOperation") then
						if not arg1._originalColors[v_7] then
							arg1._originalColors[v_7] = v_7.Color
						end
						v_7.Color = Color3.fromRGB(0, 255, 0)
					end
				end
				arg1.SelectedCage = ipairs_result1_3
				arg1._lastHighlightedCage = ipairs_result1_3
				return
			end
			if arg1._lastHighlightedCage then
				for _, v_8 in ipairs(arg1._lastHighlightedCage:GetDescendants()) do
					if v_8:IsA("BasePart") or v_8:IsA("UnionOperation") then
						if arg1._originalColors[v_8] then
							v_8.Color = arg1._originalColors[v_8]
						end
					end
				end
				arg1._lastHighlightedCage = nil
				arg1._originalColors = {}
			end
			arg1.SelectedCage = nil
		end
	end)
end
function module_upvr._setPreviewColor(arg1, arg2) -- Line 137
	if not arg1._previewPart then
	else
		arg1._previewPart.Color = arg2
		for _, v_9 in pairs(arg1._previewPart:GetChildren()) do
			if v_9:IsA("BasePart") then
				v_9.Color = arg2
			end
		end
	end
end
local Library_upvr = require(ReplicatedStorage_upvr.Modules.Library)
function module_upvr._canPlaceHere(arg1, arg2) -- Line 147
	--[[ Upvalues[4]:
		[1]: Library_upvr (readonly)
		[2]: ClientResolver_upvr (readonly)
		[3]: LocalPlayer_upvr (readonly)
		[4]: tbl_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 54 start (CF ANALYSIS FAILED)
	local RaycastParams_new_result1 = RaycastParams.new()
	RaycastParams_new_result1.FilterDescendantsInstances = {arg1.Player.Character, arg1._previewPart, arg1.SelectedCage}
	RaycastParams_new_result1.FilterType = Enum.RaycastFilterType.Blacklist
	RaycastParams_new_result1.IgnoreWater = true
	local workspace_Raycast_result1 = workspace:Raycast(arg2 + Vector3.new(0, 10, 0), Vector3.new(0, -20, 0), RaycastParams_new_result1)
	local var66 = Library_upvr.Items.Cage[arg1._cageType or '1']
	local var67 = var66
	if var67 then
		var67 = var66.MinRegion
	end
	local var68 = var67
	if var68 then
		var68 = Library_upvr.Regions[var67]
	end
	if not var68 or not var68.MaxDistance then
	end
	if math.huge <= arg2.Z - 723.6 then
		return {false, workspace_Raycast_result1, "fail1"}
	end
	if not workspace_Raycast_result1 or not workspace_Raycast_result1.Instance then
		return {false, workspace_Raycast_result1, "fail2"}
	end
	if workspace_Raycast_result1.Instance:IsA("Terrain") then
		return {false, workspace_Raycast_result1, "fail3"}
	end
	if arg2.Y + 2 <= workspace_Raycast_result1.Position.Y then
		return {false, workspace_Raycast_result1, "fail4"}
	end
	if not game:GetService("CollectionService"):HasTag(workspace_Raycast_result1.Instance, "Placeable") then
		return {false, workspace_Raycast_result1, "fail5"}
	end
	local ipairs_result1_6, ipairs_result2_8, ipairs_result3_3 = ipairs(ClientResolver_upvr.Resolve("SCache", "Plots"))
	-- KONSTANTERROR: [0] 1. Error Block 54 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [156] 110. Error Block 24 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [156] 110. Error Block 24 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [147] 104. Error Block 55 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [156.18]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [156.2147483650]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [156.19]
	if nil == nil then
		-- KONSTANTWARNING: GOTO [159] #112
	end
	-- KONSTANTERROR: [147] 104. Error Block 55 end (CF ANALYSIS FAILED)
end
function module_upvr._updatePreview(arg1) -- Line 199
	if not arg1._previewPart then
	else
		local Character = arg1.Player.Character
		if not Character then return end
		local CurrentCamera_2 = workspace.CurrentCamera
		if not CurrentCamera_2 then return end
		local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
		if not HumanoidRootPart then return end
		local LookVector = CurrentCamera_2.CFrame.LookVector
		local any__canPlaceHere_result1 = arg1:_canPlaceHere(HumanoidRootPart.Position + Vector3.new(LookVector.X, 0, LookVector.Z).Unit * 7)
		if any__canPlaceHere_result1 then
			if any__canPlaceHere_result1[1] then
				arg1:_setPreviewColor(Color3.fromRGB(100, 255, 100))
			else
				arg1:_setPreviewColor(Color3.fromRGB(255, 100, 100))
			end
			if any__canPlaceHere_result1[2] then
				local Position_2 = any__canPlaceHere_result1[2].Position
				local vector3 = Vector3.new(Position_2.X, Position_2.Y + arg1._previewPart.Size.Y / 2, Position_2.Z)
				local Position = HumanoidRootPart.Position
				arg1._previewPart.CFrame = CFrame.new(vector3, Vector3.new(Position.X, vector3.Y, Position.Z))
			end
		end
	end
end
local Utils_upvr = require(ReplicatedStorage_upvr.Modules.Utils)
function module_upvr._beginMove(arg1) -- Line 237
	--[[ Upvalues[4]:
		[1]: Utils_upvr (readonly)
		[2]: ReplicatedStorage_upvr (readonly)
		[3]: Services_upvr (readonly)
		[4]: Notifications_upvr (readonly)
	]]
	if not arg1.SelectedCage then
	else
		arg1._isMoving = true
		arg1._cageType = Utils_upvr.SplitDash(arg1.SelectedCage.Name)[2]
		local SOME = ReplicatedStorage_upvr.Resources.Props:FindFirstChild("CageModel"..arg1._cageType)
		if not SOME then
			warn("[Mover] Missing preview template: CagePreview"..tostring(arg1._cageType))
			arg1._isMoving = false
			return
		end
		arg1._previewPart = SOME:Clone()
		arg1._previewPart.Transparency = 0.5
		for _, v_10 in pairs(arg1._previewPart:GetChildren()) do
			if v_10:IsA("BasePart") then
				v_10.Transparency = 0.5
			end
		end
		arg1._previewPart.CanCollide = false
		arg1._previewPart.Anchored = true
		arg1._previewPart.Parent = workspace
		arg1._updateConn = Services_upvr.RunService.RenderStepped:Connect(function() -- Line 262
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:_updatePreview()
		end)
		Notifications_upvr.createNotification("Choose a new spot, then click again to confirm.", "Green")
	end
end
function module_upvr._confirmMove(arg1) -- Line 269
	--[[ Upvalues[5]:
		[1]: Notifications_upvr (readonly)
		[2]: ClientResolver_upvr (readonly)
		[3]: LocalPlayer_upvr (readonly)
		[4]: Registry_upvr (readonly)
		[5]: ReplicatedStorage_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 53 start (CF ANALYSIS FAILED)
	if not arg1._isMoving or not arg1._previewPart or not arg1.SelectedCage then
		return false
	end
	local Character_2 = arg1.Player.Character
	local CurrentCamera = workspace.CurrentCamera
	local var95 = Character_2
	if var95 then
		var95 = Character_2:FindFirstChild("HumanoidRootPart")
	end
	if not Character_2 or not CurrentCamera or not var95 then
		return false
	end
	local LookVector_2 = CurrentCamera.CFrame.LookVector
	local any__canPlaceHere_result1_2 = arg1:_canPlaceHere(var95.Position + Vector3.new(LookVector_2.X, 0, LookVector_2.Z).Unit * 7)
	if not any__canPlaceHere_result1_2 or not any__canPlaceHere_result1_2[1] then
		Notifications_upvr.createNotification("Invalid spot.", "Red")
		return false
	end
	local ipairs_result1, ipairs_result2_6, ipairs_result3 = ipairs(ClientResolver_upvr.Resolve("SCache", "Plots"))
	-- KONSTANTERROR: [0] 1. Error Block 53 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [85] 64. Error Block 20 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [85] 64. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [76] 58. Error Block 18 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [85.14]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [85.2147483650]
	-- KONSTANTERROR: [76] 58. Error Block 18 end (CF ANALYSIS FAILED)
end
function module_upvr._cancelMove(arg1) -- Line 358
	arg1:_endMove()
end
function module_upvr._endMove(arg1) -- Line 362
	if arg1._updateConn then
		arg1._updateConn:Disconnect()
		arg1._updateConn = nil
	end
	if arg1._inputConn then
		arg1._inputConn:Disconnect()
		arg1._inputConn = nil
	end
	if arg1._previewPart then
		arg1._previewPart:Destroy()
		arg1._previewPart = nil
	end
	arg1._isMoving = false
	arg1._cageType = nil
end
local var101_upvw = false
function module_upvr.Activated(arg1) -- Line 381
	--[[ Upvalues[3]:
		[1]: var101_upvw (read and write)
		[2]: Registry_upvr (readonly)
		[3]: Notifications_upvr (readonly)
	]]
	if arg1._isMoving then
		return arg1:_confirmMove()
	end
	if arg1.SelectedCage then
		if not var101_upvw then
			var101_upvw = true
			task.delay(0.5, function() -- Line 390
				--[[ Upvalues[1]:
					[1]: var101_upvw (copied, read and write)
				]]
				var101_upvw = false
			end)
			local any_Get_result1 = Registry_upvr.Get(arg1.SelectedCage.Name)
			if any_Get_result1 and not any_Get_result1._sunken then
				arg1:_beginMove()
			else
				Notifications_upvr.createNotification("That cage can't be moved right now.", "Red")
			end
		end
		Notifications_upvr.createNotification("Cooldown, try again in 0.5s", "Red")
	else
		Notifications_upvr.createNotification("Look at a cage to move it.", "Green")
	end
end
function module_upvr.Unequip(arg1) -- Line 407
	if arg1._hoverConnection then
		arg1._hoverConnection:Disconnect()
		arg1._hoverConnection = nil
	end
	arg1:_endMove()
	local SelectableCages = arg1.SelectableCages
	if not SelectableCages then
		SelectableCages = {}
	end
	for _, v_3 in ipairs(SelectableCages) do
		for _, v_4 in ipairs(v_3:GetDescendants()) do
			if v_4:IsA("BasePart") or v_4:IsA("UnionOperation") then
				if arg1._originalColors and arg1._originalColors[v_4] then
					v_4.Color = arg1._originalColors[v_4]
				end
			end
		end
	end
	arg1.SelectedCage = nil
	arg1._lastHighlightedCage = nil
	arg1._originalColors = {}
end
return module_upvr