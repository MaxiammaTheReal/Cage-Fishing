-- Name: Animate
-- Path: game:GetService("Workspace").tomandre0512.Animate
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.7499704000001657 seconds

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
-- Decompiled on 2026-04-10 16:49:01
-- Luau version 6, Types version 3
-- Time taken: 0.024977 seconds

local Parent_upvr = script.Parent
local Torso = Parent_upvr:WaitForChild("Torso")
local Right_Shoulder_upvr = Torso:WaitForChild("Right Shoulder")
local Left_Shoulder_upvr = Torso:WaitForChild("Left Shoulder")
local Right_Hip_upvr = Torso:WaitForChild("Right Hip")
local Left_Hip_upvr = Torso:WaitForChild("Left Hip")
local Humanoid_upvr = Parent_upvr:WaitForChild("Humanoid")
local var16_upvw = "Standing"
local function _() -- Line 15, Named "getRigScale"
	--[[ Upvalues[1]:
		[1]: Parent_upvr (readonly)
	]]
	return Parent_upvr:GetScale()
end
local var17_upvw = ""
local var18_upvw
local var19_upvw
local var20_upvw
local var21_upvw = 1
local tbl_upvr_2 = {}
local tbl_upvr_3 = {
	idle = {{
		id = "http://www.roblox.com/asset/?id=180435571";
		weight = 9;
	}, {
		id = "http://www.roblox.com/asset/?id=180435792";
		weight = 1;
	}};
	walk = {{
		id = "http://www.roblox.com/asset/?id=180426354";
		weight = 10;
	}};
	run = {{
		id = "run.xml";
		weight = 10;
	}};
	jump = {{
		id = "http://www.roblox.com/asset/?id=125750702";
		weight = 10;
	}};
	fall = {{
		id = "http://www.roblox.com/asset/?id=180436148";
		weight = 10;
	}};
	climb = {{
		id = "http://www.roblox.com/asset/?id=180436334";
		weight = 10;
	}};
	sit = {{
		id = "http://www.roblox.com/asset/?id=178130996";
		weight = 10;
	}};
	toolnone = {{
		id = "http://www.roblox.com/asset/?id=182393478";
		weight = 10;
	}};
	toolslash = {{
		id = "http://www.roblox.com/asset/?id=129967390";
		weight = 10;
	}};
	toollunge = {{
		id = "http://www.roblox.com/asset/?id=129967478";
		weight = 10;
	}};
	wave = {{
		id = "http://www.roblox.com/asset/?id=128777973";
		weight = 10;
	}};
	point = {{
		id = "http://www.roblox.com/asset/?id=128853357";
		weight = 10;
	}};
	dance1 = {{
		id = "http://www.roblox.com/asset/?id=182435998";
		weight = 10;
	}, {
		id = "http://www.roblox.com/asset/?id=182491037";
		weight = 10;
	}, {
		id = "http://www.roblox.com/asset/?id=182491065";
		weight = 10;
	}};
	dance2 = {{
		id = "http://www.roblox.com/asset/?id=182436842";
		weight = 10;
	}, {
		id = "http://www.roblox.com/asset/?id=182491248";
		weight = 10;
	}, {
		id = "http://www.roblox.com/asset/?id=182491277";
		weight = 10;
	}};
	dance3 = {{
		id = "http://www.roblox.com/asset/?id=182436935";
		weight = 10;
	}, {
		id = "http://www.roblox.com/asset/?id=182491368";
		weight = 10;
	}, {
		id = "http://www.roblox.com/asset/?id=182491423";
		weight = 10;
	}};
	laugh = {{
		id = "http://www.roblox.com/asset/?id=129423131";
		weight = 10;
	}};
	cheer = {{
		id = "http://www.roblox.com/asset/?id=129423030";
		weight = 10;
	}};
}
local tbl_upvr = {"dance1", "dance2", "dance3"}
local tbl_upvr_4 = {
	wave = false;
	point = false;
	dance1 = true;
	dance2 = true;
	dance3 = true;
	laugh = false;
	cheer = false;
}
function configureAnimationSet(arg1, arg2) -- Line 91
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	if tbl_upvr_2[arg1] ~= nil then
		for _, v in pairs(tbl_upvr_2[arg1].connections) do
			v:disconnect()
		end
	end
	tbl_upvr_2[arg1] = {}
	tbl_upvr_2[arg1].count = 0
	tbl_upvr_2[arg1].totalWeight = 0
	tbl_upvr_2[arg1].connections = {}
	local SOME = script:FindFirstChild(arg1)
	if SOME ~= nil then
		table.insert(tbl_upvr_2[arg1].connections, SOME.ChildAdded:connect(function(arg1_2) -- Line 106
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			configureAnimationSet(arg1, arg2)
		end))
		table.insert(tbl_upvr_2[arg1].connections, SOME.ChildRemoved:connect(function(arg1_3) -- Line 107
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			configureAnimationSet(arg1, arg2)
		end))
		local var79 = 1
		for _, v_2 in pairs(SOME:GetChildren()) do
			if v_2:IsA("Animation") then
				table.insert(tbl_upvr_2[arg1].connections, v_2.Changed:connect(function(arg1_4) -- Line 111
					--[[ Upvalues[2]:
						[1]: arg1 (readonly)
						[2]: arg2 (readonly)
					]]
					configureAnimationSet(arg1, arg2)
				end))
				tbl_upvr_2[arg1][var79] = {}
				tbl_upvr_2[arg1][var79].anim = v_2
				local Weight = v_2:FindFirstChild("Weight")
				if Weight == nil then
					tbl_upvr_2[arg1][var79].weight = 1
				else
					tbl_upvr_2[arg1][var79].weight = Weight.Value
				end
				tbl_upvr_2[arg1].count = tbl_upvr_2[arg1].count + 1
				tbl_upvr_2[arg1].totalWeight = tbl_upvr_2[arg1].totalWeight + tbl_upvr_2[arg1][var79].weight
			end
		end
	end
	if tbl_upvr_2[arg1].count <= 0 then
		for i_3, v_3 in pairs(arg2) do
			v_2 = tbl_upvr_2[arg1]
			v_2[i_3] = {}
			v_2 = tbl_upvr_2[arg1][i_3]
			v_2.anim = Instance.new("Animation")
			v_2 = tbl_upvr_2[arg1][i_3]
			v_2 = v_2.anim
			v_2.Name = arg1
			v_2 = tbl_upvr_2[arg1][i_3]
			v_2 = v_2.anim
			v_2.AnimationId = v_3.id
			v_2 = tbl_upvr_2[arg1][i_3]
			v_2.weight = v_3.weight
			v_2 = tbl_upvr_2[arg1]
			v_2.count = tbl_upvr_2[arg1].count + 1
			v_2 = tbl_upvr_2[arg1]
			v_2.totalWeight = tbl_upvr_2[arg1].totalWeight + v_3.weight
		end
	end
