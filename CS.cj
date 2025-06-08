import std.random.*

main() {
    //if表达式——判断奇偶数
    let number: Int8 = Random().nextInt8()
    println(number)
    if (number % 2 == 0) {
        println("偶数")
    } else {
        println("奇数")
    }
    //if else if表达式——速度判断
    let speed = Random().nextFloat64() * 20.0
    println("${speed} km/s")
    if (speed > 16.7) {
        println("第三宇宙速度，鹊桥相会")
    } else if (speed > 11.2) {
        println("第二宇宙速度，嫦娥奔月")
    } else if (speed > 7.9) {
        println("第一宇宙速度，腾云驾雾")
    } else {
        println("脚踏实地，仰望星空")
    }
    //while表达式——输出2的平方根
    var root = 0.0
    var min = 1.0
    var max = 2.0
    var error = 1.0
    let tolerance = 0.1 ** 10
    while (error ** 2 > tolerance) {
        root = (min + max) / 2.0
        error = root ** 2 - 2.0
        if (error > 0.0) {
            max = root
        } else {
            min = root
        }
    }
    println("2 的平方根约等于：${root}")
    //do-while表达式——输出圆周率的近似值
    let random = Random()
    var totalPoints = 0
    var hitPoints = 0
    do {
        // 在 ((0, 0), (1, 1)) 这个正方形中随机取点
        let x = random.nextFloat64()
        let y = random.nextFloat64()
        // 判断是否落在正方形内接圆里
        if ((x - 0.5) ** 2 + (y - 0.5) ** 2 < 0.25) {
            hitPoints++
        }
        totalPoints++
    } while (totalPoints < 1000000)
    let pi = 4.0 * Float64(hitPoints) / Float64(totalPoints)
    println("圆周率近似值为：${pi}")
    // for-in表达式——输出农历 2025 年各月的干支纪法
    let metaArray = [r'甲', r'乙', r'丙', r'丁', r'戊',
        r'己', r'庚', r'辛', r'壬', r'癸']
    let noumenonArray = [r'寅', r'卯', r'辰', r'巳', r'午', r'未',
        r'申', r'酉', r'戌', r'亥', r'子', r'丑']
    let year = 2025
    // 年份对应的天干索引
    let metaOfYear = ((year % 10) + 10 - 4) % 10
    // 此年首月对应的天干索引
    var index = (2 * metaOfYear + 3) % 10 - 1
    println("农历 2025 年各月干支：")
    for (noumenon in noumenonArray) {
        print("${metaArray[index]}${noumenon} ")
        index = (index + 1) % 10
    }
    //输出1-100的和
    var sum = 0
    for (i in 1..=100) {
        sum += i
    }
    println()
    println(sum)
    // 遍历元组构成的序列
    let array = [(1, 2), (3, 4), (5, 6)]
    for ((x, y) in array) {
        println("${x}, ${y}")
    }
    // 使用通配符 _ 代替迭代变量 
    var number1 = 2
    for (_ in 0..5) {
        number1 *= number1
    }
    println(number1)
    // while条件
    for (i in 0..8 where i % 2 == 1) { // i 为奇数才会执行循环体
        println(i)
    }
    let numbers = [12, 18, 25, 36, 49, 55]
    for (number in numbers) {
        if (number % 5 == 0) {
            println(number)
            break
        }
    }
    let numbers1 = [12, 18, 25, 36, 49, 55]
    for (number in numbers1) {
        if (number % 2 == 0) {
            continue
        }
        println(number)
    }
}
