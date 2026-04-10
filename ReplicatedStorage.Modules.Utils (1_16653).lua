-- Name: Utils
-- Path: game:GetService("ReplicatedStorage").Modules.Utils
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5592297000002873 seconds

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
-- Decompiled on 2026-04-10 16:50:52
-- Luau version 6, Types version 3
-- Time taken: 0.013402 seconds

local module_5_upvr = {}
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
function module_5_upvr.SplitDash(arg1) -- Line 22
	if type(arg1) ~= "string" then
		return nil
	end
	local function _(arg1_2) -- Line 25, Named "smartConvert"
		if string.match(arg1_2, "^%d+$") and not string.match(arg1_2, "^0%d") then
			return tonumber(arg1_2)
		end
		return arg1_2
	end
	local string_match_result1_2, string_match_result2, string_match_result3 = string.match(arg1, "^(.-)%-(.-)%-(.-)$")
	if string_match_result1_2 and string_match_result2 and string_match_result3 then
		local module_3 = {}
		local var7
		if string.match(string_match_result1_2, "^%d+$") and not string.match(string_match_result1_2, "^0%d") then
			var7 = tonumber(string_match_result1_2)
		else
			var7 = string_match_result1_2
		end
		local var8
		if string.match(string_match_result2, "^%d+$") and not string.match(string_match_result2, "^0%d") then
			var8 = tonumber(string_match_result2)
		else
			var8 = string_match_result2
		end
		local var9
		if string.match(string_match_result3, "^%d+$") and not string.match(string_match_result3, "^0%d") then
			var9 = tonumber(string_match_result3)
		else
			var9 = string_match_result3
		end
		module_3[1] = var7
		module_3[2] = var8
		module_3[3] = var9
		return module_3
	end
	local string_match_result1, string_match_result2_2 = string.match(arg1, "^(.-)%-(.+)$")
	if string_match_result1 and string_match_result2_2 then
		local module_4 = {}
		if string.match(string_match_result1, "^%d+$") and not string.match(string_match_result1, "^0%d") then
			var9 = tonumber(string_match_result1)
		else
			var9 = string_match_result1
		end
		local var13
		if string.match(string_match_result2_2, "^%d+$") and not string.match(string_match_result2_2, "^0%d") then
			var13 = tonumber(string_match_result2_2)
		else
			var13 = string_match_result2_2
		end
		module_4[1] = var9
		module_4[2] = var13
		return module_4
	end
	return nil
end
function module_5_upvr.GenerateUniqueId(arg1, arg2) -- Line 48
	--[[ Upvalues[1]:
		[1]: module_5_upvr (readonly)
	]]
	local var20
	if arg2 then
		var20 = arg2
	end
	for i, v in pairs(arg1) do
		local any_SplitDash_result1 = module_5_upvr.SplitDash(i)
		if any_SplitDash_result1 and #any_SplitDash_result1 == var20 and tonumber(any_SplitDash_result1[var20]) then
			({})[tonumber(any_SplitDash_result1[var20])] = true
		end
	end
	for _ = 1, 10000 do
		i = math.random
		v = 1000
		i = i(v, 9999)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		v = ({})[i]
		if not v then
			v = string.format("%04d", i)
			return v
		end
	end
	warn("Failed to generate unique 4-digit ID")
	return nil
end
local Services_upvr = require(ReplicatedStorage_upvr.Modules.Services)
function module_5_upvr.Animation(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) -- Line 76
	--[[ Upvalues[1]:
		[1]: Services_upvr (readonly)
	]]
	local var26 = arg4
	if not var26 then
		var26 = Enum.EasingStyle.Quad
	end
	local var27 = arg5
	if not var27 then
		var27 = Enum.EasingDirection.Out
	end
	local any_Create_result1_upvr = Services_upvr.TweenService:Create(arg1, TweenInfo.new(arg3, var26, var27, arg6 or 0, arg7 or false, arg8 or 0), arg2)
	any_Create_result1_upvr:Play()
	any_Create_result1_upvr.Completed:Once(function() -- Line 92
		--[[ Upvalues[2]:
			[1]: any_Create_result1_upvr (readonly)
			[2]: arg9 (readonly)
		]]
		any_Create_result1_upvr:Destroy()
		if arg9 then
			arg9()
		end
	end)
	return any_Create_result1_upvr