end
function scriptChildModified(arg1) -- Line 144
	--[[ Upvalues[1]:
		[1]: tbl_upvr_3 (readonly)
	]]
	local var88 = tbl_upvr_3[arg1.Name]
	if var88 ~= nil then
		configureAnimationSet(arg1.Name, var88)
	end
end
script.ChildAdded:connect(scriptChildModified)
script.ChildRemoved:connect(scriptChildModified)
local var89
if Humanoid_upvr then
	var89 = Humanoid_upvr:FindFirstChildOfClass("Animator")
else
	var89 = nil
end
if var89 then
	for _, v_4 in ipairs(var89:GetPlayingAnimationTracks()) do
		v_4:Stop(0)
		v_4:Destroy()
	end
end
for i_5, _ in pairs(tbl_upvr_3) do
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [402.24]
	configureAnimationSet(i_5, nil)
end
local var96_upvw = "None"
local var97_upvw = 0
function stopAllAnimations() -- Line 185
	--[[ Upvalues[5]:
		[1]: var17_upvw (read and write)
		[2]: tbl_upvr_4 (readonly)
		[3]: var18_upvw (read and write)
		[4]: var20_upvw (read and write)
		[5]: var19_upvw (read and write)
	]]
	local var98
	if tbl_upvr_4[var17_upvw] ~= nil and tbl_upvr_4[var98] == false then
		var98 = "idle"
	end
	var17_upvw = ""
	var18_upvw = nil
	if var20_upvw ~= nil then
		var20_upvw:disconnect()
	end
	if var19_upvw ~= nil then
		var19_upvw:Stop()
		var19_upvw:Destroy()
		var19_upvw = nil
	end
	return var98
end
function setAnimationSpeed(arg1) -- Line 207
	--[[ Upvalues[2]:
		[1]: var21_upvw (read and write)
		[2]: var19_upvw (read and write)
	]]
	if arg1 ~= var21_upvw then
		var21_upvw = arg1
		var19_upvw:AdjustSpeed(var21_upvw)
	end
