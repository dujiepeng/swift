# Swift


## 数据类型
---

### let 常量

	let maximumNumberOfLoginAttempts = 10  //声明后值就不能改变了。常量声明，必须赋值。

###var 变量

	var currentLoginAttempt = 0 //值可以修改。
	
	var currentLoginAttempt:Int //变量如果没有声明赋值，需要说明类型
	

###输出

	var str = "你好！"
	print(str)
	// 输出 “你好！”
	
###快速类型转换输出

	var str = "你好！"
	print("\(str)欢迎来到swift的世界！")
	// 输出： 你好！欢迎来到swift的世界！
	 
	
###整数

如

	UInt8 // 8位无符号整数
	Int32 // 32位整数
	
###整数边界

如

	let minValue = UInt8.min  // 无符号8位整数的最小值，0
	let maxValue = UInt8.max  // 无符号8位整数的最大值，255
	
###Int类型

	在32位机器上，Int和Int32一样大小
	在64位机器上，Int和Int64一样大小
	
###UInt类型

	在32位机器上，UInt和UInt32一样大小
	在64位机器上，UInt和UInt64一样大小
	
###强制转换

	let integerPi= Int(pi)  // 输出3
	
###类型别名

	typealias AudioSample = UInt16 // 定义了别名，使用别名和原名结果是一样的
	
###布尔类型

	let orangesAreOrange = true
	let turnipsAreDelicious = false
	
###元组类型(tuples)
	
元组类型可以将一些不同的数据类型组装成一个元素，这个元素可以用来作为函数的返回值返回包含多种数据类型
的值。

赋值
	
	var (mynum, mustr) = (123456,"测试文字");
	print(mynum) // 输出 123456
	print(mustr) // 输出 测试文字
	
如果只需要一部分的值，可以用“_”标示忽略其他部分

	var (mynum, _) = (123456,"测试文字");
	print(mynum) // 输出 123456
	
注意：等号前面声明部分中的元素数量要于等号右边的元素数量相等。	

通过位置取值

	let mytuples = (123456,"测试文字");
	print (mytuples.1)
	// 输出：测试文字
	
创建元祖的时候，可以给元祖起名，之后直接用名字访问

	let student = (name:"小明",age:12);
	print("姓名:\(student.name) 年龄:\(student.age)");
	// 输出： 姓名:小明 年龄:12
	
注意：在用法2中，如果直接取位置，则只会输出位置对应的值，而不会输出名字，如
	
	let student = (name:"小明",age:12);
	print(student.0);
	// 输出： 小明 

### 可选类型

是一个类型，比如：Int? 标示可能是int类型的值，或者是nil

	let strVar : String = "123"
	let intVar : Int? = Int(strVar) // 因为string有可能不能转成int，所以要用 Int?，值得一说的是即使不声明Int? , swift也能知道Int(strVar)返回的是Int?

注：Swift 的nil不同于Object-C中的nil. Object-C中，nil是一个指针指向不存在的对象。Swift中，nil不是指针而是一个特定类型的空值。任何类型的可选变量都可以被设为nil，不光是指针。

### 隐式拆包

当使用拆包，则表示这个数据一定有值

	let assumedString: String! = "An implicitly unwrapped optional string."
	// assumedString 一定有值
	
### 断言

	let age = -3
	assert(age >= 0, "A person's age cannot be less than zero")
	
### 数组

#### 基本用法

	[value 1, value 2, value 3] // 实例变量初始化方法
	var shoppingList: String[] = ["Eggs", "Milk"] // string 数组
	shoppingList.count // 数组长度
	shoppingList.isEmpty // 如果是0，返回true
	shoppingList.append("Flour") // 添加元素
	shoppingList += "Baking Powder" // 添加元素
	shoppingList += ["Chocolate Spread", "Cheese", "Butter"] // 一次性添加多组元素
	var firstItem = shoppingList[0] // 按照下标取元素
	shoppingList[0] = "Six eggs" // 修改元素
	shoppingList[4...6] = ["Bananas", "Apples"] 用两个元素替换 4~6索引的元素
	shoppingList.insert("Maple Syrup", atIndex: 0) // 向指定位置插入元素
	let mapleSyrup = shoppingList.removeAtIndex(0) // 移除一个位置的元素，返回值为被移除的元素
	let apples = shoppingList.removeLast() // 移除最后一个位置的元素
	
