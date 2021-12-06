print("hello world")

function testclone()
	local tab = {

		k1 = 1,
		k2 = true,
		k3 = "XX",
		k4 = {
			1,2,3,
			k5 = false
		}
	}

	print("tab")


	for k,v  in next, table.clone(tab) do
		print(k)
		print(v)
	end

	--print(table.clone(tab).k1)
	print("finish")
end

print("testNewGuid")

function testNewGuid()
	print("newGuid")
	local tb = table.newGuid(1);
	tb[1] = 2
	tb.k = "v"
	tb = nil
	collectgarbage"collect"
	tb = table.newGuid(1)
	local asize, hsize = table.size(tb)
	print(asize)
	print(hsize)
end

local ok, err = pcall(testNewGuid)
print( ok )
print( err )