end
function keyFrameReachedFunc(arg1) -- Line 214
	--[[ Upvalues[4]:
		[1]: var17_upvw (read and write)
		[2]: tbl_upvr_4 (readonly)
		[3]: var21_upvw (read and write)
		[4]: Humanoid_upvr (readonly)
	]]
	if arg1 == "End" then
		local var99
		if tbl_upvr_4[var17_upvw] ~= nil and tbl_upvr_4[var99] == false then
			var99 = "idle"
		end
		playAnimation(var99, 0, Humanoid_upvr)
		setAnimationSpeed(var21_upvw)
	end
end
function playAnimation(arg1, arg2, arg3) -- Line 230
	--[[ Upvalues[6]:
		[1]: tbl_upvr_2 (readonly)
		[2]: var18_upvw (read and write)
		[3]: var19_upvw (read and write)
		[4]: var21_upvw (read and write)
		[5]: var17_upvw (read and write)
		[6]: var20_upvw (read and write)
	]]
	local var101
	while tbl_upvr_2[arg1][var101].weight < math.random(1, tbl_upvr_2[arg1].totalWeight) do
		var101 += 1
	end
	local anim_2 = tbl_upvr_2[arg1][var101].anim
	if anim_2 ~= var18_upvw then
		if var19_upvw ~= nil then
			var19_upvw:Stop(arg2)
			var19_upvw:Destroy()
		end
		var21_upvw = 1
		var19_upvw = arg3:LoadAnimation(anim_2)
		var19_upvw.Priority = Enum.AnimationPriority.Core
		var19_upvw:Play(arg2)
		var17_upvw = arg1
		var18_upvw = anim_2
		if var20_upvw ~= nil then
			var20_upvw:disconnect()
		end
		var20_upvw = var19_upvw.KeyframeReached:connect(keyFrameReachedFunc)
	end
end
local var103_upvw = ""
local var104_upvw
local var105_upvw
local var106_upvw
function toolKeyFrameReachedFunc(arg1) -- Line 279
	--[[ Upvalues[2]:
		[1]: var103_upvw (read and write)
		[2]: Humanoid_upvr (readonly)
	]]
	if arg1 == "End" then
		playToolAnimation(var103_upvw, 0, Humanoid_upvr)
	end
end
function playToolAnimation(arg1, arg2, arg3, arg4) -- Line 287
	--[[ Upvalues[5]:
		[1]: tbl_upvr_2 (readonly)
		[2]: var105_upvw (read and write)
		[3]: var104_upvw (read and write)
		[4]: var103_upvw (read and write)
		[5]: var106_upvw (read and write)
	]]
	local var108
	while tbl_upvr_2[arg1][var108].weight < math.random(1, tbl_upvr_2[arg1].totalWeight) do
		var108 += 1
	end
	local var109
	local anim = tbl_upvr_2[arg1][var108].anim
	if var105_upvw ~= anim then
		if var104_upvw ~= nil then
			var104_upvw:Stop()
			var104_upvw:Destroy()
			var109 = 0
		end
		var104_upvw = arg3:LoadAnimation(anim)
		if arg4 then
			var104_upvw.Priority = arg4
		end
		var104_upvw:Play(var109)
		var103_upvw = arg1
		var105_upvw = anim
		var106_upvw = var104_upvw.KeyframeReached:connect(toolKeyFrameReachedFunc)
	end
end
function stopToolAnimations() -- Line 322
	--[[ Upvalues[4]:
		[1]: var103_upvw (read and write)
		[2]: var106_upvw (read and write)
		[3]: var105_upvw (read and write)
		[4]: var104_upvw (read and write)
	]]
	if var106_upvw ~= nil then
		var106_upvw:disconnect()
	end
	var103_upvw = ""
	var105_upvw = nil
	if var104_upvw ~= nil then
		var104_upvw:Stop()
		var104_upvw:Destroy()
		var104_upvw = nil
	end
	return var103_upvw
end
function onRunning(arg1) -- Line 345
	--[[ Upvalues[6]:
		[1]: Parent_upvr (readonly)
		[2]: Humanoid_upvr (readonly)
		[3]: var18_upvw (read and write)
		[4]: var16_upvw (read and write)
		[5]: tbl_upvr_4 (readonly)
		[6]: var17_upvw (read and write)
	]]
	local var111 = arg1 / Parent_upvr:GetScale()
	if 0.01 < var111 then
		playAnimation("walk", 0.1, Humanoid_upvr)
		if var18_upvw and var18_upvw.AnimationId == "http://www.roblox.com/asset/?id=180426354" then
			setAnimationSpeed(var111 / 14.5)
		end
		var16_upvw = "Running"
	elseif tbl_upvr_4[var17_upvw] == nil then
		playAnimation("idle", 0.1, Humanoid_upvr)
		var16_upvw = "Standing"
	end
