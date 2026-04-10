-- Name: GlobalPanel
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.GlobalPanel
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5541663000003609 seconds

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
-- Decompiled on 2026-04-10 16:49:34
-- Luau version 6, Types version 3
-- Time taken: 0.009382 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local UIController_upvr = require(script.Parent.Parent.UIController)
local tbl_upvr = {
	AnnouncementTime = 8;
	AdminIds = {6206685940, 7559008125, 333736518};
}
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Main = LocalPlayer_upvr.PlayerGui:WaitForChild("Main")
local GlobalPanel_upvr = Main.Centre.GlobalPanel
local Top_upvr = Main.Top
local TextBox_upvr = GlobalPanel_upvr.MessageInputFrame.TextBox
local Client = ReplicatedStorage_upvr.Remotes.Client
local var11_upvw
local module_upvr = {
	_updateAnnouncementsLayoutOrder = function() -- Line 40, Named "_updateAnnouncementsLayoutOrder"
		--[[ Upvalues[1]:
			[1]: Top_upvr (readonly)
		]]
		for _, v in Top_upvr.GlobalAnnouncement:GetChildren() do
			if v:IsA("TextLabel") then
				v.LayoutOrder += 1
			end
		end
	end;
}
local Utils_upvr = require(ReplicatedStorage_upvr.Modules.Utils)
local GlobalAnnouncement_upvr = ReplicatedStorage_upvr.Resources.Templates.GlobalAnnouncement
function module_upvr._onDisplayGlobalMessage(arg1, arg2, arg3) -- Line 49
	--[[ Upvalues[6]:
		[1]: Utils_upvr (readonly)
		[2]: ReplicatedStorage_upvr (readonly)
		[3]: GlobalAnnouncement_upvr (readonly)
		[4]: module_upvr (readonly)
		[5]: Top_upvr (readonly)
		[6]: tbl_upvr (readonly)
	]]
	Utils_upvr.PlaySound(ReplicatedStorage_upvr.Resources.Sounds.SFX.Notification)
	local clone_upvr = GlobalAnnouncement_upvr:Clone()
	module_upvr._updateAnnouncementsLayoutOrder()
	clone_upvr.RichText = true
	local random_state = Random.new()
	local var22
	if arg2 then
		var22 = ""
	else
		var22 = ""
	end
	local formatted_upvr_2 = string.format("<font color=\"%s\">%s%s: </font>", string.format("#%02X%02X%02X", random_state:NextInteger(150, 255), random_state:NextInteger(150, 255), random_state:NextInteger(150, 255)), arg1, var22)
	clone_upvr.Text = formatted_upvr_2
	clone_upvr.Parent = Top_upvr.GlobalAnnouncement
	task.spawn(function() -- Line 77
		--[[ Upvalues[3]:
			[1]: arg3 (readonly)
			[2]: clone_upvr (readonly)
			[3]: formatted_upvr_2 (readonly)
		]]
		for i_2 = 1, #arg3 do
			clone_upvr.Text = formatted_upvr_2..string.sub(arg3, 1, i_2)
			task.wait(0.03)
		end
	end)
	task.delay(tbl_upvr.AnnouncementTime, function() -- Line 85
		--[[ Upvalues[2]:
			[1]: Utils_upvr (copied, readonly)
			[2]: clone_upvr (readonly)
		]]
		Utils_upvr.Animation(clone_upvr, {
			TextTransparency = 1;
		}, 0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		Utils_upvr.Animation(clone_upvr.UIStroke, {
			Transparency = 1;
		}, 0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0, function() -- Line 102
			--[[ Upvalues[1]:
				[1]: clone_upvr (copied, readonly)
			]]
			clone_upvr:Destroy()
		end)
	end)
end
function module_upvr._reset() -- Line 109
	--[[ Upvalues[2]:
		[1]: TextBox_upvr (readonly)
		[2]: var11_upvw (read and write)
	]]
	TextBox_upvr.Text = ""
	var11_upvw = ""
end
function module_upvr._getCurrentInput() -- Line 114
	--[[ Upvalues[1]:
		[1]: TextBox_upvr (readonly)
	]]
	return TextBox_upvr.Text:lower()
end
local Options_upvr = GlobalPanel_upvr.Options
local var31_upvw
function module_upvr._setAllOptions() -- Line 118
	--[[ Upvalues[3]:
		[1]: Options_upvr (readonly)
		[2]: var11_upvw (read and write)
		[3]: var31_upvw (read and write)
	]]
	for _, v_2_upvr in Options_upvr:GetChildren() do
		if v_2_upvr:IsA("TextButton") then
			local formatted_upvr = `{v_2_upvr.Name:sub(1, 1):lower()}{v_2_upvr.Name:sub(2)}`
			v_2_upvr.MouseButton1Click:Connect(function() -- Line 123
				--[[ Upvalues[4]:
					[1]: var11_upvw (copied, read and write)
					[2]: formatted_upvr (readonly)
					[3]: var31_upvw (copied, read and write)
					[4]: v_2_upvr (readonly)
				]]
				var11_upvw = formatted_upvr
				if var31_upvw then
					local class_UIStroke_2 = var31_upvw:FindFirstChildOfClass("UIStroke")
					if class_UIStroke_2 then
						class_UIStroke_2.Color = Color3.fromRGB(0, 0, 0)
					end
				end
				var31_upvw = v_2_upvr
				local class_UIStroke_3 = v_2_upvr:FindFirstChildOfClass("UIStroke")
				if class_UIStroke_3 then
					class_UIStroke_3.Color = Color3.fromRGB(255, 0, 0)
				end
			end)
		end
	end
end
local Exit_upvr = GlobalPanel_upvr.Header.Exit
local execute_upvr = GlobalPanel_upvr.execute
local Client_2_upvr = require(ReplicatedStorage_upvr.BlinkNetwork.Blink.Client)
local Server_upvr = ReplicatedStorage_upvr.Remotes.Server
function module_upvr._setup() -- Line 139
	--[[ Upvalues[10]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: GlobalPanel_upvr (readonly)
		[4]: module_upvr (readonly)
		[5]: UIController_upvr (readonly)
		[6]: Exit_upvr (readonly)
		[7]: execute_upvr (readonly)
		[8]: Client_2_upvr (readonly)
		[9]: var11_upvw (read and write)
		[10]: Server_upvr (readonly)
	]]
	if not table.find(tbl_upvr.AdminIds, LocalPlayer_upvr.UserId) then
		GlobalPanel_upvr:Destroy()
	else
		module_upvr._setAllOptions()
		UIController_upvr.bindButton(Exit_upvr, true, {function() -- Line 149
			--[[ Upvalues[2]:
				[1]: UIController_upvr (copied, readonly)
				[2]: GlobalPanel_upvr (copied, readonly)
			]]
			UIController_upvr.toggleFrame(GlobalPanel_upvr)
		end})
		execute_upvr.MouseButton1Click:Connect(function() -- Line 151
			--[[ Upvalues[4]:
				[1]: module_upvr (copied, readonly)
				[2]: Client_2_upvr (copied, readonly)
				[3]: var11_upvw (copied, read and write)
				[4]: Server_upvr (copied, readonly)
			]]
			local any__getCurrentInput_result1 = module_upvr._getCurrentInput()
			if typeof(any__getCurrentInput_result1) ~= "string" then
			else
				Client_2_upvr.requestGlobalAction.Fire({
					option = var11_upvw;
					input = any__getCurrentInput_result1;
				})
				print("[GlobalPanel] Sent to Server", Server_upvr.requestGlobalAction:GetFullName())
			end
		end)
	end
end
Client.displayGlobalMessage.OnClientEvent:Connect(module_upvr._onDisplayGlobalMessage)
Client.showGlobalPanel.OnClientEvent:Connect(function() -- Line 163
	--[[ Upvalues[2]:
		[1]: UIController_upvr (readonly)
		[2]: GlobalPanel_upvr (readonly)
	]]
	UIController_upvr.toggleFrame(GlobalPanel_upvr)
end)
module_upvr._setup()
return module_upvr