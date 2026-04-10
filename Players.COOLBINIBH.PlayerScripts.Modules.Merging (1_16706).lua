-- Name: Merging
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.Modules.Merging
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5603169000005437 seconds

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
-- Decompiled on 2026-04-10 16:49:50
-- Luau version 6, Types version 3
-- Time taken: 0.012731 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local ClientResolver_upvr = require(ReplicatedStorage_upvr.Modules.ClientResolver)
local Library_upvr = require(ReplicatedStorage_upvr.Modules.Library)
local UIController_upvr = require(script.Parent.Parent.UIController)
local MergeFish_upvr = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("Main").Centre.MergeFish
local ImageLabel_upvr = MergeFish_upvr.ImageLabel
local module_upvr = {
	CurrentSelected = {};
}
local function _(arg1) -- Line 37, Named "GetFishIdByName"
	--[[ Upvalues[1]:
		[1]: Library_upvr (readonly)
	]]
	local var12
	for i, v in next, Library_upvr.Items.Loot do
		if v.Name == arg1 then
			var12 = i
			return var12
		end
	end
	return var12
end
local tbl_upvr = {}
local function Update_upvr() -- Line 51, Named "Update"
	--[[ Upvalues[5]:
		[1]: tbl_upvr (readonly)
		[2]: ImageLabel_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: Library_upvr (readonly)
		[5]: Update_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 37 start (CF ANALYSIS FAILED)
	local var34
	for _, v_2 in var34, tbl_upvr do
		v_2:Disconnect()
	end
	var34 = 0
	for i_3 = 1, 10 do
		if not ImageLabel_upvr.FishToMerge:FindFirstChild(i_3) then
			warn("Mssnig Frame", i_3)
		else
			local var35_upvr = module_upvr.CurrentSelected[i_3]
			if var35_upvr then
				local var36 = Library_upvr.Items.Loot[tonumber(string.split(var35_upvr, '-')[2])]
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				ImageLabel_upvr.FishToMerge:FindFirstChild(i_3).ImageLabel.Image = var36.Image
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert(tbl_upvr, ImageLabel_upvr.FishToMerge:FindFirstChild(i_3).ImageLabel.MouseButton1Down:Connect(function() -- Line 68
					--[[ Upvalues[3]:
						[1]: module_upvr (copied, readonly)
						[2]: var35_upvr (readonly)
						[3]: Update_upvr (copied, readonly)
					]]
					table.remove(module_upvr.CurrentSelected, table.find(module_upvr.CurrentSelected, var35_upvr))
					Update_upvr()
				end))
				var34 += var36.MergeValue
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				ImageLabel_upvr.FishToMerge:FindFirstChild(i_3).ImageLabel.Image = ""
			end
		end
	end
	var35_upvr = nil
	for _, v_3 in next, Library_upvr.Items.Loot, var35_upvr do
		local var38
		if var38 then
			var38 = v_3.MergeValue
			if not var38 then
				var38 = v_3.Value
			end
			if 0 < var38 and var38 <= var34 then
			end
		end
	end
	-- KONSTANTERROR: [0] 1. Error Block 37 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [153] 109. Error Block 27 start (CF ANALYSIS FAILED)
	ImageLabel_upvr.MergedFish.ImageLabel1.Image = ""
	-- KONSTANTERROR: [153] 109. Error Block 27 end (CF ANALYSIS FAILED)
end
local function LoadButtons_upvr() -- Line 105, Named "LoadButtons"
	--[[ Upvalues[5]:
		[1]: ClientResolver_upvr (readonly)
		[2]: ImageLabel_upvr (readonly)
		[3]: Library_upvr (readonly)
		[4]: module_upvr (readonly)
		[5]: Update_upvr (readonly)
	]]
	task.wait(0.5)
	for _, v_4 in next, ImageLabel_upvr.ScrollingFrame:GetChildren() do
		if v_4:IsA("Frame") then
			v_4:Destroy()
		end
	end
	for i_6_upvr, _ in next, ClientResolver_upvr.Resolve("Profile", "Inventory"), nil do
		if string.match(i_6_upvr, "Loot") then
			local var58 = Library_upvr.Items.Loot[tonumber(string.split(i_6_upvr, '-')[2])]
			if var58 and var58.CanMerge then
				local clone = script.Template:Clone()
				clone.Name = i_6_upvr
				clone.Button.Image = var58.Image
				clone.Button.MouseButton1Down:Connect(function() -- Line 126
					--[[ Upvalues[3]:
						[1]: module_upvr (copied, readonly)
						[2]: i_6_upvr (readonly)
						[3]: Update_upvr (copied, readonly)
					]]
					if 10 <= #module_upvr.CurrentSelected or table.find(module_upvr.CurrentSelected, i_6_upvr) then
					else
						table.insert(module_upvr.CurrentSelected, i_6_upvr)
						Update_upvr()
					end
				end)
				clone.Parent = ImageLabel_upvr.ScrollingFrame
			end
		end
	end
	Update_upvr()
end
ClientResolver_upvr.OnArraySet("Profile", "Inventory", function(arg1, arg2) -- Line 138
	--[[ Upvalues[1]:
		[1]: LoadButtons_upvr (readonly)
	]]
	LoadButtons_upvr()
end)
MergeFish_upvr:GetPropertyChangedSignal("Visible"):Connect(function() -- Line 142
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: LoadButtons_upvr (readonly)
	]]
	module_upvr.CurrentSelected = {}
	LoadButtons_upvr()
end)
local var64_upvw = false
local Notifications_upvr = require(script.Parent.Notifications)
ImageLabel_upvr.Merge.MouseButton1Down:Connect(function() -- Line 148
	--[[ Upvalues[4]:
		[1]: var64_upvw (read and write)
		[2]: Notifications_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: ReplicatedStorage_upvr (readonly)
	]]
	if not var64_upvw then
		var64_upvw = true
		task.delay(1, function() -- Line 152
			--[[ Upvalues[1]:
				[1]: var64_upvw (copied, read and write)
			]]
			var64_upvw = false
		end)
	else
		Notifications_upvr.createNotification("Merge cooldown, try again in 1s", "Red")
		return
	end
	if #module_upvr.CurrentSelected < 5 then
		Notifications_upvr.createNotification("Select at least 5 of the same fish!", "Red")
	else
		if 10 < #module_upvr.CurrentSelected or #module_upvr.CurrentSelected == 0 then return end
		ReplicatedStorage_upvr.Remotes.Server.Merging:FireServer(module_upvr.CurrentSelected)
		module_upvr.CurrentSelected = {}
	end
end)
UIController_upvr.bindButton(ImageLabel_upvr.Close, true, {function() -- Line 177
	--[[ Upvalues[2]:
		[1]: UIController_upvr (readonly)
		[2]: MergeFish_upvr (readonly)
	]]
	UIController_upvr.toggleFrame(MergeFish_upvr)
end})
LoadButtons_upvr()
return module_upvr