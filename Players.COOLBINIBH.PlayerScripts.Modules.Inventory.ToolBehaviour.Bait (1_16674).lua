-- Name: Bait
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.Inventory.ToolBehaviour.Bait
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5657468999997946 seconds

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
-- Decompiled on 2026-04-10 16:49:18
-- Luau version 6, Types version 3
-- Time taken: 0.011982 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
module_upvr.Type = "Bait"
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local LocalPlayer_upvr = require(ReplicatedStorage_upvr.Modules.Services).Players.LocalPlayer
local _ = LocalPlayer_upvr:WaitForChild("PlayerGui"):WaitForChild("Main")
local Zone = require(ReplicatedStorage_upvr.Modules.Zone)
local ClientResolver_upvr = require(ReplicatedStorage_upvr.Modules.ClientResolver)
local Character_upvr = LocalPlayer_upvr.Character
if not Character_upvr then
	Character_upvr = LocalPlayer_upvr.CharacterAdded:Wait()
end
local tbl_upvr = {}
for _, v in ipairs(workspace:WaitForChild("PlacementZones"):GetChildren()) do
	({})[tonumber(v.Name)] = Zone.new(v)
	local var17_upvr
end
function module_upvr.new(arg1, arg2) -- Line 37
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	setmetatable_result1.Player = arg1
	setmetatable_result1.ToolData = arg2
	setmetatable_result1.PreviewPart = nil
	setmetatable_result1.UpdateConnection = nil
	return setmetatable_result1
end
local RunService_upvr = game:GetService("RunService")
function module_upvr.Equip(arg1) -- Line 46
	--[[ Upvalues[2]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: RunService_upvr (readonly)
	]]
	local TapIndicator = ReplicatedStorage_upvr.Resources.Placeholders:FindFirstChild("TapIndicator")
	if not TapIndicator then
	else
		arg1.PreviewPart = TapIndicator:Clone()
		arg1.PreviewPart.Transparency = 0.5
		arg1.PreviewPart.Anchored = true
		arg1.PreviewPart.CanCollide = false
		arg1.PreviewPart.Parent = workspace
		for _, v_4 in arg1.PreviewPart:GetDescendants() do
			if v_4:IsA("BasePart") then
				v_4.Transparency = 0.5
			end
		end
		arg1.UpdateConnection = RunService_upvr.RenderStepped:Connect(function() -- Line 62
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:UpdatePreviewFromCursor()
		end)
	end
end
local UserInputService_upvr = game:GetService("UserInputService")
local CurrentCamera_upvr = workspace.CurrentCamera
function module_upvr.UpdatePreviewFromCursor(arg1) -- Line 67
	--[[ Upvalues[2]:
		[1]: UserInputService_upvr (readonly)
		[2]: CurrentCamera_upvr (readonly)
	]]
	local any_GetMouseLocation_result1 = UserInputService_upvr:GetMouseLocation()
	local any_ViewportPointToRay_result1 = CurrentCamera_upvr:ViewportPointToRay(any_GetMouseLocation_result1.X, any_GetMouseLocation_result1.Y)
	local RaycastParams_new_result1_3 = RaycastParams.new()
	RaycastParams_new_result1_3.FilterDescendantsInstances = {arg1.Player.Character, arg1.PreviewPart}
	RaycastParams_new_result1_3.FilterType = Enum.RaycastFilterType.Blacklist
	RaycastParams_new_result1_3.IgnoreWater = true
	local workspace_Raycast_result1_2 = workspace:Raycast(any_ViewportPointToRay_result1.Origin, any_ViewportPointToRay_result1.Direction * 1000, RaycastParams_new_result1_3)
	if workspace_Raycast_result1_2 then
		local Position = workspace_Raycast_result1_2.Position
		local any_CanPlaceHere_result1_2 = arg1:CanPlaceHere(Position)
		local var43
		if any_CanPlaceHere_result1_2 then
			var43 = any_CanPlaceHere_result1_2[1]
			if var43 then
				var43 = arg1:SetPreviewColor
				var43(Color3.fromRGB(100, 255, 100))
			else
				var43 = arg1:SetPreviewColor
				var43(Color3.fromRGB(255, 100, 100))
			end
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var43 = var43.Position
				var43 = any_CanPlaceHere_result1_2[2]
				return var43
			end
			if not any_CanPlaceHere_result1_2[2] or not INLINED_2() then
				var43 = Position
			end
			arg1.PreviewPart.Position = var43
		end
	end