#### 	遍历数组

	// 遍历取值
	for item in shoppingList {
		print(item)
	}
	// 遍历索引和取值	
	for (index, value) in enumerate(shoppingList) {
		print("index \(index): \(value)")
	}

### 字典

	 Dictionary<KeyType,ValueType>() // 声明方式，KeyType必须是可哈希的
**Swift的所有基础类型（例如字符串（String）,整形（Int），双精度（Double）和布尔（Bool））在默认是可哈希的（hashable），和这些类型都常常用语当作字典的键。枚举成员值不需要协助值（associated values）（具体描述在 Enumerations）也是因为它们默认也是可哈希的（hashable）。**	 


	[key 1: value 1, key 2: value 2, key 3: value 3] // 实例变量初始化方法
	var airport :Dictionary<String, String> = ["TYO": "Tokyo", "DUB": “Dublin"]
	// airport字典是被定义为一个变量（使用var 标识符）而不是常量（使用let 标识符），所以在下面的例子可以直接添加元素。
	var airports = ["TYO": "Tokyo", "DUB": “Dublin”]
	airports.count // 元素数量，返回2.
	airports["LHR"] = "London" // 添加一个新元素（之前的key中没有LHR）
	airports["LHR"] = "London Heathrow" // 改变key对应的值
	airports.updateValue("Dublin International", forKey: "DUB") // 有就更新，没有就加入
	if let oldValue = airports.updateValue("Dublin International", forKey: "DUB") // 返回值是被替换掉的值，如果以前没有，则返回nil
	airports["APL"] = nil // 从字典里移除这组键值
	let removedValue = airports.removeValueForKey("APL") 返回之前的值 // 从字典里移除这组键值
	
### 遍历字典

	for (airportCode, airportName) in airports {
		print("\(airportCode): \(airportName)")
	}	
	
	for airportCode in airports.keys {
		print("Airport code: \(airportCode)")
	}
	
	for airportName in airports.values {
		print("Airport name: \(airportName)")
	}
	

### 语句 

#### for 循环

	// for-in循环, "..." 左闭右闭， ".." 左闭右开
	for index in 1...5 {
		print("\(index)")
	}
	// 输出 1 2 3 4 5

	// 限制区间循环
	for var index = 0; index < 3; ++index {
		print("\(index)")
	}
	// 输出 0 1 2
	
#### 	while循环

	while condition {
		// 始终执行，直到 condition  为 false
	}
	
	
	do{
		// 从do过来执行一次，然后判断condition，直到为false
	}while condition
	
#### if

	if temperatureInFahrenheit <= 32 {
    	// 判断成立则执行，否则不执行。
	}
	
#### switch（swift的switch好牛）

##### 普通用法

包含case中对应元素即可，不用固定顺序

	let someCharacter: Character = "e"
	switch someCharacter {
	case "a", "e", "i", "o", "u":
    	print("\(someCharacter) is a vowel")
	case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
	"n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
	    print("\(someCharacter) is a consonant")
	default:
    	print("\(someCharacter) is not a vowel or a consonant")
	}
	// 输出 "e is a vowel"
	
	
**以下写法错误**	

case xxx: 后面必须跟语句或者break，否者这个case不成立，条件应该和下面的case写到一起。


	let anotherCharacter: Character = "a"
	switch anotherCharacter {
	case "a":
	case "A":
    	print("The letter A")
	default:
    	print("Not the letter A")
	}
	// this will report a compile-time error

应该写成	

	let anotherCharacter: Character = "a"
	switch anotherCharacter {
	case "a","A":
    	print("The letter A")
	default:
    	print("Not the letter A")
	}


##### 区间

	// 如果值在对应区间
	let count = 3_000_000_000_000
	let countedThings = "stars in the Milky Way"
	var naturalCount: String
	switch count {
	case 0:
	    naturalCount = "no"
	case 1...3:
	    naturalCount = "a few"
	case 4...9:
	    naturalCount = "several"
	case 10...99:
    	naturalCount = "tens of"
	case 100...999:
    	naturalCount = "hundreds of"
	case 1000...999_999:
    	naturalCount = "thousands of"
	default:
    	naturalCount = "millions and millions of"
	}
	print("There are \(naturalCount) \(countedThings).")
	// 输出 "There are millions and millions of stars in the Milky Way."
	
##### 	元组（Tuple）

元组可以用来确定区间

	let somePoint = (1, 1)
	switch somePoint {
	case (0, 0):
    	print("(0, 0) is at the origin")
	case (_, 0):
    	print("(\(somePoint.0), 0) is on the x-axis")
	case (0, _):
    	print("(0, \(somePoint.1)) is on the y-axis")
	case (-2...2, -2...2):
    	print("(\(somePoint.0), \(somePoint.1)) is inside the box")
	default:
    	print("(\(somePoint.0), \(somePoint.1)) is outside of the box")
	}
	// 输出 "(1, 1) is inside the box"
	
##### 	值绑定（Value Bindings）

确定一项符合就可以进入case

	let anotherPoint = (2, 0)
	switch anotherPoint {
	case (let x, 0):
    	print("on the x-axis with an x value of \(x)")
	case (0, let y):
    	print("on the y-axis with a y value of \(y)")
	case let (x, y): // 这个case，是匹配所有...
    	print("somewhere else at (\(x), \(y))")
	}
	// 输出 "on the x-axis with an x value of 2"
	
##### Where

	let yetAnotherPoint = (1, -1)
	switch yetAnotherPoint {
	case let (x, y) where x == y:
		print("(\(x), \(y)) is on the line x == y")
	case let (x, y) where x == -y:
		print("(\(x), \(y)) is on the line x == -y")
	case let (x, y):
		print("(\(x), \(y)) is just some arbitrary point")
	}
	// 输出 "(1, -1) is on the line x == -y"
	
#### 控制语句

##### continue

	let puzzleInput = "great minds think alike"
	var puzzleOutput = ""
	for character in puzzleInput.characters {
		switch character {
			case "a", "e", "i", "o", "u", " ": // 遇到这几个就跳过
				continue
			default:
				puzzleOutput.append(character)
		}
	}
	print(puzzleOutput)
	// 输出 "grtmndsthnklk"
	
##### Break

##### 贯穿（Fallthrough）	
	
	let integerToDescribe = 5
	var description = "The number \(integerToDescribe) is"
	switch integerToDescribe {
	case 2, 3, 5, 7, 11, 13, 17, 19:
    	description += " a prime number, and also"
	    fallthrough // 这就是贯穿，会继续执行下个case
	default:
	    description += " an integer."
	}
	print(description)
	// 输出 "The number 5 is a prime number, and also an integer."

##### 带标签的语句（Labeled Statements）

如果while和switch之类的语句嵌套了，break，continue就不能确定是哪一个的了，这个时候，就需要神奇的标签

	let finalSquare = 25
	labelName: while finalSquare > 20 { // labelName,就是标签
		let square = 10
		switch square {
			case 10:
        		break labelName // 表示这个break是labelName的
			case 20:
				break           // 这个break没有跟label，结束的是switch（就近原则）
	    }
	}
	

## 函数

描述不好使，直接举例

### 无参数无返回值函数

    func sayHello(){
        print("hello")
    }
    
    // 调用方法
    self.sayHello()
    
###  单参无返回值函数

    func sayHello(name:String){
        print("hello,\(name)")
    }
    
	// 调用方法
    self.sayHello("du")
    
### 多参无返回函数   

    func sayHello(name:String, age:Int){
        print("name:\(name),age:\(age)")
    }
    
    // 调用方法
    self.sayHello("du",age:26) // 首个参数的参数名可以省略，后面的参数要加上参数名

### 返回一个值函数

	func sayHello(name:String)->Int{
		return 10
    }
    
    // 调用方法
    print("age:\(self.getAge())")
    
### 返回元组的函数（多个值）

    func giveMeFive()->(one:String,two:String,three:String){
        return ("one","two","three")
    }
    // 调用方式
	var give = self.giveMeFive()