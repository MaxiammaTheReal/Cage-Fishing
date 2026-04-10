-- Name: UIController
-- Path: game:GetService("Players").COOLBINIBH.PlayerScripts.UIController
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5585468999997829 seconds

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
-- Decompiled on 2026-04-10 16:49:11
-- Luau version 6, Types version 3
-- Time taken: 0.011374 seconds

local module = {}
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Utils_upvr = require(ReplicatedStorage_upvr.Modules.Utils)
local Main_upvr = require(ReplicatedStorage_upvr.Modules.Services).Players.LocalPlayer.PlayerGui.Main
local tbl_upvr_3 = {}
local tbl_upvr_2 = {}
local tbl_upvr = {
	MouseClick = function() -- Line 27, Named "MouseClick"
	end;
	MouseDown = function(arg1) -- Line 30, Named "MouseDown"
		--[[ Upvalues[2]:
			[1]: tbl_upvr_3 (readonly)
			[2]: Utils_upvr (readonly)
		]]
		Utils_upvr.Animation(arg1, {
			Size = UDim2.new(tbl_upvr_3[arg1].X.Scale * 0.9, 0, tbl_upvr_3[arg1].Y.Scale * 0.9, 0);
		}, 0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	end;
	MouseUp = function(arg1) -- Line 40, Named "MouseUp"
		--[[ Upvalues[2]:
			[1]: Utils_upvr (readonly)
			[2]: tbl_upvr_3 (readonly)
		]]
		Utils_upvr.Animation(arg1, {
			Size = tbl_upvr_3[arg1];
		}, 0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	end;
	MouseEnter = function(arg1) -- Line 49, Named "MouseEnter"
		--[[ Upvalues[2]:
			[1]: tbl_upvr_3 (readonly)
			[2]: Utils_upvr (readonly)
		]]
		Utils_upvr.Animation(arg1, {
			Size = UDim2.new(tbl_upvr_3[arg1].X.Scale * 1.05, 0, tbl_upvr_3[arg1].Y.Scale * 1.05, 0);
		}, 0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	end;
	MouseLeave = function(arg1) -- Line 59, Named "MouseLeave"
		--[[ Upvalues[2]:
			[1]: Utils_upvr (readonly)
			[2]: tbl_upvr_3 (readonly)
		]]
		Utils_upvr.Animation(arg1, {
			Size = tbl_upvr_3[arg1];
		}, 0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	end;
}
function module.bindButton(arg1, arg2, arg3) -- Line 74
	--[[ Upvalues[4]:
		[1]: tbl_upvr_3 (readonly)
		[2]: tbl_upvr (readonly)
		[3]: Utils_upvr (readonly)
		[4]: ReplicatedStorage_upvr (readonly)
	]]
	if arg1:IsA("TextButton") or arg1:IsA("ImageButton") then
		if not tbl_upvr_3[arg1] then
			tbl_upvr_3[arg1] = arg1.Size
		end
		local module_upvr = {arg1.MouseButton1Click:Connect(function() -- Line 81
			--[[ Upvalues[8]:
				[1]: arg3 (readonly)
				[2]: module_upvr (readonly)
				[3]: tbl_upvr_3 (copied, readonly)
				[4]: arg1 (readonly)
				[5]: arg2 (readonly)
				[6]: tbl_upvr (copied, readonly)
				[7]: Utils_upvr (copied, readonly)
				[8]: ReplicatedStorage_upvr (copied, readonly)
			]]
			arg3[1](module_upvr[1], tbl_upvr_3[arg1])
			if arg2 then
				tbl_upvr.MouseClick()
			end
			Utils_upvr.PlaySound(ReplicatedStorage_upvr.Resources.Sounds.SFX.Snap)
		end), arg1.MouseButton1Down:Connect(function() -- Line 88
			--[[ Upvalues[6]:
				[1]: arg2 (readonly)
				[2]: tbl_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: arg3 (readonly)
				[5]: module_upvr (readonly)
				[6]: tbl_upvr_3 (copied, readonly)
			]]
			if arg2 then
				tbl_upvr.MouseDown(arg1)
			elseif arg3[2] then
				arg3[2](module_upvr[2], tbl_upvr_3[arg1])
			end
		end), arg1.MouseButton1Up:Connect(function() -- Line 97
			--[[ Upvalues[6]:
				[1]: arg2 (readonly)
				[2]: tbl_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: arg3 (readonly)
				[5]: module_upvr (readonly)
				[6]: tbl_upvr_3 (copied, readonly)
			]]
			if arg2 then
				tbl_upvr.MouseUp(arg1)
			elseif arg3[3] then
				arg3[3](module_upvr[3], tbl_upvr_3[arg1])
			end
		end), arg1.MouseEnter:Connect(function() -- Line 106
			--[[ Upvalues[8]:
				[1]: arg2 (readonly)
				[2]: tbl_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: arg3 (readonly)
				[5]: module_upvr (readonly)
				[6]: tbl_upvr_3 (copied, readonly)
				[7]: Utils_upvr (copied, readonly)
				[8]: ReplicatedStorage_upvr (copied, readonly)
			]]
			if arg2 then
				tbl_upvr.MouseEnter(arg1)
			elseif arg3[4] then
				arg3[4](module_upvr[4], tbl_upvr_3[arg1])
			end
			Utils_upvr.PlaySound(ReplicatedStorage_upvr.Resources.Sounds.SFX.Hover)
		end), arg1.MouseLeave:Connect(function() -- Line 116
			--[[ Upvalues[6]:
				[1]: arg2 (readonly)
				[2]: tbl_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: arg3 (readonly)
				[5]: module_upvr (readonly)
				[6]: tbl_upvr_3 (copied, readonly)
			]]
			if arg2 then
				tbl_upvr.MouseLeave(arg1)
			elseif arg3[5] then
				arg3[5](module_upvr[5], tbl_upvr_3[arg1])
			end
		end)}
		return module_upvr
	end
end
local CurrentCamera_upvr = workspace.CurrentCamera
local UIBlur_upvr = game:GetService("Lighting").UIBlur
function module.toggleFrame(arg1) -- Line 129
	--[[ Upvalues[5]:
		[1]: tbl_upvr_2 (readonly)
		[2]: Main_upvr (readonly)
		[3]: Utils_upvr (readonly)
		[4]: CurrentCamera_upvr (readonly)
		[5]: UIBlur_upvr (readonly)
	]]
	if not tbl_upvr_2[arg1] then
		tbl_upvr_2[arg1] = arg1.Size
	end
	for _, v_upvr in pairs(Main_upvr.Centre:GetChildren()) do
		if v_upvr:IsA("Frame") or v_upvr:IsA("ImageLabel") then
			if v_upvr == arg1 and not v_upvr.Visible then
				v_upvr.Visible = true
				Utils_upvr.Animation(v_upvr, {
					Position = UDim2.new(0.5, 0, 0.5, 0);
				}, 0.4, Enum.EasingStyle.Circular, Enum.EasingDirection.Out, nil, nil, nil, function() -- Line 146
				end)
				Utils_upvr.Animation(v_upvr, {
					Size = tbl_upvr_2[v_upvr];
				}, 0.4, Enum.EasingStyle.Exponential, Enum.EasingDirection.In, nil, nil, nil, function() -- Line 157
				end)
				Utils_upvr.Animation(CurrentCamera_upvr, {
					FieldOfView = 80;
				}, 0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
				Utils_upvr.Animation(UIBlur_upvr, {
					Size = 10;
				}, 0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
			elseif v_upvr.Visible then
				Utils_upvr.Animation(v_upvr, {
					Position = UDim2.new(0.5, 0, 2, 0);
				}, 0.4, Enum.EasingStyle.Circular, Enum.EasingDirection.In, nil, nil, nil, function() -- Line 185
					--[[ Upvalues[1]:
						[1]: v_upvr (readonly)
					]]
					v_upvr.Visible = false
				end)
				Utils_upvr.Animation(v_upvr, {
					Size = UDim2.new(tbl_upvr_2[v_upvr].X.Scale * 0.8, 0, tbl_upvr_2[v_upvr].Y.Scale * 0.8, 0);
				}, 0.4, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out, nil, nil, nil, function() -- Line 197
				end)
				Utils_upvr.Animation(CurrentCamera_upvr, {
					FieldOfView = 70;
				}, 0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
				Utils_upvr.Animation(UIBlur_upvr, {
					Size = 0;
				}, 0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
			end
		end
	end
end
for _, v_2 in pairs(Main_upvr.Centre:GetChildren()) do
	if v_2:IsA("Frame") or v_2:IsA("ImageLabel") then
		if not tbl_upvr_2[v_2] then
			tbl_upvr_2[v_2] = v_2.Size
			v_2.Size = UDim2.new(v_2.Size.X.Scale * 0.8, 0, v_2.Size.Y.Scale * 0.8, 0)
		end
	end
end
return module