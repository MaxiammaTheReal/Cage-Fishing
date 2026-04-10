-- Name: VERSION
-- Path: game:GetService("ReplicatedStorage").TopbarPlus.Icon.VERSION
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5559289000011631 seconds

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
-- Decompiled on 2026-04-10 16:50:19
-- Luau version 6, Types version 3
-- Time taken: 0.001600 seconds

local module_upvr = {
	appVersion = "v3.4.0";
	latestVersion = nil;
}
function module_upvr.getLatestVersion() -- Line 14
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 15 start (CF ANALYSIS FAILED)
	local latestVersion = module_upvr.latestVersion
	if latestVersion then
		return latestVersion
	end
	-- KONSTANTERROR: [0] 1. Error Block 15 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 13. Error Block 18 start (CF ANALYSIS FAILED)
	task.wait(1)
	-- KONSTANTERROR: [15] 13. Error Block 18 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [19.2]
	-- KONSTANTERROR: [6] 6. Error Block 4 end (CF ANALYSIS FAILED)
end
function module_upvr.getAppVersion() -- Line 39
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr.appVersion
end
function module_upvr.isUpToDate() -- Line 43
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_getLatestVersion_result1 = module_upvr.getLatestVersion()
	local var4 = false
	if any_getLatestVersion_result1 ~= nil then
		if any_getLatestVersion_result1 ~= module_upvr.getAppVersion() then
			var4 = false
		else
			var4 = true
		end
	end
	return var4
end
return module_upvr