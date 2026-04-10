-- Name: Registry
-- Path: game:GetService("ReplicatedStorage").Modules.ItemVisuals.Cage.Registry
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5564789000000019 seconds

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
-- Decompiled on 2026-04-10 16:50:55
-- Luau version 6, Types version 3
-- Time taken: 0.000984 seconds

local module = {}
local tbl_upvr = {}
function module.Register(arg1, arg2) -- Line 6
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	tbl_upvr[arg1] = arg2
end
function module.Get(arg1) -- Line 10
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	return tbl_upvr[arg1]
end
function module.Unregister(arg1) -- Line 14
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	tbl_upvr[arg1] = nil
end
function module.Clear() -- Line 18
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	table.clear(tbl_upvr)
end
return module