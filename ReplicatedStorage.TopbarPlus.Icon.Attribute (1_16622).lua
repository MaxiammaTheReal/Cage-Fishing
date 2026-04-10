-- Name: Attribute
-- Path: game:GetService("ReplicatedStorage").TopbarPlus.Icon.Attribute
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5444728000002215 seconds

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
-- Decompiled on 2026-04-10 16:50:21
-- Luau version 6, Types version 3
-- Time taken: 0.000936 seconds

task.defer(function() -- Line 21
	local VERSION = require(script.Parent.VERSION)
	if not game:GetService("RunService"):IsStudio() then
		print(`🍍 Running TopbarPlus {VERSION.getAppVersion()} by @ForeverHD & HD Admin`)
	end
	if not VERSION.isUpToDate() then
		warn(`A new version of TopbarPlus ({VERSION.getLatestVersion()}) is available: https://devforum.roblox.com/t/topbarplus/1017485`)
	end
end)
return {}