end
function module_upvr.SetPreviewColor(arg1, arg2) -- Line 96
	arg1.PreviewPart.Color = arg2
	for _, v_2 in pairs(arg1.PreviewPart:GetChildren()) do
		if v_2:IsA("BasePart") then
			v_2.Color = arg2
		end
	end
end
function module_upvr.CanPlaceHere(arg1, arg2) -- Line 105
	--[[ Upvalues[3]:
		[1]: ClientResolver_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: var17_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 39 start (CF ANALYSIS FAILED)
	local CollectionService = game:GetService("CollectionService")
	local RaycastParams_new_result1_2 = RaycastParams.new()
	RaycastParams_new_result1_2.FilterDescendantsInstances = {arg1.Player.Character, arg1.PreviewPart}
	RaycastParams_new_result1_2.FilterType = Enum.RaycastFilterType.Blacklist
	RaycastParams_new_result1_2.IgnoreWater = true
	local workspace_Raycast_result1_3 = workspace:Raycast(arg2 + Vector3.new(0, 10, 0), Vector3.new(0, -20, 0), RaycastParams_new_result1_2)
	if not workspace_Raycast_result1_3 or not workspace_Raycast_result1_3.Instance then
		return {false, workspace_Raycast_result1_3}
	end
	if workspace_Raycast_result1_3.Instance:IsA("Terrain") then
		return {false, workspace_Raycast_result1_3}
	end
	if arg2.Y + 2 <= workspace_Raycast_result1_3.Position.Y then
		return {false, workspace_Raycast_result1_3}
	end
	if CollectionService:HasTag(workspace_Raycast_result1_3.Instance, "Placeable") == false and CollectionService:HasTag(workspace_Raycast_result1_3.Instance, "Placeable2") == false and CollectionService:HasTag(workspace_Raycast_result1_3.Instance, "SplashPart") == false then
		return {false, workspace_Raycast_result1_3}
	end
	local ipairs_result1_2, ipairs_result2, ipairs_result3 = ipairs(ClientResolver_upvr.Resolve("SCache", "Plots"))
	-- KONSTANTERROR: [0] 1. Error Block 39 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [131] 89. Error Block 16 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [131] 89. Error Block 16 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [122] 83. Error Block 14 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [131.16]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [131.2147483650]
	-- KONSTANTERROR: [122] 83. Error Block 14 end (CF ANALYSIS FAILED)
end
local Registry_upvr = require(LocalPlayer_upvr.PlayerScripts.Modules.Inventory.Registry)
local TweenService_upvr = game:GetService("TweenService")
local Utils_upvr = require(ReplicatedStorage_upvr.Modules.Utils)
local Library_upvr = require(ReplicatedStorage_upvr.Modules.Library)
function module_upvr.Activated(arg1) -- Line 159
	--[[ Upvalues[9]:
		[1]: ClientResolver_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: Registry_upvr (readonly)
		[4]: Character_upvr (readonly)
		[5]: TweenService_upvr (readonly)
		[6]: Utils_upvr (readonly)
		[7]: Library_upvr (readonly)
		[8]: tbl_upvr (readonly)
		[9]: ReplicatedStorage_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 2 start (CF ANALYSIS FAILED)
	do
		return
	end
	-- KONSTANTERROR: [3] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 3 end (CF ANALYSIS FAILED)
end
function module_upvr.Unequip(arg1) -- Line 294
	if arg1.PreviewPart then
		arg1.PreviewPart:Destroy()
		arg1.PreviewPart = nil
	end
	if arg1.UpdateConnection then
		arg1.UpdateConnection:Disconnect()
		arg1.UpdateConnection = nil
	end
end
task.spawn(function() -- Line 306
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	while task.wait(1) do
		task.spawn(function() -- Line 308
			--[[ Upvalues[1]:
				[1]: tbl_upvr (copied, readonly)
			]]
			for i_3, v_3 in pairs(tbl_upvr) do
				if v_3 <= os.time() then
					i_3:Destroy()
					tbl_upvr[i_3] = nil
				end
			end
		end)
	end
end)
return module_upvr