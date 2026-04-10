-- Name: Cage
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.Inventory.ToolBehaviour.Cage
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5500745999997889 seconds

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
-- Decompiled on 2026-04-10 16:49:16
-- Luau version 6, Types version 3
-- Time taken: 0.008540 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
module_upvr.Type = "Cage"
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer_upvr = require(ReplicatedStorage.Modules.Services).Players.LocalPlayer
local _ = LocalPlayer_upvr:WaitForChild("PlayerGui"):WaitForChild("Main")
local Zone = require(ReplicatedStorage.Modules.Zone)
local ClientResolver_upvr = require(ReplicatedStorage.Modules.ClientResolver)
local tbl_upvr = {}
for _, v in ipairs(workspace:WaitForChild("PlacementZones"):GetChildren()) do
	tbl_upvr[tonumber(v.Name)] = Zone.new(v)
end
function module_upvr.new(arg1, arg2) -- Line 29
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
local Utils_upvr = require(ReplicatedStorage.Modules.Utils)
function module_upvr.Equip(arg1) -- Line 38
	--[[ Upvalues[1]:
		[1]: Utils_upvr (readonly)
	]]
	local _2 = Utils_upvr.SplitDash(arg1.ToolData.Key)[2]
	local SOME = game.ReplicatedStorage.Resources.Props:FindFirstChild("CageModel".._2)
	if not SOME then
	else
		arg1.PreviewPart = SOME:Clone()
		arg1.CageType = _2
		arg1.PreviewPart.Transparency = 0.5
		for _, v_3 in pairs(arg1.PreviewPart:GetChildren()) do
			if v_3:IsA("BasePart") then
				v_3.Transparency = 0.5
			end
		end
		arg1.PreviewPart.CanCollide = false
		arg1.PreviewPart.Anchored = true
		arg1.PreviewPart.Parent = workspace
		arg1.UpdateConnection = game:GetService("RunService").RenderStepped:Connect(function() -- Line 57
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:UpdatePreview()
		end)
	end
end
function module_upvr.UpdatePreview(arg1) -- Line 62
	local Character = arg1.Player.Character
	if not Character or not arg1.PreviewPart then
	else
		local CurrentCamera = workspace.CurrentCamera
		if not CurrentCamera then return end
		local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
		if not HumanoidRootPart then return end
		local LookVector = CurrentCamera.CFrame.LookVector
		local any_CanPlaceHere_result1 = arg1:CanPlaceHere(HumanoidRootPart.Position + Vector3.new(LookVector.X, 0, LookVector.Z).Unit * 7)
		if any_CanPlaceHere_result1 then
			if any_CanPlaceHere_result1[1] then
				arg1:SetPreviewColor(Color3.fromRGB(100, 255, 100))
			else
				arg1:SetPreviewColor(Color3.fromRGB(255, 100, 100))
			end
			local var30
			if any_CanPlaceHere_result1[2] then
				local Position_2 = any_CanPlaceHere_result1[2].Position
				var30 = Position_2.X
				local vector3 = Vector3.new(var30, Position_2.Y + arg1.PreviewPart.Size.Y / 2, Position_2.Z)
				var30 = arg1.Player
				var30 = var30.Character
				if var30 then
					var30 = arg1.Player
					var30 = var30.Character:FindFirstChild("HumanoidRootPart")
				end
				if var30 then
					local Position = var30.Position
					arg1.PreviewPart.CFrame = CFrame.new(vector3, Vector3.new(Position.X, vector3.Y, Position.Z))
				end
			end
		end
	end
end
function module_upvr.SetPreviewColor(arg1, arg2) -- Line 99
	arg1.PreviewPart.Color = arg2
	for _, v_2 in pairs(arg1.PreviewPart:GetChildren()) do
		if v_2:IsA("BasePart") then
			v_2.Color = arg2
		end
	end
end
local Library_upvr = require(ReplicatedStorage.Modules.Library)
function module_upvr.CanPlaceHere(arg1, arg2) -- Line 108
	--[[ Upvalues[4]:
		[1]: Library_upvr (readonly)
		[2]: ClientResolver_upvr (readonly)
		[3]: LocalPlayer_upvr (readonly)
		[4]: tbl_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 40 start (CF ANALYSIS FAILED)
	local RaycastParams_new_result1 = RaycastParams.new()
	RaycastParams_new_result1.FilterDescendantsInstances = {arg1.Player.Character, arg1.PreviewPart}
	RaycastParams_new_result1.FilterType = Enum.RaycastFilterType.Blacklist
	RaycastParams_new_result1.IgnoreWater = true
	local workspace_Raycast_result1 = workspace:Raycast(arg2 + Vector3.new(0, 10, 0), Vector3.new(0, -20, 0), RaycastParams_new_result1)
	if Library_upvr.Regions[Library_upvr.Items.Cage[arg1.CageType].MinRegion].MaxDistance <= arg2.Z - 723.6 then
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
	local ipairs_result1, ipairs_result2, ipairs_result3 = ipairs(ClientResolver_upvr.Resolve("SCache", "Plots"))
	-- KONSTANTERROR: [0] 1. Error Block 40 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [147] 102. Error Block 16 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [147] 102. Error Block 16 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [138] 96. Error Block 14 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [147.14]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [147.2147483650]
	-- KONSTANTERROR: [138] 96. Error Block 14 end (CF ANALYSIS FAILED)
end
local Registry_upvr = require(LocalPlayer_upvr.PlayerScripts.Modules.Inventory.Registry)
function module_upvr.Activated(arg1) -- Line 163
	--[[ Upvalues[3]:
		[1]: ClientResolver_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: Registry_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	local Character_2 = arg1.Player.Character
	if not Character_2 or not arg1.PreviewPart then return end
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 10. Error Block 6 start (CF ANALYSIS FAILED)
	do
		return
	end
	-- KONSTANTERROR: [14] 10. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 11. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 11. Error Block 7 end (CF ANALYSIS FAILED)
end
function module_upvr.Unequip(arg1) -- Line 225
	if arg1.PreviewPart then
		arg1.PreviewPart:Destroy()
		arg1.PreviewPart = nil
	end
	if arg1.UpdateConnection then
		arg1.UpdateConnection:Disconnect()
		arg1.UpdateConnection = nil
	end
end
return module_upvr