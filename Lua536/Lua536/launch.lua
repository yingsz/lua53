print("hello world")

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
