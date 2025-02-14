var greeting = "Hello, playground"
print(greeting)

//データ型
//string型
var str: String = "これは文字列です"

//int型
var int: Int = 1

//Float/Double型（浮動小数点数）＝少数
var float: Float = 1.23456789
var double: Double = 1.23456789
//floatとdoubleでは扱う数の精度が違う

//bool型（真偽値）true&false
var bool: Bool = true

//演算()
print(1 + 1)
print(10 - 6)
print(2 * 5)
print(10 / 2)
print(10 % 3)

// データ型の理解度を深める
print(1 + 1)
print("1" + "1" + "です")

var myage: Int = 22
//print(myage)

if 20 <= myage {
    print("お酒飲める！")
} else {
    print("お酒飲めんけん！")
}

//条件分岐
var today: Int = 12
let birthday: Int = 1130

if today == birthday {
    print("おめ")
} else {
    print("\(today)何もよろしくない")
}

//関数
func callname() {
    print("やす")
    print("おーい")
}

callname()

//引数
func callName(name: String) {
    print("\(name)!")
}

callName(name: "ちひろ")
//プチ技
func callmyname(_ name: String) {
    print("\(name)!")
}

callmyname("ひろき")

//戻り値
func Callmyname(_ name: String) -> String {
    return name + "!"
}

print(Callmyname("KT"))

//配列
var array = ["ぴろ", "すけ", "北京"]
print(array)
print(array[2])

//for文
for i in 1...5 {
    print(i)
}


// クラスとインスタンス
class Twitter {
    var userId: String!
    var date: Int!
    var content: String!
    
    func tweet() {
        print("UserID : \(userId!)")
        print("日付 : \(date!)")
        print("投稿内容 : \(content!)")
    }
}

let tweetdata1 = Twitter()
tweetdata1.userId = "@Y1s36"
tweetdata1.date = 2
tweetdata1.content = "情報コン"
tweetdata1.tweet()

let tweetdata2 = Twitter()
tweetdata2.userId = "@1234"
tweetdata2.date = 3
tweetdata2.content = "test"
tweetdata2.tweet()
