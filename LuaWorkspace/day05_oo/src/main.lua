--author zml
--date 2016/10/31
--用函数闭包的方式实现面对对象

--首先用函数的方式创建一个对象people
function People(name)

	local self={}

	--在方法的内部新建一个初始化方法，这也是实现了正在的私有化
	local function init(parameters)
		self.name=name
		self.age=20
	end


	self.sayHello= function ()
		print("hello.. "..self.name.." age="..self.age)
	end

	--不能忘记调用init方法
	init()
	return self
end

--local p=People("zhangsan")
--p.sayHello()


--利用函数的形式创建一个对象 man
function Man(name)

	--这样既可以简单的实现类的继承啦
	local self=People(name)


	local function init()
	end

	self.sayHi=function ()
		print("Hi.."..self.name.." age="..self.age)
	end

	init()
	return self
end


local m=Man("lisi")
m:sayHi()
m:sayHello()