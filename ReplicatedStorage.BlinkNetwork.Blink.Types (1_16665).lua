-- Name: Types
-- Path: game:GetService("ReplicatedStorage").BlinkNetwork.Blink.Types
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5520431000004464 seconds

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
-- Decompiled on 2026-04-10 16:51:05
-- Luau version 6, Types version 3
-- Time taken: 0.002925 seconds

local var1_upvw = 64
local var2_upvw = 0
local var3_upvw = 0
local buffer_create_result1_upvw = buffer.create(64)
local tbl_2_upvw = {}
local var6_upvw = 0
local function _(arg1) -- Line 42, Named "Read"
	--[[ Upvalues[1]:
		[1]: var6_upvw (read and write)
	]]
	var6_upvw += arg1
	return var6_upvw
end
local function _() -- Line 48, Named "Save"
	--[[ Upvalues[4]:
		[1]: var1_upvw (read and write)
		[2]: var3_upvw (read and write)
		[3]: buffer_create_result1_upvw (read and write)
		[4]: tbl_2_upvw (read and write)
	]]
	return {
		Size = var1_upvw;
		Cursor = var3_upvw;
		Buffer = buffer_create_result1_upvw;
		Instances = tbl_2_upvw;
	}
end
local function _(arg1) -- Line 57, Named "Load"
	--[[ Upvalues[5]:
		[1]: var1_upvw (read and write)
		[2]: var3_upvw (read and write)
		[3]: var2_upvw (read and write)
		[4]: buffer_create_result1_upvw (read and write)
		[5]: tbl_2_upvw (read and write)
	]]
	if arg1 then
		var1_upvw = arg1.Size
		var3_upvw = arg1.Cursor
		var2_upvw = arg1.Cursor
		buffer_create_result1_upvw = arg1.Buffer
		tbl_2_upvw = arg1.Instances
	else
		var1_upvw = 64
		var3_upvw = 0
		var2_upvw = 0
		buffer_create_result1_upvw = buffer.create(64)
		tbl_2_upvw = {}
	end
end
local var8_upvw = 0
local function _() -- Line 74, Named "Invoke"
	--[[ Upvalues[1]:
		[1]: var8_upvw (read and write)
	]]
	if var8_upvw == 255 then
		var8_upvw = 0
	end
	var8_upvw += 1
	return var8_upvw
end
local function _(arg1) -- Line 84, Named "Allocate"
	--[[ Upvalues[4]:
		[1]: var3_upvw (read and write)
		[2]: var1_upvw (read and write)
		[3]: buffer_create_result1_upvw (read and write)
		[4]: var2_upvw (read and write)
	]]
	local var9 = var3_upvw + arg1
	if var1_upvw < var9 then
		while var1_upvw < var9 do
			var1_upvw *= 1.5
		end
		local buffer_create_result1 = buffer.create(var1_upvw)
		buffer.copy(buffer_create_result1, 0, buffer_create_result1_upvw, 0, var3_upvw)
		buffer_create_result1_upvw = buffer_create_result1
	end
	var2_upvw = var3_upvw
	var3_upvw += arg1
	return var2_upvw
end
local function _() -- Line 103, Named "CreateQueue"
	return {
		head = nil;
		tail = nil;
	}
end
local function _(arg1) -- Line 110, Named "Pop"
	local head = arg1.head
	if head == nil then return end
	arg1.head = head.next
	return head.value
end
local function _(arg1, arg2) -- Line 120, Named "Push"
	local tbl = {}
	tbl.value = arg2
	tbl.next = nil
	if arg1.tail ~= nil then
		arg1.tail.next = tbl
	end
	arg1.tail = tbl
	if arg1.head == nil then
		arg1.head = tbl
	end
end
local _ = {
	Reliable = table.create(256);
	Unreliable = table.create(256);
}
local _ = {
	Reliable = table.create(256);
	Unreliable = table.create(256);
}
return {}