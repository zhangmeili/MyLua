--autor zml
--date 2016/10/28
--Lua语言数组


----定义一个有初始值的数组arr
--arr={1,2,3,"h"}
--
----循环遍历这数组（lua语言数组的下标时从1开始）
--for key, var in pairs(arr) do
--	print(key,var)
--end


--定义一个空的数组
arr={}
--用 for循环插入数据
for var=1, 10 do
	table.insert(arr,1,var)
end


for key, var in pairs(arr) do
	print(key,var)
end


--查询数组的大小
print("size=",table.maxn(arr))

