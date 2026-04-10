-- Name: EventIsland
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.EventIsland
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5515058000000863 seconds

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
-- Decompiled on 2026-04-10 16:49:54
-- Luau version 6, Types version 3
-- Time taken: 0.003072 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local PlayerGui_upvr = require(ReplicatedStorage_upvr.Modules.Services).Players.LocalPlayer.PlayerGui
local ClientResolver_upvr = require(ReplicatedStorage_upvr.Modules.ClientResolver)
local UIController_upvr = require(script.Parent.Parent.UIController)
local EventIslandBuy_upvr = PlayerGui_upvr.Main.Centre.EventIslandBuy
local Notifications_upvr = require(script.Parent.Notifications)
local Server_upvr = ReplicatedStorage_upvr.Remotes.Server
local function toggleZoneBarrier_upvr() -- Line 34, Named "toggleZoneBarrier"
	--[[ Upvalues[7]:
		[1]: ClientResolver_upvr (readonly)
		[2]: ReplicatedStorage_upvr (readonly)
		[3]: PlayerGui_upvr (readonly)
		[4]: UIController_upvr (readonly)
		[5]: EventIslandBuy_upvr (readonly)
		[6]: Notifications_upvr (readonly)
		[7]: Server_upvr (readonly)
	]]
	if not ClientResolver_upvr.Resolve("Profile", "Zones/Zone1") then
		local clone = ReplicatedStorage_upvr.Resources.Interface.EventIslandBuy:Clone()
		clone.Parent = PlayerGui_upvr.SurfaceGui
		clone.Adornee = workspace.EventIslandBuy
		UIController_upvr.bindButton(clone.Frame.Buy, true, {function() -- Line 46
			--[[ Upvalues[2]:
				[1]: UIController_upvr (copied, readonly)
				[2]: EventIslandBuy_upvr (copied, readonly)
			]]
			UIController_upvr.toggleFrame(EventIslandBuy_upvr)
		end})
		UIController_upvr.bindButton(EventIslandBuy_upvr.Confirm, true, {function() -- Line 56
			--[[ Upvalues[5]:
				[1]: ClientResolver_upvr (copied, readonly)
				[2]: Notifications_upvr (copied, readonly)
				[3]: UIController_upvr (copied, readonly)
				[4]: EventIslandBuy_upvr (copied, readonly)
				[5]: Server_upvr (copied, readonly)
			]]
			local any_Resolve_result1 = ClientResolver_upvr.Resolve("Profile", "Cash")
			if not any_Resolve_result1 or not tonumber(any_Resolve_result1) then
			else
				if any_Resolve_result1 < 15000 then
					Notifications_upvr.createNotification("You don't have enough cash to unlock this!", "Red")
					UIController_upvr.toggleFrame(EventIslandBuy_upvr)
					return
				end
				Server_upvr.BuyEventIsland:FireServer()
				UIController_upvr.toggleFrame(EventIslandBuy_upvr)
				workspace.EventIslandBuy:Destroy()
				workspace.EventIslandBarrier:Destroy()
			end
		end})
		UIController_upvr.bindButton(EventIslandBuy_upvr.Cancel, true, {function() -- Line 75
			--[[ Upvalues[2]:
				[1]: UIController_upvr (copied, readonly)
				[2]: EventIslandBuy_upvr (copied, readonly)
			]]
			UIController_upvr.toggleFrame(EventIslandBuy_upvr)
		end})
	else
		workspace.EventIslandBuy:Destroy()
		workspace.EventIslandBarrier:Destroy()
	end
end
local pcall_result1, pcall_result2 = pcall(function() -- Line 86
	--[[ Upvalues[1]:
		[1]: toggleZoneBarrier_upvr (readonly)
	]]
	toggleZoneBarrier_upvr()
end)
if not pcall_result1 then
	warn(pcall_result2)
end
return {}