end
function onDied() -- Line 362
	--[[ Upvalues[1]:
		[1]: var16_upvw (read and write)
	]]
	var16_upvw = "Dead"
end
function onJumping() -- Line 366
	--[[ Upvalues[3]:
		[1]: Humanoid_upvr (readonly)
		[2]: var97_upvw (read and write)
		[3]: var16_upvw (read and write)
	]]
	playAnimation("jump", 0.1, Humanoid_upvr)
	var97_upvw = 0.3
	var16_upvw = "Jumping"
end
function onClimbing(arg1) -- Line 372
	--[[ Upvalues[3]:
		[1]: Parent_upvr (readonly)
		[2]: Humanoid_upvr (readonly)
		[3]: var16_upvw (read and write)
	]]
	playAnimation("climb", 0.1, Humanoid_upvr)
	setAnimationSpeed(arg1 / Parent_upvr:GetScale() / 12)
	var16_upvw = "Climbing"
end
function onGettingUp() -- Line 380
	--[[ Upvalues[1]:
		[1]: var16_upvw (read and write)
	]]
	var16_upvw = "GettingUp"
end
function onFreeFall() -- Line 384
	--[[ Upvalues[3]:
		[1]: var97_upvw (read and write)
		[2]: Humanoid_upvr (readonly)
		[3]: var16_upvw (read and write)
	]]
	if var97_upvw <= 0 then
		playAnimation("fall", 0.3, Humanoid_upvr)
	end
	var16_upvw = "FreeFall"
end
function onFallingDown() -- Line 391
	--[[ Upvalues[1]:
		[1]: var16_upvw (read and write)
	]]
	var16_upvw = "FallingDown"
end
function onSeated() -- Line 395
	--[[ Upvalues[1]:
		[1]: var16_upvw (read and write)
	]]
	var16_upvw = "Seated"
end
function onPlatformStanding() -- Line 399
	--[[ Upvalues[1]:
		[1]: var16_upvw (read and write)
	]]
	var16_upvw = "PlatformStanding"
end
function onSwimming(arg1) -- Line 403
	--[[ Upvalues[1]:
		[1]: var16_upvw (read and write)
	]]
	if 0 < arg1 then
		var16_upvw = "Running"
	else
		var16_upvw = "Standing"
	end
end
function getTool() -- Line 411
	--[[ Upvalues[1]:
		[1]: Parent_upvr (readonly)
	]]
	for _, v_6 in ipairs(Parent_upvr:GetChildren()) do
		if v_6.className == "Tool" then
			return v_6
		end
	end
	return nil
end
function getToolAnim(arg1) -- Line 418
	for _, v_7 in ipairs(arg1:GetChildren()) do
		if v_7.Name == "toolanim" and v_7.className == "StringValue" then
			return v_7
		end
	end
	return nil
end
function animateTool() -- Line 427
	--[[ Upvalues[2]:
		[1]: var96_upvw (read and write)
		[2]: Humanoid_upvr (readonly)
	]]
	if var96_upvw == "None" then
		playToolAnimation("toolnone", 0.1, Humanoid_upvr, Enum.AnimationPriority.Idle)
	else
		if var96_upvw == "Slash" then
			playToolAnimation("toolslash", 0, Humanoid_upvr, Enum.AnimationPriority.Action)
			return
		end
		if var96_upvw == "Lunge" then
			playToolAnimation("toollunge", 0, Humanoid_upvr, Enum.AnimationPriority.Action)
			return
		end
	end
end
function moveSit() -- Line 445
	--[[ Upvalues[4]:
		[1]: Right_Shoulder_upvr (readonly)
		[2]: Left_Shoulder_upvr (readonly)
		[3]: Right_Hip_upvr (readonly)
		[4]: Left_Hip_upvr (readonly)
	]]
	Right_Shoulder_upvr.MaxVelocity = 0.15
	Left_Shoulder_upvr.MaxVelocity = 0.15
	Right_Shoulder_upvr:SetDesiredAngle(1.57)
	Left_Shoulder_upvr:SetDesiredAngle(-1.57)
	Right_Hip_upvr:SetDesiredAngle(1.57)
	Left_Hip_upvr:SetDesiredAngle(-1.57)