end
function module_5_upvr.FindEmptySlotIndex(arg1, arg2) -- Line 102
	local var47 = true
	if arg2 then
		var47 = arg2:GetAttribute("Touch")
		if var47 == nil then
			warn("IsTouch is nil!")
		end
	end
	local pairs_result1_2, pairs_result2, pairs_result3_3 = pairs(arg1)
	for _, v_2 in pairs_result1_2, pairs_result2, pairs_result3_3 do
		if typeof(v_2.Location) == "number" then
			table.insert({}, v_2.Location)
		end
	end
	pairs_result1_2 = 5
	local var51 = pairs_result1_2
	if not var47 then
		var51 = 10
	end
	for i_4 = 1, var51 do
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not table.find({}, i_4) then
			return i_4
		end
	end
	return "Inventory"
end
function module_5_upvr.FormatComma(arg1) -- Line 134
	local var52
	repeat
		local string_gsub_result1, string_gsub_result2 = string.gsub(var52, "^(-?%d+)(%d%d%d)", "%1,%2")
		k = string_gsub_result2 -- Setting global
		var52 = string_gsub_result1
	until k == 0
	return var52
end
function module_5_upvr.TimeFormat(arg1) -- Line 143
	local floored_3 = math.floor(arg1 / 86400)
	local var56 = arg1 % 86400
	local floored_2 = math.floor(var56 / 3600)
	local var58 = var56 % 3600
	local floored = math.floor(var58 / 60)
	local module = {}
	if 0 < floored_3 then
		table.insert(module, tostring(floored_3))
	end
	if 0 < floored_2 or 0 < floored_3 then
		table.insert(module, string.format("%02d", floored_2))
	end
	if 0 < floored or 0 < floored_2 or 0 < floored_3 then
		table.insert(module, string.format("%02d", floored))
	end
	table.insert(module, string.format("%02d", var58 % 60))
	return table.concat(module, ':')
end
local tbl_upvr = {}
local random_state_upvr = Random.new()
function module_5_upvr.PlaySound(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 172
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: random_state_upvr (readonly)
		[3]: ReplicatedStorage_upvr (readonly)
	]]
	task.spawn(function() -- Line 173
		--[[ Upvalues[9]:
			[1]: arg1 (readonly)
			[2]: arg6 (readonly)
			[3]: tbl_upvr (copied, readonly)
			[4]: arg2 (readonly)
			[5]: random_state_upvr (copied, readonly)
			[6]: arg3 (readonly)
			[7]: arg4 (readonly)
			[8]: ReplicatedStorage_upvr (copied, readonly)
			[9]: arg5 (readonly)
		]]
		local clone_upvr = arg1:Clone()
		if arg6 then
			local Name = arg1.Name
			if not tbl_upvr[Name] then
			end
			tbl_upvr[Name] = {
				Count = 0;
				BaseSpeed = arg1.PlaybackSpeed or 1;
			}
			local var67 = tbl_upvr[Name]
			var67.Count += 1
			if 15 < var67.Count then
				var67.Count = 1
			end
			clone_upvr.PlaybackSpeed = var67.BaseSpeed + 0.05 * var67.Count
		elseif arg2 then
			clone_upvr.PlaybackSpeed = random_state_upvr:NextInteger(10, 16) / 10
		end
		if arg3 then
			clone_upvr.RollOffMode = Enum.RollOffMode.Inverse
			clone_upvr.RollOffMaxDistance = arg4 or 50
			clone_upvr.Parent = arg3
			clone_upvr:Play()
		else
			clone_upvr.Parent = ReplicatedStorage_upvr.Resources.Sounds
			clone_upvr:Play()
		end
		if arg5 then
			task.delay(arg5, function() -- Line 205
				--[[ Upvalues[1]:
					[1]: clone_upvr (readonly)
				]]
				if clone_upvr then
					clone_upvr:Destroy()
				end
			end)
		else
			clone_upvr.Ended:Connect(function() -- Line 211
				--[[ Upvalues[1]:
					[1]: clone_upvr (readonly)
				]]
				clone_upvr:Destroy()
			end)
		end
	end)
end
function module_5_upvr.Suffix(arg1) -- Line 218
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module_2 = {"", 'k', 'm', 'b', 't', "qd", "qn", "se", "sp", "oc", "no", "de", "ud", "dd", "td", "qt", "qi", "sd", "sv", "od", "nd", "vi"}
	local const_number = 1
	local var72
	while 1000 <= var72 and const_number < #module_2 do
		var72 /= 1000
	end
	if var72 % 1 ~= 0 or not string.format("%d", var72) then
	end
	return string.format("%.2f", var72)..module_2[const_number + 1]
end
return module_5_upvr