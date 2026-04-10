-- Name: Hammer
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.Inventory.ToolBehaviour.Hammer
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5581252000010863 seconds

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
-- Decompiled on 2026-04-10 16:49:17
-- Luau version 6, Types version 3
-- Time taken: 0.009425 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
module_upvr.Type = "Hammer"
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Services_upvr = require(ReplicatedStorage.Modules.Services)
local Zone = require(ReplicatedStorage.Modules.Zone)
local PlacementZones_upvr = workspace:WaitForChild("PlacementZones")
local Registry_upvr = require(ReplicatedStorage.Modules.ItemVisuals.Cage.Registry)
local UIController_upvr = require(script.Parent.Parent.Parent.Parent.UIController)
local DeleteConfirmation_upvr = Services_upvr.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Main").Centre.DeleteConfirmation
local var15_upvw = false
local var16_upvw = false
local tbl = {}
for _, v in ipairs(PlacementZones_upvr:GetChildren()) do
	tbl[tonumber(v.Name)] = Zone.new(v)
end
function module_upvr.new(arg1, arg2) -- Line 37
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	setmetatable_result1.Player = arg1
	setmetatable_result1.ToolData = arg2
	setmetatable_result1.SelectableCages = nil
	setmetatable_result1.SelectedCages = nil
	return setmetatable_result1
end
function module_upvr.Equip(arg1) -- Line 47
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
	arg1._hoverConnection = Services_upvr.RunService.RenderStepped:Connect(function() -- Line 56
		--[[ Upvalues[3]:
			[1]: mouse_upvr (readonly)
			[2]: Services_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		local Target = mouse_upvr.Target
		local var37
		if not Target then
		else
			var37 = nil
			if Services_upvr.CollectionService:HasTag(Target, "Cage") then
				var37 = Target
			elseif Target.Parent and Services_upvr.CollectionService:HasTag(Target.Parent, "Cage") then
				var37 = Target.Parent
			end
			if var37 and table.find(arg1.SelectableCages, var37) then
				if arg1._lastHighlightedCage and arg1._lastHighlightedCage ~= var37 then
					for _, v_4 in ipairs(arg1._lastHighlightedCage:GetDescendants()) do
						if v_4:IsA("BasePart") or v_4:IsA("UnionOperation") then
							if arg1._originalColors[v_4] then
								v_4.Color = arg1._originalColors[v_4]
							end
						end
					end
					arg1._originalColors = {}
				end
				for _, v_5 in ipairs(var37:GetDescendants()) do
					if v_5:IsA("BasePart") or v_5:IsA("UnionOperation") then
						if not arg1._originalColors[v_5] then
							arg1._originalColors[v_5] = v_5.Color
						end
						v_5.Color = Color3.fromRGB(255, 0, 0)
					end
				end
				arg1.SelectedCage = var37
				arg1._lastHighlightedCage = var37
				return
			end
			if arg1._lastHighlightedCage then
				for _, v_6 in ipairs(arg1._lastHighlightedCage:GetDescendants()) do
					if v_6:IsA("BasePart") or v_6:IsA("UnionOperation") then
						if arg1._originalColors[v_6] then
							v_6.Color = arg1._originalColors[v_6]
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
local var47_upvw = false
local Notifications_upvr = require(script.Parent.Parent.Parent.Notifications)
function module_upvr.Activated(arg1) -- Line 111
	--[[ Upvalues[7]:
		[1]: var47_upvw (read and write)
		[2]: Registry_upvr (readonly)
		[3]: var16_upvw (read and write)
		[4]: var15_upvw (read and write)
		[5]: UIController_upvr (readonly)
		[6]: DeleteConfirmation_upvr (readonly)
		[7]: Notifications_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 3 start (CF ANALYSIS FAILED)
	var47_upvw = true
	task.delay(0.5, function() -- Line 116
		--[[ Upvalues[1]:
			[1]: var47_upvw (copied, read and write)
		]]
		var47_upvw = false
	end)
	print(arg1.SelectedCage)
	local any_Get_result1 = Registry_upvr.Get(arg1.SelectedCage.Name)
	print(any_Get_result1)
	-- KONSTANTERROR: [5] 5. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [31] 24. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [31] 24. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [48] 36. Error Block 6 start (CF ANALYSIS FAILED)
	Notifications_upvr.createNotification("Cooldown, try again in 0.5s", "Red")
	-- KONSTANTERROR: [48] 36. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [54] 41. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [54] 41. Error Block 7 end (CF ANALYSIS FAILED)
end
UIController_upvr.bindButton(DeleteConfirmation_upvr.Confirm, true, {function() -- Line 138
	--[[ Upvalues[5]:
		[1]: var15_upvw (read and write)
		[2]: var16_upvw (read and write)
		[3]: Registry_upvr (readonly)
		[4]: UIController_upvr (readonly)
		[5]: DeleteConfirmation_upvr (readonly)
	]]
	if not var15_upvw then
	else
		if not var16_upvw then return end
		if game.ReplicatedStorage.Remotes.Server.Tool:InvokeServer("Activate", {
			ItemKey = var16_upvw;
			Cage = var15_upvw.Name;
		}) and var15_upvw then
			Registry_upvr.Unregister(var15_upvw.Name)
		end
		UIController_upvr.toggleFrame(DeleteConfirmation_upvr)
		var15_upvw = false
		var16_upvw = false
	end
end})
UIController_upvr.bindButton(DeleteConfirmation_upvr.Cancel, true, {function() -- Line 163
	--[[ Upvalues[4]:
		[1]: DeleteConfirmation_upvr (readonly)
		[2]: UIController_upvr (readonly)
		[3]: var15_upvw (read and write)
		[4]: var16_upvw (read and write)
	]]
	if DeleteConfirmation_upvr.Visible then
		UIController_upvr.toggleFrame(DeleteConfirmation_upvr)
	end
	var15_upvw = false
	var16_upvw = false
end})
function module_upvr.Unequip(arg1) -- Line 174
	if arg1._hoverConnection then
		arg1._hoverConnection:Disconnect()
	end
	local SelectableCages = arg1.SelectableCages
	if not SelectableCages then
		SelectableCages = {}
	end
	for _, v_2 in ipairs(SelectableCages) do
		for _, v_3 in ipairs(v_2:GetDescendants()) do
			if v_3:IsA("BasePart") or v_3:IsA("UnionOperation") then
				if arg1._originalColors and arg1._originalColors[v_3] then
					v_3.Color = arg1._originalColors[v_3]
				end
			end
		end
	end
	arg1.SelectedCage = nil
	arg1._lastHighlightedCage = nil
	arg1._originalColors = {}
end
return module_upvr