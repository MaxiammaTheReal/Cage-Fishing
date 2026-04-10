-- Name: Notifications
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.Notifications
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5495828000002803 seconds

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
-- Decompiled on 2026-04-10 16:49:24
-- Luau version 6, Types version 3
-- Time taken: 0.003214 seconds

local module_upvr = {}
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local tbl_upvr_2 = {}
local tbl_upvr = {
	Green = {
		Primary = Color3.fromRGB(0, 255, 0);
	};
	Red = {
		Primary = Color3.fromRGB(255, 0, 0);
	};
	Blue = {
		Primary = Color3.fromRGB(0, 0, 255);
	};
}
local function updateNotifications_upvr() -- Line 34, Named "updateNotifications"
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	for i, _ in pairs(tbl_upvr_2) do
		tbl_upvr_2[i].TextLabel.Text = i.." (x"..tbl_upvr_2[i].Amount..')'
	end
end
local Utils_upvr = require(ReplicatedStorage_upvr.Modules.Utils)
local Notifications_upvr = game:GetService("Players").LocalPlayer.PlayerGui.Main.Notifications
function module_upvr.createNotification(arg1, arg2) -- Line 40
	--[[ Upvalues[6]:
		[1]: Utils_upvr (readonly)
		[2]: ReplicatedStorage_upvr (readonly)
		[3]: tbl_upvr_2 (readonly)
		[4]: updateNotifications_upvr (readonly)
		[5]: tbl_upvr (readonly)
		[6]: Notifications_upvr (readonly)
	]]
	task.spawn(function() -- Line 41
		--[[ Upvalues[2]:
			[1]: Utils_upvr (copied, readonly)
			[2]: ReplicatedStorage_upvr (copied, readonly)
		]]
		Utils_upvr.PlaySound(ReplicatedStorage_upvr.Resources.Sounds.SFX.Notification)
	end)
	for i_2, _ in pairs(tbl_upvr_2) do
		if i_2 == arg1 then
			local var21 = tbl_upvr_2[i_2]
			var21.Amount += 1
			updateNotifications_upvr()
			return
		end
	end
	task.spawn(function() -- Line 51
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: tbl_upvr (copied, readonly)
			[4]: Notifications_upvr (copied, readonly)
			[5]: Utils_upvr (copied, readonly)
			[6]: tbl_upvr_2 (copied, readonly)
		]]
		local clone = script.ImageLabel:Clone()
		clone.TextLabel.Text = arg1
		if arg2 then
			clone.TextLabel.TextColor3 = tbl_upvr[arg2].Primary
		end
		clone.Parent = Notifications_upvr
		Utils_upvr.Animation(clone, {
			Size = UDim2.new(1, 0, 0.095, 0);
		}, 0.2, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out)
		tbl_upvr_2[arg1] = {
			Amount = 1;
			TextLabel = clone.TextLabel;
		}
		task.wait(3)
		Utils_upvr.Animation(clone, {
			Size = UDim2.new(0, 0, 0.095, 0);
		}, 0.2, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out)
		task.wait(0.2)
		clone:Destroy()
		tbl_upvr_2[arg1] = nil
	end)
end
ReplicatedStorage_upvr.Remotes.Client.Notification.OnClientEvent:Connect(function(arg1, arg2) -- Line 75
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.createNotification(arg1, arg2)
end)
return module_upvr