end
local var122_upvw = 0
local var123_upvw = 0
function move(arg1) -- Line 456
	--[[ Upvalues[11]:
		[1]: var122_upvw (read and write)
		[2]: var97_upvw (read and write)
		[3]: var16_upvw (read and write)
		[4]: Humanoid_upvr (readonly)
		[5]: Right_Shoulder_upvr (readonly)
		[6]: Left_Shoulder_upvr (readonly)
		[7]: Right_Hip_upvr (readonly)
		[8]: Left_Hip_upvr (readonly)
		[9]: var96_upvw (read and write)
		[10]: var123_upvw (read and write)
		[11]: var105_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	var122_upvw = arg1
	if 0 < var97_upvw then
		var97_upvw -= arg1 - var122_upvw
	end
	local var124
	if var16_upvw == "FreeFall" and var97_upvw <= 0 then
		playAnimation("fall", 0.3, Humanoid_upvr)
	else
		if var16_upvw == "Seated" then
			playAnimation("sit", 0.5, Humanoid_upvr)
			return
		end
		if var16_upvw == "Running" then
			playAnimation("walk", 0.1, Humanoid_upvr)
		elseif var16_upvw == "Dead" or var16_upvw == "GettingUp" or var16_upvw == "FallingDown" or var16_upvw == "Seated" or var16_upvw == "PlatformStanding" then
			stopAllAnimations()
			var124 = true
		end
	end
	if var124 then
		local var125 = 0.1 * math.sin(arg1 * 1)
		Right_Shoulder_upvr:SetDesiredAngle(var125 + 0)
		Left_Shoulder_upvr:SetDesiredAngle(var125 - 0)
		Right_Hip_upvr:SetDesiredAngle(-var125)
		Left_Hip_upvr:SetDesiredAngle(-var125)
	end
	local getTool_result1 = getTool()
	if getTool_result1 and getTool_result1:FindFirstChild("Handle") then
		local getToolAnim_result1 = getToolAnim(getTool_result1)
		if getToolAnim_result1 then
			var96_upvw = getToolAnim_result1.Value
			getToolAnim_result1.Parent = nil
			var123_upvw = arg1 + 0.3
		end
		if var123_upvw < arg1 then
			var123_upvw = 0
			var96_upvw = "None"
		end
		animateTool()
	else
		stopToolAnimations()
		var96_upvw = "None"
		var105_upvw = nil
		var123_upvw = 0
	end
end
Humanoid_upvr.Died:connect(onDied)
Humanoid_upvr.Running:connect(onRunning)
Humanoid_upvr.Jumping:connect(onJumping)
Humanoid_upvr.Climbing:connect(onClimbing)
Humanoid_upvr.GettingUp:connect(onGettingUp)
Humanoid_upvr.FreeFalling:connect(onFreeFall)
Humanoid_upvr.FallingDown:connect(onFallingDown)
Humanoid_upvr.Seated:connect(onSeated)
Humanoid_upvr.PlatformStanding:connect(onPlatformStanding)
Humanoid_upvr.Swimming:connect(onSwimming)
game:GetService("Players").LocalPlayer.Chatted:connect(function(arg1) -- Line 533
	--[[ Upvalues[4]:
		[1]: tbl_upvr (readonly)
		[2]: var16_upvw (read and write)
		[3]: tbl_upvr_4 (readonly)
		[4]: Humanoid_upvr (readonly)
	]]
	local var129
	if arg1 == "/e dance" then
		var129 = tbl_upvr[math.random(1, #tbl_upvr)]
	elseif string.sub(arg1, 1, 3) == "/e " then
		var129 = string.sub(arg1, 4)
	elseif string.sub(arg1, 1, 7) == "/emote " then
		var129 = string.sub(arg1, 8)
	end
	if var16_upvw == "Standing" and tbl_upvr_4[var129] ~= nil then
		playAnimation(var129, 0.1, Humanoid_upvr)
	end
end)
script:WaitForChild("PlayEmote").OnInvoke = function(arg1) -- Line 550
	--[[ Upvalues[4]:
		[1]: var16_upvw (read and write)
		[2]: tbl_upvr_4 (readonly)
		[3]: Humanoid_upvr (readonly)
		[4]: var19_upvw (read and write)
	]]
	if var16_upvw ~= "Standing" then return end
	if tbl_upvr_4[arg1] ~= nil then
		playAnimation(arg1, 0.1, Humanoid_upvr)
		return true, var19_upvw
	end
	return false
end
playAnimation("idle", 0.1, Humanoid_upvr)
var16_upvw = "Standing"
while Parent_upvr.Parent ~= nil do
	local _, wait_result2 = wait(0.1)
	move(wait_result2)
end