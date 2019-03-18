print("Hello World!")

print("菜鸟第一步")

tab={key=1,key2=2,"小时候"}
for k,v in pairs(tab)
    print(k,v)
end

print("分支合并实验2")

function IsSame(tab1,tab2)
	if(type(tab1)~=type(tab2)) then return false end
	local len=0
	for k,v in pairs(tab1) do
		if(type(v)=="table") then
			return IsSame(v,tab[k])
		else
			return v==tab2[k]
		end
		len=len+1
	end
	for _,v in pairs(tab2) do
		len=len-1
		if(len<0) then return false end
	end
	return true
end
