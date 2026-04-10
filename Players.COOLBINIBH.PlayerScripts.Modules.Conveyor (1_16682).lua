-- Name: Conveyor
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.Conveyor
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5447334999989835 seconds

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
-- Decompiled on 2026-04-10 16:49:26
-- Luau version 6, Types version 3
-- Time taken: 0.007327 seconds

({}).WalkSpeed = 16
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Belt_upvr = workspace.Conveyor.Visuals.Belt
local Texture_upvr = Belt_upvr.Texture
local tbl_upvr = {}
local Library_upvr = require(ReplicatedStorage_upvr.Modules.Library)
local Utils_upvr = require(ReplicatedStorage_upvr.Modules.Utils)
local ClientResolver_upvr = require(ReplicatedStorage_upvr.Modules.ClientResolver)
local AttributeStacker_upvr = require(ReplicatedStorage_upvr.Modules.AttributeStacker)
local function spawnCage_upvr(arg1, arg2) -- Line 28, Named "spawnCage"
	--[[ Upvalues[7]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: Belt_upvr (readonly)
		[3]: Library_upvr (readonly)
		[4]: Utils_upvr (readonly)
		[5]: ClientResolver_upvr (readonly)
		[6]: AttributeStacker_upvr (readonly)
		[7]: tbl_upvr (readonly)
	]]
	local SOME_2 = ReplicatedStorage_upvr.Resources.Props:FindFirstChild("CageModel"..tostring(arg1))
	if SOME_2 then
		local Start = workspace.Conveyor.Waypoints:FindFirstChild("Start")
		if not Start then return end
		local Position = Start.Position
		local clone_upvr_2 = SOME_2:Clone()
		clone_upvr_2.Name = "Cage-"..arg1..'-'..arg2
		local var13 = Belt_upvr.Position.Y + Belt_upvr.Size.Y / 2 + clone_upvr_2.Size.Y / 2
		clone_upvr_2.CFrame = CFrame.new(Position.X, var13, Position.Z)
		local clone_upvr = ReplicatedStorage_upvr.Resources.Interface.CageTag:Clone()
		clone_upvr.Cage.Text = Library_upvr.Items.Cage[arg1].Name
		clone_upvr.Price.Text = '$'..Utils_upvr.FormatComma(Library_upvr.Items.Cage[arg1].Price)
		local pcall_result1, pcall_result2 = pcall(function() -- Line 60
			--[[ Upvalues[6]:
				[1]: ClientResolver_upvr (copied, readonly)
				[2]: AttributeStacker_upvr (copied, readonly)
				[3]: Library_upvr (copied, readonly)
				[4]: arg1 (readonly)
				[5]: clone_upvr (readonly)
				[6]: Utils_upvr (copied, readonly)
			]]
			local any_GetEnchantmentBoost_result1 = AttributeStacker_upvr.GetEnchantmentBoost("CheaperCages", ClientResolver_upvr.Resolve("Profile", "Enchants"))
			if 0 < any_GetEnchantmentBoost_result1 then
				clone_upvr.Price.Text = '$'..Utils_upvr.FormatComma(Library_upvr.Items.Cage[arg1].Price - Library_upvr.Items.Cage[arg1].Price * any_GetEnchantmentBoost_result1)
			end
		end)
		if not pcall_result1 then
			warn(pcall_result2)
		end
		local Rarity = Library_upvr.Items.Cage[arg1].Rarity
		clone_upvr.Rarity.Text = Rarity
		ReplicatedStorage_upvr.Resources.RarityGradients[Rarity]:Clone().Parent = clone_upvr.Rarity
		clone_upvr.Parent = clone_upvr_2.Information
		local ProximityPrompt = Instance.new("ProximityPrompt")
		ProximityPrompt.ActionText = '$'..Utils_upvr.FormatComma(Library_upvr.Items.Cage[arg1].Price)
		ProximityPrompt.ObjectText = "Buy"
		ProximityPrompt.MaxActivationDistance = 15
		ProximityPrompt.RequiresLineOfSight = false
		ProximityPrompt.Parent = clone_upvr_2
		tbl_upvr["Cage-"..arg1..'-'..arg2] = ProximityPrompt.Triggered:Connect(function() -- Line 88
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
				[3]: ReplicatedStorage_upvr (copied, readonly)
				[4]: Utils_upvr (copied, readonly)
			]]
			if ReplicatedStorage_upvr.Remotes.Server.Conveyor:InvokeServer("Buy", {"Cage-"..arg1..'-'..arg2}) then
				Utils_upvr.PlaySound(ReplicatedStorage_upvr.Resources.Sounds.SFX.Coin, true)
			end
		end)
		clone_upvr_2.Parent = workspace.Conveyor.Models
		Utils_upvr.Animation(clone_upvr_2, {
			CFrame = CFrame.new(workspace.Conveyor.Waypoints.End.Position.X, var13, Position.Z);
		}, 40, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0, function() -- Line 116
			--[[ Upvalues[1]:
				[1]: clone_upvr_2 (readonly)
			]]
			if clone_upvr_2 then
				clone_upvr_2:Destroy()
			end
		end)
	end
end
if Texture_upvr then
	local var26_upvw = 0
	game:GetService("RunService").RenderStepped:Connect(function(arg1) -- Line 127
		--[[ Upvalues[2]:
			[1]: var26_upvw (read and write)
			[2]: Texture_upvr (readonly)
		]]
		var26_upvw += arg1 * 12.5
		Texture_upvr.OffsetStudsV = var26_upvw
	end)
end
ReplicatedStorage_upvr.Remotes.Client.Conveyor.OnClientEvent:Connect(function(arg1, arg2) -- Line 133
	--[[ Upvalues[2]:
		[1]: spawnCage_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	if arg1 == "Start" then
		spawnCage_upvr(arg2[1], arg2[2])
	elseif arg1 == "Sold" then
		local SOME = workspace.Conveyor.Models:FindFirstChild(arg2)
		if SOME then
			if tbl_upvr[arg2] then
				tbl_upvr[arg2]:Disconnect()
				tbl_upvr[arg2] = nil
			end
			SOME:Destroy()
		end
		return
	end
end)
return {}